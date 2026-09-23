import { assertSupabaseClient } from "../../../lib/supabase/client";
import { cachedRequest, invalidateCachedRequests } from "../../../lib/requestCache";
import type { Student, StudentFilters } from "../../../types/student";
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
const STUDENT_DIRECTORY_TTL_MS = 2 * 60 * 1000;
const STUDENT_HEALTH_CACHE_KEY = "student-directory-health";

export async function listStudents(filters?: StudentFilters, options?: { force?: boolean }): Promise<Student[]> {
  const cacheKey = `${STUDENT_DIRECTORY_CACHE_PREFIX}${JSON.stringify({
    query: filters?.query.trim().toLowerCase() ?? "",
  })}`;

  const students = await cachedRequest(cacheKey, () => fetchStudents(filters?.query), {
    ttlMs: STUDENT_DIRECTORY_TTL_MS,
    force: options?.force,
  });

  return students.filter((student) => matchesRelatedFilters(student, filters));
}

async function fetchStudents(searchQuery?: string): Promise<Student[]> {
  const client = assertSupabaseClient();
  let query = client
    .from("students")
    .select(STUDENT_SELECT)
    .order("first_name", { ascending: true })
    .limit(500);

  if (searchQuery) {
    const term = searchQuery.trim();
    query = query.or(
      [
        `first_name.ilike.%${escapeLike(term)}%`,
        `last_name.ilike.%${escapeLike(term)}%`,
        `aadhaar_number.ilike.%${escapeLike(term)}%`,
        `sssm_id.ilike.%${escapeLike(term)}%`,
        `family_id.ilike.%${escapeLike(term)}%`,
      ].join(","),
    );
  }

  const { data, error } = await query;

  if (error) {
    throw new DataAccessError("Unable to load student records. Please retry.");
  }

  return (data ?? []).map((row) => mapStudentRow(row as never));
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
}

function matchesRelatedFilters(student: Student, filters?: StudentFilters) {
  if (!filters) return true;

  const registration = student.academicRegistration;
  const matchesClass = !filters.className || registration.className === filters.className;
  const matchesSection = !filters.section || registration.section === filters.section;
  const matchesCity = !filters.city || student.address.city === filters.city;
  const matchesStatus =
    filters.status === "all" ||
    (filters.status === "active" && registration.isActive) ||
    (filters.status === "inactive" && !registration.isActive);
  const matchesRte =
    filters.rteStatus === "all" ||
    (filters.rteStatus === "rte" && registration.isRteStudent) ||
    (filters.rteStatus === "non-rte" && !registration.isRteStudent);

  return matchesClass && matchesSection && matchesCity && matchesStatus && matchesRte;
}

function escapeLike(value: string) {
  return value.replaceAll("%", "\\%").replaceAll("_", "\\_");
}
