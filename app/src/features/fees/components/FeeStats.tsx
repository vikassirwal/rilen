import { AlertTriangle, IndianRupee, ReceiptText, TrendingUp, UsersRound } from "lucide-react";
import type { ReactNode } from "react";
import type { FeeDashboardStats } from "../../../types/fees";
import { percentCollected, rupees } from "../utils/feeMath";

type FeeStatsProps = {
  stats: FeeDashboardStats;
  className: string;
};

export function FeeStats({ stats, className }: FeeStatsProps) {
  const collectionRate = percentCollected(stats);

  return (
    <section className="fee-stats" aria-label="Fee dashboard stats">
      <div className="fee-stats__lead">
        <span className="eyebrow">{className ? `Class ${className}` : "All classes"}</span>
        <h2>{rupees(stats.pendingFee)} pending</h2>
        <p>{collectionRate}% collected across {stats.studentCount} active students</p>
      </div>
      <Metric icon={<IndianRupee size={18} />} label="Total" value={rupees(stats.totalFee)} />
      <Metric icon={<TrendingUp size={18} />} label="Received" value={rupees(stats.receivedFee)} tone="green" />
      <Metric icon={<ReceiptText size={18} />} label="Pending" value={rupees(stats.pendingFee)} tone="orange" />
      <Metric icon={<UsersRound size={18} />} label="Need follow-up" value={`${stats.studentsWithPendingFee}`} />
      {stats.studentsWithPendingFee > 0 && (
        <div className="fee-signal">
          <AlertTriangle size={18} />
          <span>Prioritize highest pending balances first</span>
        </div>
      )}
    </section>
  );
}

function Metric({ icon, label, value, tone = "blue" }: { icon: ReactNode; label: string; value: string; tone?: string }) {
  return (
    <div className={`fee-metric fee-metric--${tone}`}>
      {icon}
      <span>{value}</span>
      <p>{label}</p>
    </div>
  );
}
