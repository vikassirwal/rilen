import { ChevronRight } from "lucide-react";
import type { Student } from "../../../types/student";
import { fullName, initials } from "../../../utils/format";
import { getPendingStudentTags, getStudentDirectoryTags } from "../utils/studentInsights";

type StudentListProps = {
  students: Student[];
  selectedStudentId: string | null;
  onSelect: (student: Student) => void;
};

export function StudentList({ students, selectedStudentId, onSelect }: StudentListProps) {
  if (students.length === 0) {
    return (
      <div className="empty-state">
        <p>No matching students</p>
        <span>Try a different class, city, guardian, mobile, or scholar number.</span>
      </div>
    );
  }

  return (
    <div className="student-list">
      {students.map((student) => {
        const registration = student.academicRegistration;
        const guardian = student.guardians[0];
        const pendingTags = getPendingStudentTags(student);
        const directoryTags = getStudentDirectoryTags(student);

        return (
          <button
            key={student.id}
            className={`student-row ${selectedStudentId === student.id ? "is-selected" : ""}`}
            onClick={() => onSelect(student)}
            title={pendingTags.length > 0 ? `Missing: ${pendingTags.join(", ")}` : undefined}
          >
            <span className="avatar">{initials(student.firstName, student.lastName)}</span>
            <span className="student-row__main">
              <strong>{fullName(student.firstName, student.lastName)}</strong>
              <span>
                Class {registration.className || "Not added"}
                {registration.section ? `-${registration.section}` : ""} · {student.address.city || "City pending"}
              </span>
            </span>
            <span className="student-row__meta">
              <span>{registration.scholarNumber || registration.admissionNumber || "No ID"}</span>
              <span>{guardian?.mobilePrimary || "No mobile"}</span>
            </span>
            <span className="student-row__badges">
              {directoryTags.map((tag) => (
                <span
                  className={`tag-pill ${tag === "RTE" ? "tag-pill--rte" : "tag-pill--pending"}`}
                  key={tag}
                >
                  {tag}
                </span>
              ))}
            </span>
            <ChevronRight size={18} />
          </button>
        );
      })}
    </div>
  );
}
