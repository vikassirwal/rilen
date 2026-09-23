import type { FeeDashboardStats, FeeFilters, FeeStudentSummary } from "../../../types/fees";

export function rupees(value: number) {
  return new Intl.NumberFormat("en-IN", {
    style: "currency",
    currency: "INR",
    maximumFractionDigits: 0,
  }).format(value);
}

export function percentCollected(stats: FeeDashboardStats) {
  if (stats.totalFee <= 0) return 0;
  return Math.round((stats.receivedFee / stats.totalFee) * 100);
}

export function calculateStats(students: FeeStudentSummary[]): FeeDashboardStats {
  return students.reduce(
    (stats, student) => ({
      studentCount: stats.studentCount + (student.isActive ? 1 : 0),
      totalFee: stats.totalFee + student.totalFee,
      receivedFee: stats.receivedFee + student.receivedFee,
      pendingFee: stats.pendingFee + student.pendingFee,
      studentsWithPendingFee: stats.studentsWithPendingFee + (student.isActive && student.pendingFee > 0 ? 1 : 0),
    }),
    { studentCount: 0, totalFee: 0, receivedFee: 0, pendingFee: 0, studentsWithPendingFee: 0 },
  );
}

export function filterFeeStudents(students: FeeStudentSummary[], filters: FeeFilters) {
  const query = filters.query.trim().toLowerCase();

  return [...students]
    .filter((student) => {
      const haystack = [
        student.firstName,
        student.lastName,
        student.className,
        student.section,
        student.scholarNumber,
        student.admissionNumber,
        student.lastReceiptNumber,
        ...student.legacyReceiptNumbers,
        student.lastPaymentDate,
      ]
        .join(" ")
        .toLowerCase();
      const matchesQuery = !query || haystack.includes(query);
      const matchesClass = !filters.className || student.className === filters.className;
      const matchesStatus =
        filters.status === "all" ||
        (filters.status === "pending" && student.pendingFee > 0) ||
        (filters.status === "paid" && student.pendingFee <= 0);
      const matchesFrom = !filters.fromDate || !student.lastPaymentDate || student.lastPaymentDate >= filters.fromDate;
      const matchesTo = !filters.toDate || !student.lastPaymentDate || student.lastPaymentDate <= filters.toDate;
      return matchesQuery && matchesClass && matchesStatus && matchesFrom && matchesTo;
    })
    .sort((a, b) => {
      if (filters.sort === "pending-asc") return a.pendingFee - b.pendingFee;
      if (filters.sort === "name-asc") return `${a.firstName} ${a.lastName}`.localeCompare(`${b.firstName} ${b.lastName}`);
      if (filters.sort === "recent-desc") return (b.lastPaymentDate || "").localeCompare(a.lastPaymentDate || "");
      return b.pendingFee - a.pendingFee;
    });
}
