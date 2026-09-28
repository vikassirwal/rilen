import { assertSupabaseClient } from "../../../lib/supabase/client";
import { cachedRequest, invalidateCachedRequests } from "../../../lib/requestCache";
import type { PaginatedResult, PageRequest } from "../../../types/pagination";
import type {
  Student,
  StudentDirectoryFacets,
  StudentDirectoryMetrics,
  StudentFilters,
  StudentSummary,
} from "../../../types/student";
import { mapStudentRow } from "./studentMapper";
import { DataAccessError } from "../../../lib/errors";

const STUDENT_SELECT = `
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category,
  created_at,
  updated_at,
  student_academic_registrations (
    id,
    student_id,
    academic_year,
    class_name,
    section,
    admission_number,
    scholar_number,
    enrollment_number,
    admission_date,
    admission_class,
    board_registration_number,
    admission_mode,
    last_school_name,
    tc_status,
    is_rte_student,
    is_active,
    created_at,
    updated_at
  ),
  student_guardians (
    id,
    student_id,
    relationship,
    full_name,
    occupation,
    mobile_primary,
    mobile_secondary,
    created_at
  ),
  student_addresses (
    id,
    student_id,
    address_line,
    city,
    state,
    pincode,
    address_type,
    created_at
  ),
  student_bank_accounts (
    id,
    student_id,
    bank_name,
    account_number,
    ifsc_code,
    account_holder_name,
    created_at
  )
`;

const STUDENT_DIRECTORY_CACHE_PREFIX = "student-directory:";
const STUDENT_DETAIL_CACHE_PREFIX = "student-detail:";
const STUDENT_DIRECTORY_TTL_MS = 2 * 60 * 1000;
const STUDENT_HEALTH_CACHE_KEY = "student-directory-health";

type StudentSummaryRow = {
  id: string;
  first_name: string;
  last_name: string | null;
  date_of_birth: string | null;
  class_name: string | null;
  section: string | null;
  city: string | null;
  admission_number: string | null;
  scholar_number: string | null;
  is_rte_student: boolean | null;
  is_active: boolean | null;
  missing_count: number | string | null;
};

export async function listStudentSummaries(
  filters: StudentFilters,
  pageRequest: PageRequest,
  options?: { force?: boolean },
): Promise<PaginatedResult<StudentSummary>> {
  const cacheKey = `${STUDENT_DIRECTORY_CACHE_PREFIX}page:${JSON.stringify({ filters, pageRequest })}`;
  return cachedRequest(cacheKey, () => fetchStudentSummaries(filters, pageRequest), {
    ttlMs: STUDENT_DIRECTORY_TTL_MS,
    force: options?.force,
  });
}

async function fetchStudentSummaries(
  filters: StudentFilters,
  { page, pageSize }: PageRequest,
): Promise<PaginatedResult<StudentSummary>> {
  const client = assertSupabaseClient() as any;
  const from = (page - 1) * pageSize;
  const to = from + pageSize - 1;
  let query = client
    .from("student_directory" as never)
    .select(
      "id,first_name,last_name,date_of_birth,class_name,section,city,admission_number,scholar_number,is_rte_student,is_active,missing_count",
      { count: "exact" },
    );

  const searchTerm = sanitizeSearchTerm(filters.query);
  if (searchTerm) {
    query = query.or(
      ["first_name", "last_name", "admission_number", "scholar_number", "city", "class_name"]
        .map((field) => `${field}.ilike.%${searchTerm}%`)
        .join(","),
    );
  }
  if (filters.className) query = query.eq("class_name", filters.className);
  if (filters.section) query = query.eq("section", filters.section);
  if (filters.city) query = query.eq("city", filters.city);
  if (filters.status !== "all") query = query.eq("is_active", filters.status === "active");
  if (filters.rteStatus !== "all") query = query.eq("is_rte_student", filters.rteStatus === "rte");

  const { data, count, error } = await query
    .order("first_name", { ascending: true })
    .order("last_name", { ascending: true })
    .order("id", { ascending: true })
    .range(from, to);

  if (error) {
    throw new DataAccessError("Unable to load student records. Please retry.");
  }

  return {
    items: ((data ?? []) as StudentSummaryRow[]).map(mapStudentSummary),
    totalCount: count ?? 0,
  };
}

export async function getStudent(studentId: string, options?: { force?: boolean }): Promise<Student> {
  return cachedRequest(`${STUDENT_DETAIL_CACHE_PREFIX}${studentId}`, () => fetchStudent(studentId), {
    ttlMs: STUDENT_DIRECTORY_TTL_MS,
    force: options?.force,
  });
}

async function fetchStudent(studentId: string): Promise<Student> {
  const client = assertSupabaseClient();
  const { data, error } = await client.from("students").select(STUDENT_SELECT).eq("id", studentId).single();
  if (error || !data) throw new DataAccessError("Unable to load this student record.");
  return mapStudentRow(data as never);
}

