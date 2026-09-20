import { useMemo, useState } from "react";
import { Printer, X } from "lucide-react";
import { Button } from "../../../components/ui/Button";
import { Field, SelectField } from "../../../components/ui/Field";
import type { CollectFeeDraft, FeeCharge, FeeStudentSummary } from "../../../types/fees";
import { fullName } from "../../../utils/format";
import { rupees } from "../utils/feeMath";

type CollectFeeModalProps = {
  student: FeeStudentSummary;
  charges: FeeCharge[];
  isSaving: boolean;
  onClose: () => void;
  onSubmit: (draft: CollectFeeDraft) => Promise<unknown>;
};

const defaultDraft: CollectFeeDraft = {
  amount: "",
  discountAmount: "",
  discountReason: "",
  paymentMethod: "CASH",
  paymentReference: "",
  notes: "",
};

export function CollectFeeModal({ student, charges, isSaving, onClose, onSubmit }: CollectFeeModalProps) {
  const [draft, setDraft] = useState<CollectFeeDraft>({ ...defaultDraft, amount: String(student.pendingFee || "") });
  const payableCharges = useMemo(
    () => charges.filter((charge) => charge.status !== "PAID" && charge.status !== "VOID"),
    [charges],
  );
  const amount = Number(draft.amount || 0);
  const discount = Number(draft.discountAmount || 0);
  const requiresReason = discount > 0 && !draft.discountReason.trim();

  async function submit(printAfterSave: boolean) {
    if (amount <= 0) return;
    if (requiresReason) return;
    const confirmed = window.confirm("This will permanently create a fee receipt. Are you sure?");
    if (!confirmed) return;
    await onSubmit(draft);
    if (printAfterSave) {
      window.setTimeout(() => window.print(), 50);
    }
  }

  return (
    <div className="modal-backdrop" role="presentation">
      <section className="collect-modal" role="dialog" aria-modal="true" aria-label="Collect fee">
        <header className="fee-modal__top">
          <div>
            <span className="eyebrow">Collect fee</span>
            <h2>{fullName(student.firstName, student.lastName)}</h2>
            <p>{rupees(student.pendingFee)} pending</p>
          </div>
          <Button variant="ghost" onClick={onClose} aria-label="Close collect fee">
            <X size={18} />
          </Button>
        </header>

        <div className="collect-layout">
          <section className="collect-form">
            <Field
              label="Amount received"
              type="number"
              min="0"
              value={draft.amount}
              onChange={(event) => setDraft({ ...draft, amount: event.target.value })}
            />
            <SelectField
              label="Method"
              value={draft.paymentMethod}
              onChange={(event) => setDraft({ ...draft, paymentMethod: event.target.value })}
              options={["CASH", "UPI", "CARD", "BANK_TRANSFER", "CHEQUE", "OTHER"]}
              placeholder="Method"
            />
            <Field
              label="Reference"
              value={draft.paymentReference}
              onChange={(event) => setDraft({ ...draft, paymentReference: event.target.value })}
              placeholder="UPI ref, cheque no., bank ref"
            />
            <Field
              label="Discount"
              type="number"
              min="0"
              value={draft.discountAmount}
              onChange={(event) => setDraft({ ...draft, discountAmount: event.target.value })}
            />
            <Field
              label="Discount reason"
              value={draft.discountReason}
              onChange={(event) => setDraft({ ...draft, discountReason: event.target.value })}
              placeholder="Required when discount is added"
            />
            <Field
              label="Notes"
              value={draft.notes}
              onChange={(event) => setDraft({ ...draft, notes: event.target.value })}
              placeholder="Optional"
            />
          </section>

          <aside className="allocation-preview">
            <span className="eyebrow">Allocation preview</span>
            {payableCharges.map((charge) => (
              <div key={charge.id} className="allocation-preview__row">
                <span>{charge.feeHeadName}</span>
                <strong>{rupees(Math.max(charge.adjustedAmount - charge.paidAmount, 0))}</strong>
              </div>
            ))}
            <div className="allocation-preview__total">
              <span>Receipt total</span>
              <strong>{rupees(amount)}</strong>
            </div>
          </aside>
        </div>

        {requiresReason && <div className="warning-strip">Add a reason before applying a discount.</div>}
        <footer className="collect-actions">
          <Button variant="secondary" icon={<Printer size={17} />} disabled={isSaving || amount <= 0 || requiresReason} onClick={() => submit(true)}>
            Submit & Print
          </Button>
          <Button disabled={isSaving || amount <= 0 || requiresReason} onClick={() => submit(false)}>
            {isSaving ? "Saving" : "Submit"}
          </Button>
        </footer>
      </section>
    </div>
  );
}
