import { ChevronRight } from "lucide-react";
import type { StudentSummary } from "../../../types/student";
import { fullName, initials } from "../../../utils/format";

type StudentListProps = {
  students: StudentSummary[];
  selectedStudentId: string | null;
  onSelect: (studentId: string) => void;
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
        return (
          <button
            key={student.id}
            className={`student-row ${selectedStudentId === student.id ? "is-selected" : ""}`}
            onClick={() => onSelect(student.id)}
          >
            <span className="avatar">{initials(student.firstName, student.lastName)}</span>
            <span className="student-row__main">
              <strong>{fullName(student.firstName, student.lastName)}</strong>
              <span>
                Class {student.className || "Not added"}
                {student.section ? `-${student.section}` : ""} · {student.city || "City pending"}
              </span>
            </span>
            <span className="student-row__meta">
              <span>{student.scholarNumber || student.admissionNumber || "No ID"}</span>
            </span>
            <span className="student-row__badges">
              {student.isRteStudent && <span className="tag-pill tag-pill--rte">RTE</span>}
              {!student.isActive && <span className="tag-pill tag-pill--pending">Inactive</span>}
              {student.missingCount > 0 && (
                <span className="tag-pill tag-pill--pending" title={`${student.missingCount} required fields need attention`}>
                  Incomplete
                </span>
              )}
            </span>
            <ChevronRight size={18} />
          </button>
        );
      })}
    </div>
  );
}
