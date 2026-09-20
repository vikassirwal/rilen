import { ChevronRight, ReceiptText } from "lucide-react";
import type { FeeStudentSummary } from "../../../types/fees";
import { fullName } from "../../../utils/format";
import { rupees } from "../utils/feeMath";

type FeeStudentListProps = {
  students: FeeStudentSummary[];
  onSelect: (student: FeeStudentSummary) => void;
};

export function FeeStudentList({ students, onSelect }: FeeStudentListProps) {
  if (students.length === 0) {
    return (
      <div className="empty-state">
        <p>No fee accounts found</p>
        <span>Change filters or create fee accounts from the fee setup.</span>
      </div>
    );
  }

  return (
    <div className="fee-list">
      {students.map((student) => (
        <button key={student.studentFeeAccountId} className="fee-row" onClick={() => onSelect(student)}>
          <div className="avatar">{initials(student)}</div>
          <div className="fee-row__main">
            <strong>{fullName(student.firstName, student.lastName)}</strong>
            <span>
              Class {student.className}
              {student.section ? `-${student.section}` : ""} · Scholar {student.scholarNumber || "pending"}
            </span>
          </div>
          <div className="fee-row__amount">
            <strong>{rupees(student.pendingFee)}</strong>
            <span>remaining</span>
          </div>
          <div className="fee-row__receipt">
            <ReceiptText size={16} />
            <span>{student.lastReceiptNumber || "No receipt"}</span>
          </div>
          <ChevronRight size={19} />
        </button>
      ))}
    </div>
  );
}

function initials(student: FeeStudentSummary) {
  return `${student.firstName.at(0) ?? ""}${student.lastName.at(0) ?? ""}` || "ST";
}
