import type { Student } from "../../../types/student";
import type { Database } from "../../../lib/supabase/database.types";

type StudentRow = Database["public"]["Tables"]["students"]["Row"] & {
  student_academic_registrations: Database["public"]["Tables"]["student_academic_registrations"]["Row"][];
  student_guardians: Database["public"]["Tables"]["student_guardians"]["Row"][];
  student_addresses: Database["public"]["Tables"]["student_addresses"]["Row"][];
  student_bank_accounts: Database["public"]["Tables"]["student_bank_accounts"]["Row"][];
};

export function mapStudentRow(row: StudentRow): Student {
  const registration = row.student_academic_registrations[0];
  const address = row.student_addresses[0];
  const bankAccount = row.student_bank_accounts[0];

  return {
    id: row.id,
    firstName: row.first_name,
    lastName: row.last_name ?? "",
    dateOfBirth: row.date_of_birth ?? "",
    aadhaarNumber: row.aadhaar_number ?? "",
    sssmId: row.sssm_id ?? "",
    familyId: row.family_id ?? "",
    religion: row.religion ?? "",
    caste: row.caste ?? "",
    category: row.category ?? "",
    createdAt: row.created_at,
    updatedAt: row.updated_at,
    academicRegistration: {
      id: registration?.id,
      academicYear: registration?.academic_year ?? "",
      className: registration?.class_name ?? "",
      section: registration?.section ?? "",
      admissionNumber: registration?.admission_number ?? "",
      scholarNumber: registration?.scholar_number ?? "",
      enrollmentNumber: registration?.enrollment_number ?? "",
      admissionDate: registration?.admission_date ?? "",
      admissionClass: registration?.admission_class ?? "",
      boardRegistrationNumber: registration?.board_registration_number ?? "",
      admissionMode: registration?.admission_mode ?? "",
      lastSchoolName: registration?.last_school_name ?? "",
      tcStatus: registration?.tc_status ?? "",
      isRteStudent: registration?.is_rte_student ?? false,
      isActive: registration?.is_active ?? false,
    },
    guardians: row.student_guardians.map((guardian) => ({
      id: guardian.id,
      relationship:
        guardian.relationship === "mother" || guardian.relationship === "guardian" ? guardian.relationship : "father",
      fullName: guardian.full_name,
      occupation: guardian.occupation ?? "",
      mobilePrimary: guardian.mobile_primary ?? "",
      mobileSecondary: guardian.mobile_secondary ?? "",
    })),
    address: {
      id: address?.id,
      addressLine: address?.address_line ?? "",
      city: address?.city ?? "",
      state: address?.state ?? "",
      pincode: address?.pincode ?? "",
      addressType: address?.address_type ?? "home",
    },
    bankAccount: {
      id: bankAccount?.id,
      bankName: bankAccount?.bank_name ?? "",
      accountNumber: bankAccount?.account_number ?? "",
      ifscCode: bankAccount?.ifsc_code ?? "",
      accountHolderName: bankAccount?.account_holder_name ?? "",
    },
  };
}