export async function getStudentDirectoryFacets(options?: { force?: boolean }): Promise<StudentDirectoryFacets> {
  return cachedRequest(`${STUDENT_DIRECTORY_CACHE_PREFIX}facets`, fetchStudentDirectoryFacets, {
    ttlMs: 10 * 60 * 1000,
    force: options?.force,
  });
}

async function fetchStudentDirectoryFacets(): Promise<StudentDirectoryFacets> {
  const client = assertSupabaseClient() as any;
  const { data, error } = await client.rpc("get_student_directory_facets" as never);
  if (error) throw new DataAccessError("Unable to load student filters.");
  return normalizeStudentFacets(data);
}

export async function getStudentDirectoryMetrics(options?: { force?: boolean }): Promise<StudentDirectoryMetrics> {
  return cachedRequest(`${STUDENT_DIRECTORY_CACHE_PREFIX}metrics`, fetchStudentDirectoryMetrics, {
    ttlMs: 5 * 60 * 1000,
    force: options?.force,
  });
}

async function fetchStudentDirectoryMetrics(): Promise<StudentDirectoryMetrics> {
  const client = assertSupabaseClient() as any;
  const { data, error } = await client.rpc("get_student_directory_metrics" as never);
  if (error) throw new DataAccessError("Unable to load student totals.");
  const value = (data ?? {}) as Record<string, unknown>;
  return {
    total: Number(value.total ?? 0),
    active: Number(value.active ?? 0),
    inactive: Number(value.inactive ?? 0),
    needsCompletion: Number(value.needsCompletion ?? value.needs_completion ?? 0),
    classCount: Number(value.classCount ?? value.class_count ?? 0),
    cityCount: Number(value.cityCount ?? value.city_count ?? 0),
    rteCount: Number(value.rteCount ?? value.rte_count ?? 0),
  };
}

export async function updateStudent(student: Student): Promise<void> {
  const client = assertSupabaseClient();
  const toNullable = (value: string) => value.trim() || null;

  const { error: studentError } = await client
    .from("students")
    .update({
      first_name: student.firstName.trim(),
      last_name: toNullable(student.lastName),
      date_of_birth: toNullable(student.dateOfBirth),
      aadhaar_number: toNullable(student.aadhaarNumber),
      sssm_id: toNullable(student.sssmId),
      family_id: toNullable(student.familyId),
      religion: toNullable(student.religion),
      caste: toNullable(student.caste),
      category: toNullable(student.category),
      updated_at: new Date().toISOString(),
    })
    .eq("id", student.id);

  if (studentError) throw new DataAccessError("The student record could not be updated.");

  if (student.academicRegistration.id) {
    const { error } = await client
      .from("student_academic_registrations")
      .update({
        academic_year: student.academicRegistration.academicYear.trim(),
        class_name: student.academicRegistration.className.trim(),
        section: toNullable(student.academicRegistration.section),
        admission_number: toNullable(student.academicRegistration.admissionNumber),
        scholar_number: toNullable(student.academicRegistration.scholarNumber),
        enrollment_number: toNullable(student.academicRegistration.enrollmentNumber),
        admission_date: toNullable(student.academicRegistration.admissionDate),
        admission_class: toNullable(student.academicRegistration.admissionClass),
        board_registration_number: toNullable(student.academicRegistration.boardRegistrationNumber),
        admission_mode: toNullable(student.academicRegistration.admissionMode),
        last_school_name: toNullable(student.academicRegistration.lastSchoolName),
        tc_status: toNullable(student.academicRegistration.tcStatus),
        is_rte_student: student.academicRegistration.isRteStudent,
        is_active: student.academicRegistration.isActive,
        updated_at: new Date().toISOString(),
      })
      .eq("id", student.academicRegistration.id);

    if (error) throw new DataAccessError("The academic registration could not be updated.");
  }

  await Promise.all(student.guardians.map((guardian) => updateGuardian(student.id, guardian)));
  await Promise.all([updateAddress(student), updateBankAccount(student)]);
  invalidateStudentDirectoryCache();
}

async function updateGuardian(studentId: string, guardian: Student["guardians"][number]) {
  const client = assertSupabaseClient();
  const toNullable = (value: string) => value.trim() || null;

  if (!guardian.fullName.trim() && !guardian.mobilePrimary.trim()) return;

  if (guardian.id) {
    const { error } = await client
      .from("student_guardians")
      .update({
        relationship: guardian.relationship,
        full_name: guardian.fullName.trim(),
        occupation: toNullable(guardian.occupation),
        mobile_primary: toNullable(guardian.mobilePrimary),
        mobile_secondary: toNullable(guardian.mobileSecondary),
      })
      .eq("id", guardian.id);

    if (error) throw new DataAccessError("The guardian record could not be updated.");
    return;
  }

  const { error } = await client.from("student_guardians").insert({
    student_id: studentId,
    relationship: guardian.relationship,
    full_name: guardian.fullName.trim(),
    occupation: toNullable(guardian.occupation),
    mobile_primary: toNullable(guardian.mobilePrimary),
    mobile_secondary: toNullable(guardian.mobileSecondary),
  });

  if (error) throw new DataAccessError("The guardian record could not be created.");
}

