import type { Student, StudentFormValues } from "../../../types/student";
import { fullName } from "../../../utils/format";

export function getCompletionSignals(student: Student | StudentFormValues) {
  const missing: string[] = [];

  if (!student.dateOfBirth) missing.push("date of birth");
  if (!student.academicRegistration.className) missing.push("class");
  if (!student.academicRegistration.admissionNumber) missing.push("admission no.");
  if (!student.guardians.some((guardian) => guardian.fullName && guardian.mobilePrimary)) {
    missing.push("guardian contact");
  }
  if (!student.address.city) missing.push("city");
  if (!student.aadhaarNumber && !student.sssmId) missing.push("student identity number");

  return missing;
}

export function getPendingStudentTags(student: Student) {
  const tags: string[] = [];

  if (!student.academicRegistration.isActive) tags.push("Inactive");
  if (!student.dateOfBirth) tags.push("DOB pending");
  if (!student.academicRegistration.className) tags.push("Class pending");
  if (!student.academicRegistration.admissionNumber) tags.push("Admission no. pending");
  if (!student.guardians.some((guardian) => guardian.fullName && guardian.mobilePrimary)) {
    tags.push("Guardian contact pending");
  }
  if (!student.address.city) tags.push("City pending");
  if (!student.aadhaarNumber && !student.sssmId) tags.push("Identity pending");
  if (!student.bankAccount.accountNumber) tags.push("Bank pending");

  return tags;
}

export function getStudentDirectoryTags(student: Student) {
  const pendingTags = getPendingStudentTags(student);
  const tags: string[] = [];

  if (student.academicRegistration.isRteStudent) tags.push("RTE");
  if (pendingTags.length > 0) tags.push(`Incomplete · ${pendingTags.length}`);

  return tags;
}

export function findPossibleDuplicates(values: StudentFormValues, students: Student[]) {
  const name = fullName(values.firstName, values.lastName).toLowerCase().trim();

  if (!name) return [];

  return students.filter((student) => {
    const candidateName = fullName(student.firstName, student.lastName).toLowerCase().trim();
    const sameName = candidateName === name;
    const sameAadhaar = values.aadhaarNumber && student.aadhaarNumber === values.aadhaarNumber;
    const sameScholar =
      values.academicRegistration.scholarNumber &&
      student.academicRegistration.scholarNumber === values.academicRegistration.scholarNumber;

    return sameName || sameAadhaar || sameScholar;
  });
}
