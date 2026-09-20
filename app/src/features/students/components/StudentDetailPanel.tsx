import { FormEvent, useEffect, useState } from "react";
import { CalendarDays, MapPin, Pencil, Phone, Save, UserRound, X } from "lucide-react";
import { Button } from "../../../components/ui/Button";
import { Field } from "../../../components/ui/Field";
import type { Student } from "../../../types/student";
import { compactValue, formatDate, fullName } from "../../../utils/format";
import { getCompletionSignals, getPendingStudentTags } from "../utils/studentInsights";

type StudentDetailPanelProps = {
  student: Student | null;
  onClose: () => void;
  onSave: (student: Student) => Promise<void>;
};

export function StudentDetailPanel({ student, onClose, onSave }: StudentDetailPanelProps) {
  const [isEditing, setIsEditing] = useState(false);
  const [draft, setDraft] = useState<Student | null>(student);
  const [saveError, setSaveError] = useState<string | null>(null);
  const [isSaving, setIsSaving] = useState(false);

  useEffect(() => {
    setDraft(student);
    setIsEditing(false);
    setSaveError(null);
  }, [student]);

  if (!student) {
    return (
      <aside className="detail-panel detail-panel--empty">
        <UserRound size={30} />
        <p>Select a student</p>
        <span>The complete student record opens here.</span>
      </aside>
    );
  }

  const registration = student.academicRegistration;
  const missing = getCompletionSignals(student);
  const pendingTags = getPendingStudentTags(student);

  async function submit(event: FormEvent) {
    event.preventDefault();
    if (!draft) return;

    const confirmed = window.confirm("Update this student record permanently?");
    if (!confirmed) return;

    setIsSaving(true);
    setSaveError(null);

    try {
      await onSave(draft);
      setIsEditing(false);
    } catch (error) {
      setSaveError(error instanceof Error ? error.message : "Unable to update student.");
    } finally {
      setIsSaving(false);
    }
  }

  if (isEditing && draft) {
    return (
      <aside className="detail-panel">
        <form className="detail-edit-form" onSubmit={submit}>
          <div className="detail-panel__top">
            <div>
              <div className="detail-title-row">
                <h2>{fullName(draft.firstName, draft.lastName) || "Student details"}</h2>
                {draft.academicRegistration.isRteStudent && <span className="tag-pill tag-pill--rte">RTE</span>}
              </div>
              <p>Edit student information</p>
            </div>
            <Button type="button" variant="secondary" icon={<X size={18} />} onClick={() => setIsEditing(false)}>
              Cancel
            </Button>
          </div>

          {saveError && (
            <div className="warning-strip">
              <strong>Update failed</strong>
              <span>{saveError}</span>
            </div>
          )}

          <EditSection title="Identity">
            <Field label="First name" value={draft.firstName} onChange={(event) => updateDraft("firstName", event.target.value)} required />
            <Field label="Last name" value={draft.lastName} onChange={(event) => updateDraft("lastName", event.target.value)} />
            <Field label="Date of birth" type="date" value={draft.dateOfBirth} onChange={(event) => updateDraft("dateOfBirth", event.target.value)} />
            <Field label="Aadhaar" value={draft.aadhaarNumber} onChange={(event) => updateDraft("aadhaarNumber", event.target.value)} />
            <Field label="SSSM ID" value={draft.sssmId} onChange={(event) => updateDraft("sssmId", event.target.value)} />
            <Field label="Family ID" value={draft.familyId} onChange={(event) => updateDraft("familyId", event.target.value)} />
            <Field label="Religion" value={draft.religion} onChange={(event) => updateDraft("religion", event.target.value)} />
            <Field label="Caste" value={draft.caste} onChange={(event) => updateDraft("caste", event.target.value)} />
            <Field label="Category" value={draft.category} onChange={(event) => updateDraft("category", event.target.value)} />
          </EditSection>

          <EditSection title="Academic registration">
            <Field label="Academic year" value={draft.academicRegistration.academicYear} onChange={(event) => updateRegistration("academicYear", event.target.value)} required />
            <Field label="Class" value={draft.academicRegistration.className} onChange={(event) => updateRegistration("className", event.target.value)} required />
            <Field label="Section" value={draft.academicRegistration.section} onChange={(event) => updateRegistration("section", event.target.value)} />
            <Field label="Admission no." value={draft.academicRegistration.admissionNumber} onChange={(event) => updateRegistration("admissionNumber", event.target.value)} />
            <Field label="Scholar no." value={draft.academicRegistration.scholarNumber} onChange={(event) => updateRegistration("scholarNumber", event.target.value)} />
            <Field label="Enrollment no." value={draft.academicRegistration.enrollmentNumber} onChange={(event) => updateRegistration("enrollmentNumber", event.target.value)} />
            <Field label="Admission date" type="date" value={draft.academicRegistration.admissionDate} onChange={(event) => updateRegistration("admissionDate", event.target.value)} />
            <Field label="Admission class" value={draft.academicRegistration.admissionClass} onChange={(event) => updateRegistration("admissionClass", event.target.value)} />
            <Field label="Board registration" value={draft.academicRegistration.boardRegistrationNumber} onChange={(event) => updateRegistration("boardRegistrationNumber", event.target.value)} />
            <Field label="Mode" value={draft.academicRegistration.admissionMode} onChange={(event) => updateRegistration("admissionMode", event.target.value)} />
            <Field label="Last school" value={draft.academicRegistration.lastSchoolName} onChange={(event) => updateRegistration("lastSchoolName", event.target.value)} />
            <Field label="TC status" value={draft.academicRegistration.tcStatus} onChange={(event) => updateRegistration("tcStatus", event.target.value)} />
            <label className="check-field">
              <input
                type="checkbox"
                checked={draft.academicRegistration.isRteStudent}
                onChange={(event) => updateRegistration("isRteStudent", event.target.checked)}
              />
              <span>
                <strong>RTE student</strong>
                <small>Right To Education enrollment</small>
              </span>
            </label>
            <label className="check-field">
              <input
                type="checkbox"
                checked={draft.academicRegistration.isActive}
                onChange={(event) => updateRegistration("isActive", event.target.checked)}
              />
              <span>
                <strong>Active student</strong>
                <small>Current academic registration</small>
              </span>
            </label>
          </EditSection>

          <EditSection title="Guardians">
            {draft.guardians.map((guardian, index) => (
              <div className="guardian-form" key={guardian.id || guardian.relationship}>
                <h3>{guardian.relationship}</h3>
                <Field label="Full name" value={guardian.fullName} onChange={(event) => updateGuardian(index, "fullName", event.target.value)} />
                <Field label="Occupation" value={guardian.occupation} onChange={(event) => updateGuardian(index, "occupation", event.target.value)} />
                <Field label="Primary mobile" value={guardian.mobilePrimary} onChange={(event) => updateGuardian(index, "mobilePrimary", event.target.value)} />
                <Field label="Secondary mobile" value={guardian.mobileSecondary} onChange={(event) => updateGuardian(index, "mobileSecondary", event.target.value)} />
              </div>
            ))}
          </EditSection>

          <EditSection title="Address">
            <Field label="Address" value={draft.address.addressLine} onChange={(event) => updateAddress("addressLine", event.target.value)} />
            <Field label="City" value={draft.address.city} onChange={(event) => updateAddress("city", event.target.value)} />
            <Field label="State" value={draft.address.state} onChange={(event) => updateAddress("state", event.target.value)} />
            <Field label="Pincode" value={draft.address.pincode} onChange={(event) => updateAddress("pincode", event.target.value)} />
          </EditSection>

          <EditSection title="Bank account">
            <Field label="Bank" value={draft.bankAccount.bankName} onChange={(event) => updateBankAccount("bankName", event.target.value)} />
            <Field label="Account no." value={draft.bankAccount.accountNumber} onChange={(event) => updateBankAccount("accountNumber", event.target.value)} />
            <Field label="IFSC" value={draft.bankAccount.ifscCode} onChange={(event) => updateBankAccount("ifscCode", event.target.value)} />
            <Field label="Holder" value={draft.bankAccount.accountHolderName} onChange={(event) => updateBankAccount("accountHolderName", event.target.value)} />
          </EditSection>

          <div className="detail-submit-bar">
            <Button type="submit" icon={<Save size={18} />} disabled={isSaving || !draft.firstName.trim() || !draft.academicRegistration.className.trim()}>
              {isSaving ? "Saving" : "Submit changes"}
            </Button>
          </div>
        </form>
      </aside>
    );
  }

  return (
    <aside className="detail-panel">
      <div className="detail-panel__top">
        <div>
          <div className="detail-title-row">
            <h2>{fullName(student.firstName, student.lastName)}</h2>
            {registration.isRteStudent && <span className="tag-pill tag-pill--rte">RTE</span>}
          </div>
          <p>
            Class {compactValue(registration.className)}
            {registration.section ? `-${registration.section}` : ""}
          </p>
        </div>
        <div className="detail-actions">
          <Button variant="secondary" icon={<Pencil size={18} />} onClick={() => setIsEditing(true)}>
            Edit
          </Button>
          <Button variant="ghost" icon={<X size={18} />} onClick={onClose} aria-label="Close details" />
        </div>
      </div>

      {pendingTags.length > 0 && (
        <div className="pending-tags">
          {pendingTags.map((tag) => (
            <span className="tag-pill tag-pill--pending" key={tag}>
              {tag}
            </span>
          ))}
        </div>
      )}

      {missing.length > 0 && (
        <div className="insight-strip">
          <strong>Needs {missing[0]}</strong>
          <span>{missing.length === 1 ? "Record is almost complete." : `${missing.length} fields need attention.`}</span>
        </div>
      )}

      <div className="detail-grid">
        <DetailItem icon={<CalendarDays size={18} />} label="Date of birth" value={formatDate(student.dateOfBirth)} />
        <DetailItem icon={<UserRound size={18} />} label="Admission no." value={compactValue(registration.admissionNumber)} />
        <DetailItem icon={<UserRound size={18} />} label="Scholar no." value={compactValue(registration.scholarNumber)} />
        <DetailItem icon={<MapPin size={18} />} label="City" value={compactValue(student.address.city)} />
      </div>

      <RecordSection title="Identity">
        <KeyValue label="Aadhaar" value={student.aadhaarNumber} />
        <KeyValue label="SSSM ID" value={student.sssmId} />
        <KeyValue label="Family ID" value={student.familyId} />
        <KeyValue label="Religion" value={student.religion} />
        <KeyValue label="Caste" value={student.caste} />
        <KeyValue label="Category" value={student.category} />
      </RecordSection>

      <RecordSection title="Academic registration">
        <KeyValue label="Academic year" value={registration.academicYear} />
        <KeyValue label="Admission date" value={formatDate(registration.admissionDate)} />
        <KeyValue label="Admission class" value={registration.admissionClass} />
        <KeyValue label="Enrollment no." value={registration.enrollmentNumber} />
        <KeyValue label="Board registration" value={registration.boardRegistrationNumber} />
        <KeyValue label="Mode" value={registration.admissionMode} />
        <KeyValue label="Last school" value={registration.lastSchoolName} />
        <KeyValue label="TC status" value={registration.tcStatus} />
        <KeyValue label="RTE student" value={registration.isRteStudent ? "Yes" : "No"} />
        <KeyValue label="Status" value={registration.isActive ? "Active" : "Inactive"} />
      </RecordSection>

      <RecordSection title="Guardians">
        {student.guardians.map((guardian) => (
          <div className="guardian-card" key={guardian.id}>
            <strong>{guardian.fullName}</strong>
            <span>{guardian.relationship}</span>
            <span>{guardian.occupation || "Occupation not added"}</span>
            <span className="guardian-card__phone">
              <Phone size={14} /> {guardian.mobilePrimary || "Mobile not added"}
            </span>
          </div>
        ))}
      </RecordSection>

      <RecordSection title="Address">
        <KeyValue label="Address" value={student.address.addressLine} />
        <KeyValue label="State" value={student.address.state} />
        <KeyValue label="Pincode" value={student.address.pincode} />
        <KeyValue label="Type" value={student.address.addressType} />
      </RecordSection>

      <RecordSection title="Bank account">
        <KeyValue label="Bank" value={student.bankAccount.bankName} />
        <KeyValue label="Account no." value={student.bankAccount.accountNumber} />
        <KeyValue label="IFSC" value={student.bankAccount.ifscCode} />
        <KeyValue label="Holder" value={student.bankAccount.accountHolderName} />
      </RecordSection>
    </aside>
  );

  function updateDraft<K extends keyof Student>(key: K, value: Student[K]) {
    setDraft((current) => (current ? { ...current, [key]: value } : current));
  }

  function updateRegistration(key: keyof Student["academicRegistration"], value: string | boolean) {
    setDraft((current) =>
      current
        ? {
            ...current,
            academicRegistration: {
              ...current.academicRegistration,
              [key]: value,
            },
          }
        : current,
    );
  }

  function updateGuardian(index: number, key: keyof Student["guardians"][number], value: string) {
    setDraft((current) =>
      current
        ? {
            ...current,
            guardians: current.guardians.map((guardian, guardianIndex) =>
              guardianIndex === index ? { ...guardian, [key]: value } : guardian,
            ),
          }
        : current,
    );
  }

  function updateAddress(key: keyof Student["address"], value: string) {
    setDraft((current) =>
      current
        ? {
            ...current,
            address: {
              ...current.address,
              [key]: value,
            },
          }
        : current,
    );
  }

  function updateBankAccount(key: keyof Student["bankAccount"], value: string) {
    setDraft((current) =>
      current
        ? {
            ...current,
            bankAccount: {
              ...current.bankAccount,
              [key]: value,
            },
          }
        : current,
    );
  }
}

function EditSection({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <section className="edit-section">
      <h3>{title}</h3>
      <div className="edit-grid">{children}</div>
    </section>
  );
}

function DetailItem({ icon, label, value }: { icon: React.ReactNode; label: string; value: string }) {
  return (
    <div className="detail-item">
      {icon}
      <span>{label}</span>
      <strong>{value}</strong>
    </div>
  );
}

function RecordSection({ title, children }: { title: string; children: React.ReactNode }) {
  return (
    <section className="record-section">
      <h3>{title}</h3>
      <div>{children}</div>
    </section>
  );
}

function KeyValue({ label, value }: { label: string; value: string }) {
  return (
    <div className="key-value">
      <span>{label}</span>
      <strong>{compactValue(value)}</strong>
    </div>
  );
}