async function updateAddress(student: Student) {
  const client = assertSupabaseClient();
  const address = student.address;
  const toNullable = (value: string) => value.trim() || null;

  if (!address.addressLine.trim() && !address.city.trim() && !address.state.trim() && !address.pincode.trim()) return;

  const payload = {
    address_line: address.addressLine.trim() || "Address pending",
    city: toNullable(address.city),
    state: toNullable(address.state),
    pincode: toNullable(address.pincode),
    address_type: address.addressType.trim() || "home",
  };

  if (address.id) {
    const { error } = await client.from("student_addresses").update(payload).eq("id", address.id);
    if (error) throw new DataAccessError("The address could not be updated.");
    return;
  }

  const { error } = await client.from("student_addresses").insert({
    student_id: student.id,
    ...payload,
  });

  if (error) throw new DataAccessError("The address could not be created.");
}

async function updateBankAccount(student: Student) {
  const client = assertSupabaseClient();
  const bankAccount = student.bankAccount;
  const toNullable = (value: string) => value.trim() || null;

  if (
    !bankAccount.bankName.trim() &&
    !bankAccount.accountNumber.trim() &&
    !bankAccount.ifscCode.trim() &&
    !bankAccount.accountHolderName.trim()
  ) {
    return;
  }

  const payload = {
    bank_name: toNullable(bankAccount.bankName),
    account_number: toNullable(bankAccount.accountNumber),
    ifsc_code: toNullable(bankAccount.ifscCode),
    account_holder_name: toNullable(bankAccount.accountHolderName),
  };

  if (bankAccount.id) {
    const { error } = await client.from("student_bank_accounts").update(payload).eq("id", bankAccount.id);
    if (error) throw new DataAccessError("The bank account could not be updated.");
    return;
  }

  const { error } = await client.from("student_bank_accounts").insert({
    student_id: student.id,
    ...payload,
  });

  if (error) throw new DataAccessError("The bank account could not be created.");
}

export async function getStudentDirectoryHealth(options?: { force?: boolean }) {
  return cachedRequest(STUDENT_HEALTH_CACHE_KEY, fetchStudentDirectoryHealth, {
    ttlMs: 10 * 60 * 1000,
    force: options?.force,
  });
}

async function fetchStudentDirectoryHealth() {
  const client = assertSupabaseClient();

  const [studentsResult, registrationsResult, sessionResult] = await Promise.all([
    client.from("students").select("id", { count: "exact", head: true }),
    client.from("student_academic_registrations").select("id", { count: "exact", head: true }),
    client.auth.getSession(),
  ]);

  return {
    studentCount: studentsResult.count ?? 0,
    registrationCount: registrationsResult.count ?? 0,
    studentError: studentsResult.error?.message ?? null,
    registrationError: registrationsResult.error?.message ?? null,
    isAuthenticated: Boolean(sessionResult.data.session),
    userEmail: sessionResult.data.session?.user.email ?? null,
    authError: sessionResult.error?.message ?? null,
  };
}

export function invalidateStudentDirectoryCache() {
  invalidateCachedRequests(STUDENT_DIRECTORY_CACHE_PREFIX);
  invalidateCachedRequests(STUDENT_DETAIL_CACHE_PREFIX);
  invalidateCachedRequests(STUDENT_HEALTH_CACHE_KEY);
}

export function invalidateStudentDetailCache(studentId: string) {
  invalidateCachedRequests(`${STUDENT_DETAIL_CACHE_PREFIX}${studentId}`);
}

function mapStudentSummary(row: StudentSummaryRow): StudentSummary {
  return {
    id: row.id,
    firstName: row.first_name,
    lastName: row.last_name ?? "",
    dateOfBirth: row.date_of_birth ?? "",
    className: row.class_name ?? "",
    section: row.section ?? "",
    city: row.city ?? "",
    admissionNumber: row.admission_number ?? "",
    scholarNumber: row.scholar_number ?? "",
    isRteStudent: Boolean(row.is_rte_student),
    isActive: Boolean(row.is_active),
    missingCount: Number(row.missing_count ?? 0),
  };
}

function normalizeStudentFacets(value: unknown): StudentDirectoryFacets {
  const data = (value ?? {}) as Record<string, unknown>;
  const strings = (item: unknown) => (Array.isArray(item) ? item.filter((entry): entry is string => typeof entry === "string") : []);
  return { classes: strings(data.classes), sections: strings(data.sections), cities: strings(data.cities) };
}

function sanitizeSearchTerm(value: string) {
  return value.trim().replace(/[\\%_,()]/g, " ").replace(/\s+/g, " ");
}
