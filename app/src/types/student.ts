export type GuardianRelationship = "father" | "mother" | "guardian";

export type Student = {
  id: string;
  firstName: string;
  lastName: string;
  dateOfBirth: string;
  aadhaarNumber: string;
  sssmId: string;
  familyId: string;
  religion: string;
  caste: string;
  category: string;
  createdAt: string;
  updatedAt: string;
  academicRegistration: StudentAcademicRegistration;
  guardians: StudentGuardian[];
  address: StudentAddress;
  bankAccount: StudentBankAccount;
};

export type StudentAcademicRegistration = {
  id?: string;
  academicYear: string;
  className: string;
  section: string;
  admissionNumber: string;
  scholarNumber: string;
  enrollmentNumber: string;
  admissionDate: string;
  admissionClass: string;
  boardRegistrationNumber: string;
  admissionMode: string;
  lastSchoolName: string;
  tcStatus: string;
  isRteStudent: boolean;
  isActive: boolean;
};

export type StudentGuardian = {
  id: string;
  relationship: GuardianRelationship;
  fullName: string;
  occupation: string;
  mobilePrimary: string;
  mobileSecondary: string;
};

export type StudentAddress = {
  id?: string;
  addressLine: string;
  city: string;
  state: string;
  pincode: string;
  addressType: string;
};

export type StudentBankAccount = {
  id?: string;
  bankName: string;
  accountNumber: string;
  ifscCode: string;
  accountHolderName: string;
};

export type StudentFormValues = Omit<Student, "id" | "createdAt" | "updatedAt">;

export type StudentFilters = {
  query: string;
  className: string;
  section: string;
  city: string;
  status: "all" | "active" | "inactive";
  rteStatus: "all" | "rte" | "non-rte";
};
