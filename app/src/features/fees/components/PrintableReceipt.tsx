import type { FeeCollectionResult, FeeStudentSummary } from "../../../types/fees";
import { formatDate, fullName } from "../../../utils/format";
import { rupees } from "../utils/feeMath";

type PrintableReceiptProps = {
  student: FeeStudentSummary | null;
  receipt: FeeCollectionResult | null;
};

const copies = ["School Copy", "Parent Copy"];

export function PrintableReceipt({ student, receipt }: PrintableReceiptProps) {
  if (!student || !receipt) return null;

  return (
    <div className="print-receipt-page" aria-hidden="true">
      {copies.map((copy) => (
        <section key={copy} className="print-receipt">
          <header className="print-receipt__top">
            <div>
              <strong>RILEN School</strong>
              <span>Fee Receipt</span>
            </div>
            <div>
              <strong>{copy}</strong>
              <span>{receipt.receiptNumber}</span>
            </div>
          </header>

          <div className="print-receipt__grid">
            <PrintItem label="Student" value={fullName(student.firstName, student.lastName)} />
            <PrintItem label="Class" value={`Class ${student.className}${student.section ? `-${student.section}` : ""}`} />
            <PrintItem label="Scholar no." value={student.scholarNumber || "Not added"} />
            <PrintItem label="Admission no." value={student.admissionNumber || "Not added"} />
            <PrintItem label="Academic year" value={student.academicYear} />
            <PrintItem label="Receipt date" value={formatDate(receipt.collectedAt)} />
            <PrintItem label="Payment method" value={receipt.paymentMethod.replace("_", " ")} />
            <PrintItem label="Reference" value={receipt.paymentReference || "Not added"} />
          </div>

          <div className="print-receipt__amounts">
            <div>
              <span>Amount received</span>
              <strong>{rupees(receipt.amount)}</strong>
            </div>
            <div>
              <span>Discount</span>
              <strong>{rupees(receipt.discountAmount)}</strong>
            </div>
            <div>
              <span>Balance after receipt</span>
              <strong>{rupees(Math.max(student.pendingFee - receipt.amount - receipt.discountAmount, 0))}</strong>
            </div>
          </div>

          <footer className="print-receipt__footer">
            <span>Received by</span>
            <span>Parent / Guardian</span>
          </footer>
        </section>
      ))}
    </div>
  );
}

function PrintItem({ label, value }: { label: string; value: string }) {
  return (
    <div>
      <span>{label}</span>
      <strong>{value}</strong>
    </div>
  );
}
