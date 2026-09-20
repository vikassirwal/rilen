import { useEffect, useState } from "react";
import { ArrowLeft, ReceiptText, RefreshCw } from "lucide-react";
import { Button } from "../../components/ui/Button";
import type { CollectFeeDraft, FeeCollectionResult, FeeFilters, FeeStudentSummary } from "../../types/fees";
import { collectFee } from "./api/feeRepository";
import { CollectFeeModal } from "./components/CollectFeeModal";
import { FeeFilters as FeeFiltersView } from "./components/FeeFilters";
import { FeeStats } from "./components/FeeStats";
import { FeeStudentList } from "./components/FeeStudentList";
import { FeeStudentModal } from "./components/FeeStudentModal";
import { PrintableReceipt } from "./components/PrintableReceipt";
import { useFeeDashboard, useFeeLedger } from "./hooks/useFeeDashboard";

type FeeWorkspaceProps = {
  onBack: () => void;
};

const defaultFilters: FeeFilters = {
  query: "",
  className: "",
  status: "all",
  fromDate: "",
  toDate: "",
  sort: "pending-desc",
};

export function FeeWorkspace({ onBack }: FeeWorkspaceProps) {
  const [filters, setFilters] = useState(defaultFilters);
  const [selectedStudent, setSelectedStudent] = useState<FeeStudentSummary | null>(null);
  const [isCollecting, setIsCollecting] = useState(false);
  const [isSaving, setIsSaving] = useState(false);
  const [printReceipt, setPrintReceipt] = useState<FeeCollectionResult | null>(null);
  const { students, classOptions, stats, source, isLoading, error, refresh } = useFeeDashboard(filters);
  const ledger = useFeeLedger(selectedStudent, source);

  useEffect(() => {
    if (selectedStudent) {
      const refreshed = students.find((student) => student.studentFeeAccountId === selectedStudent.studentFeeAccountId);
      if (refreshed) setSelectedStudent(refreshed);
    }
  }, [selectedStudent, students]);

  async function submitCollection(draft: CollectFeeDraft) {
    if (!selectedStudent) return;
    setIsSaving(true);
    try {
      const result = await collectFee(selectedStudent, draft, ledger.ledger.charges, source);
      setPrintReceipt(result);
      setIsCollecting(false);
      await refresh();
      await ledger.refresh();
      return result;
    } finally {
      setIsSaving(false);
    }
  }

  return (
    <main className="app-shell">
      <header className="topbar">
        <div className="brand-mark">R</div>
        <div>
          <p>RILEN</p>
          <h1>Fee intelligence</h1>
        </div>
        <div className="mode-toggle" aria-label="Fee workspace actions">
          <Button variant="secondary" icon={<ArrowLeft size={17} />} onClick={onBack}>
            Students
          </Button>
          <Button variant="secondary" icon={<RefreshCw size={17} />} onClick={refresh}>
            Refresh
          </Button>
        </div>
      </header>

      <FeeStats stats={stats} className={filters.className} />

      <section className="fee-workspace">
        <div className="fee-workspace__header">
          <div>
            <span className="eyebrow">{source === "sample" ? "Preview data" : "Live Supabase"}</span>
            <h2>{isLoading ? "Loading fee accounts" : `${students.length} fee accounts`}</h2>
          </div>
          <ReceiptText size={22} />
        </div>

        {error && <div className="warning-strip">{error}</div>}
        {source === "sample" && (
          <div className="fee-preview-note">
            Fee schema/data is not visible yet, so this screen is showing local preview data.
          </div>
        )}

        <FeeFiltersView filters={filters} classOptions={classOptions} onChange={setFilters} />
        <FeeStudentList students={students} onSelect={setSelectedStudent} />
      </section>

      {selectedStudent && (
        <FeeStudentModal
          student={selectedStudent}
          ledger={ledger.ledger}
          isLoading={ledger.isLoading}
          error={ledger.error}
          onClose={() => setSelectedStudent(null)}
          onCollect={() => setIsCollecting(true)}
        />
      )}

      {selectedStudent && isCollecting && (
        <CollectFeeModal
          student={selectedStudent}
          charges={ledger.ledger.charges}
          isSaving={isSaving}
          onClose={() => setIsCollecting(false)}
          onSubmit={submitCollection}
        />
      )}

      <PrintableReceipt student={selectedStudent} receipt={printReceipt} />
    </main>
  );
}
