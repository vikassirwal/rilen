import { X } from "lucide-react";
import { Button } from "../../../components/ui/Button";
import type { FeeLedger, FeeStudentSummary } from "../../../types/fees";
import { formatDate, fullName } from "../../../utils/format";
import { rupees } from "../utils/feeMath";

type FeeStudentModalProps = {
  student: FeeStudentSummary;
  ledger: FeeLedger;
  isLoading: boolean;
  error: string;
  onClose: () => void;
  onCollect: () => void;
};

export function FeeStudentModal({ student, ledger, isLoading, error, onClose, onCollect }: FeeStudentModalProps) {
  return (
    <div className="modal-backdrop" role="presentation">
      <section className="fee-modal" role="dialog" aria-modal="true" aria-label="Student fee details">
        <header className="fee-modal__top">
          <div>
            <span className="eyebrow">Fee account</span>
            <h2>{fullName(student.firstName, student.lastName)}</h2>
            <p>
              Class {student.className}
              {student.section ? `-${student.section}` : ""} · {student.academicYear}
            </p>
          </div>
          <div className="detail-actions">
            <Button variant="primary" onClick={onCollect}>
              Collect Fee
            </Button>
            <Button variant="ghost" onClick={onClose} aria-label="Close fee details">
              <X size={18} />
            </Button>
          </div>
        </header>

        <div className="fee-modal__summary">
          <Summary label="Total" value={rupees(student.totalFee)} />
          <Summary label="Received" value={rupees(student.receivedFee)} />
          <Summary label="Pending" value={rupees(student.pendingFee)} tone="pending" />
          <Summary label="Last receipt" value={student.lastReceiptNumber || "None"} />
        </div>

        {error && <div className="warning-strip">{error}</div>}
        {isLoading ? (
          <div className="empty-state">
            <p>Loading ledger</p>
          </div>
        ) : (
          <div className="fee-ledger-grid">
            <section className="fee-ledger-section">
              <h3>Pending and paid heads</h3>
              <div className="fee-table">
                {ledger.charges.map((charge) => (
                  <div key={charge.id} className="fee-table__row">
                    <div>
                      <strong>{charge.feeHeadName}</strong>
                      <span>{charge.description || formatDate(charge.dueDate)}</span>
                    </div>
                    <span>{formatDate(charge.dueDate)}</span>
                    <strong>{rupees(Math.max(charge.adjustedAmount - charge.paidAmount, 0))}</strong>
                    <span className={`tag-pill ${charge.status === "PAID" ? "tag-pill--rte" : "tag-pill--pending"}`}>
                      {charge.status.toLowerCase()}
                    </span>
                  </div>
                ))}
              </div>
            </section>

            <section className="fee-ledger-section">
              <h3>Receipts</h3>
              <div className="fee-table">
                {ledger.receipts.map((receipt) => (
                  <div key={receipt.id} className="fee-table__row fee-table__row--receipt">
                    <div>
                      <strong>{receipt.receiptNumber}</strong>
                      <span>{receipt.paymentMethod.replace("_", " ")}</span>
                    </div>
                    <span>{formatDate(receipt.receiptDate)}</span>
                    <strong>{rupees(receipt.collectedAmount)}</strong>
                    <span className="tag-pill tag-pill--rte">{receipt.status.toLowerCase()}</span>
                  </div>
                ))}
              </div>
            </section>
          </div>
        )}
      </section>
    </div>
  );
}

function Summary({ label, value, tone = "" }: { label: string; value: string; tone?: string }) {
  return (
    <div className={`fee-summary-tile ${tone ? `fee-summary-tile--${tone}` : ""}`}>
      <span>{label}</span>
      <strong>{value}</strong>
    </div>
  );
}
