import type { Student, StudentFormValues } from "../../../types/student";

export const emptyStudentForm: StudentFormValues = {
  firstName: "",
  lastName: "",
  dateOfBirth: "",
  aadhaarNumber: "",
  sssmId: "",
  familyId: "",
  religion: "",
  caste: "",
  category: "",
  academicRegistration: {
    id: undefined,
    academicYear: "2026-27",
    className: "",
    section: "",
    admissionNumber: "",
    scholarNumber: "",
    enrollmentNumber: "",
    admissionDate: "",
    admissionClass: "",
    boardRegistrationNumber: "",
    admissionMode: "Local",
    lastSchoolName: "",
    tcStatus: "",
    isRteStudent: false,
    isActive: true,
  },
  guardians: [
    {
      id: "father",
      relationship: "father",
      fullName: "",
      occupation: "",
      mobilePrimary: "",
      mobileSecondary: "",
    },
    {
      id: "mother",
      relationship: "mother",
      fullName: "",
      occupation: "",
      mobilePrimary: "",
      mobileSecondary: "",
    },
  ],
  address: {
    id: undefined,
    addressLine: "",
    city: "",
    state: "Madhya Pradesh",
    pincode: "",
    addressType: "home",
  },
  bankAccount: {
    id: undefined,
    bankName: "",
    accountNumber: "",
    ifscCode: "",
    accountHolderName: "",
  },
};

export function createStudent(values: StudentFormValues): Student {
  const now = new Date().toISOString();

  return {
    ...values,
    id: crypto.randomUUID(),
    createdAt: now,
    updatedAt: now,
    guardians: values.guardians
      .filter((guardian) => guardian.fullName.trim() || guardian.mobilePrimary.trim())
      .map((guardian) => ({
        ...guardian,
        id: crypto.randomUUID(),
      })),
  };
}
