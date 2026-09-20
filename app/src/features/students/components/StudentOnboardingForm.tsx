import { FormEvent, useMemo, useState } from "react";
import { Sparkles, UserPlus } from "lucide-react";
import { Button } from "../../../components/ui/Button";
import { Field } from "../../../components/ui/Field";
import { Section } from "../../../components/ui/Section";
import type { Student, StudentFormValues } from "../../../types/student";
import { fullName } from "../../../utils/format";
import { emptyStudentForm } from "../utils/studentFactory";
import { findPossibleDuplicates, getCompletionSignals } from "../utils/studentInsights";

type StudentOnboardingFormProps = {
  students: Student[];
  onCreate: (values: StudentFormValues) => Student;
  onCreated: (student: Student) => void;
};

export function StudentOnboardingForm({ students, onCreate, onCreated }: StudentOnboardingFormProps) {
  const [values, setValues] = useState<StudentFormValues>(emptyStudentForm);
  const missing = getCompletionSignals(values);
  const duplicates = useMemo(() => findPossibleDuplicates(values, students), [students, values]);

  function update<K extends keyof StudentFormValues>(key: K, value: StudentFormValues[K]) {
    setValues((current) => ({ ...current, [key]: value }));
  }

  function updateRegistration(
    key: keyof StudentFormValues["academicRegistration"],
    value: string | boolean,
  ) {
    setValues((current) => ({
      ...current,
      academicRegistration: {
        ...current.academicRegistration,
        [key]: value,
      },
    }));
  }

  function updateGuardian(index: number, key: keyof StudentFormValues["guardians"][number], value: string) {
    setValues((current) => ({
      ...current,
      guardians: current.guardians.map((guardian, guardianIndex) =>
        guardianIndex === index ? { ...guardian, [key]: value } : guardian,
      ),
    }));
  }

  function submit(event: FormEvent) {
    event.preventDefault();
    const student = onCreate(values);
    onCreated(student);
    setValues(emptyStudentForm);
  }

  const canSubmit =
    values.firstName.trim() &&
    values.academicRegistration.className.trim() &&
    values.guardians.some((guardian) => guardian.fullName.trim() && guardian.mobilePrimary.trim());

  return (
    <form className="onboarding" onSubmit={submit}>
      <div className="form-summary">
        <div>
          <span className="eyebrow">New student</span>
          <h2>{fullName(values.firstName, values.lastName) || "Student intake"}</h2>
        </div>
        <div className="signal">
          <Sparkles size={16} />
          {missing.length === 0 ? "Required fields complete" : `${missing.length} fields to complete`}
        </div>
      </div>

      {duplicates.length > 0 && (
        <div className="warning-strip">
          <strong>Possible existing record</strong>
          <span>{duplicates.map((student) => fullName(student.firstName, student.lastName)).join(", ")}</span>
        </div>
      )}

      <Section title="Student identity">
        <div className="form-grid">
          <Field label="First name" value={values.firstName} onChange={(event) => update("firstName", event.target.value)} required />
          <Field label="Last name" value={values.lastName} onChange={(event) => update("lastName", event.target.value)} />
          <Field label="Date of birth" type="date" value={values.dateOfBirth} onChange={(event) => update("dateOfBirth", event.target.value)} />
          <Field label="Aadhaar number" value={values.aadhaarNumber} onChange={(event) => update("aadhaarNumber", event.target.value)} />
          <Field label="SSSM ID" value={values.sssmId} onChange={(event) => update("sssmId", event.target.value)} />
          <Field label="Family ID" value={values.familyId} onChange={(event) => update("familyId", event.target.value)} />
          <Field label="Religion" value={values.religion} onChange={(event) => update("religion", event.target.value)} />
          <Field label="Caste" value={values.caste} onChange={(event) => update("caste", event.target.value)} />
          <Field label="Category" value={values.category} onChange={(event) => update("category", event.target.value)} />
        </div>
      </Section>

      <Section title="Academic registration">
        <div className="form-grid">
          <Field label="Academic year" value={values.academicRegistration.academicYear} onChange={(event) => updateRegistration("academicYear", event.target.value)} />
          <Field label="Class" value={values.academicRegistration.className} onChange={(event) => updateRegistration("className", event.target.value)} required />
          <Field label="Section" value={values.academicRegistration.section} onChange={(event) => updateRegistration("section", event.target.value)} />
          <Field label="Admission no." value={values.academicRegistration.admissionNumber} onChange={(event) => updateRegistration("admissionNumber", event.target.value)} />
          <Field label="Scholar no." value={values.academicRegistration.scholarNumber} onChange={(event) => updateRegistration("scholarNumber", event.target.value)} />
          <Field label="Enrollment no." value={values.academicRegistration.enrollmentNumber} onChange={(event) => updateRegistration("enrollmentNumber", event.target.value)} />
          <Field label="Admission date" type="date" value={values.academicRegistration.admissionDate} onChange={(event) => updateRegistration("admissionDate", event.target.value)} />
          <Field label="Admission class" value={values.academicRegistration.admissionClass} onChange={(event) => updateRegistration("admissionClass", event.target.value)} />
          <Field label="Board registration no." value={values.academicRegistration.boardRegistrationNumber} onChange={(event) => updateRegistration("boardRegistrationNumber", event.target.value)} />
          <Field label="Mode" value={values.academicRegistration.admissionMode} onChange={(event) => updateRegistration("admissionMode", event.target.value)} />
          <Field label="Last school" value={values.academicRegistration.lastSchoolName} onChange={(event) => updateRegistration("lastSchoolName", event.target.value)} />
          <Field label="TC status" value={values.academicRegistration.tcStatus} onChange={(event) => updateRegistration("tcStatus", event.target.value)} />
          <label className="check-field">
            <input
              type="checkbox"
              checked={values.academicRegistration.isRteStudent}
              onChange={(event) => updateRegistration("isRteStudent", event.target.checked)}
            />
            <span>
              <strong>RTE student</strong>
              <small>Right To Education enrollment</small>
            </span>
          </label>
        </div>
      </Section>

      <Section title="Guardians">
        <div className="guardian-form-grid">
          {values.guardians.map((guardian, index) => (
            <div className="guardian-form" key={guardian.id}>
              <h3>{guardian.relationship}</h3>
              <Field label="Full name" value={guardian.fullName} onChange={(event) => updateGuardian(index, "fullName", event.target.value)} />
              <Field label="Occupation" value={guardian.occupation} onChange={(event) => updateGuardian(index, "occupation", event.target.value)} />
              <Field label="Primary mobile" value={guardian.mobilePrimary} onChange={(event) => updateGuardian(index, "mobilePrimary", event.target.value)} />
              <Field label="Secondary mobile" value={guardian.mobileSecondary} onChange={(event) => updateGuardian(index, "mobileSecondary", event.target.value)} />
            </div>
          ))}
        </div>
      </Section>

      <Section title="Address and bank">
        <div className="form-grid">
          <Field label="Address" value={values.address.addressLine} onChange={(event) => update("address", { ...values.address, addressLine: event.target.value })} />
          <Field label="City" value={values.address.city} onChange={(event) => update("address", { ...values.address, city: event.target.value })} />
          <Field label="State" value={values.address.state} onChange={(event) => update("address", { ...values.address, state: event.target.value })} />
          <Field label="Pincode" value={values.address.pincode} onChange={(event) => update("address", { ...values.address, pincode: event.target.value })} />
          <Field label="Bank name" value={values.bankAccount.bankName} onChange={(event) => update("bankAccount", { ...values.bankAccount, bankName: event.target.value })} />
          <Field label="Account no." value={values.bankAccount.accountNumber} onChange={(event) => update("bankAccount", { ...values.bankAccount, accountNumber: event.target.value })} />
          <Field label="IFSC code" value={values.bankAccount.ifscCode} onChange={(event) => update("bankAccount", { ...values.bankAccount, ifscCode: event.target.value })} />
          <Field label="Account holder" value={values.bankAccount.accountHolderName} onChange={(event) => update("bankAccount", { ...values.bankAccount, accountHolderName: event.target.value })} />
        </div>
      </Section>

      <div className="form-actions">
        <Button type="submit" icon={<UserPlus size={18} />} disabled={!canSubmit}>
          Create student
        </Button>
      </div>
    </form>
  );
}
