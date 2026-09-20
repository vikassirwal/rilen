export type FeeSortKey = "pending-desc" | "pending-asc" | "name-asc" | "recent-desc";

export type FeeFilters = {
  query: string;
  className: string;
  status: "all" | "pending" | "paid";
  fromDate: string;
  toDate: string;
  sort: FeeSortKey;
};

export type FeeStudentSummary = {
  studentFeeAccountId: string;
  studentId: string;
  firstName: string;
  lastName: string;
  scholarNumber: string;
  admissionNumber: string;
  academicYear: string;
  className: string;
  section: string;
  totalFee: number;
  receivedFee: number;
  pendingFee: number;
  lastReceiptNumber: string;
  lastPaymentDate: string;
  nextDueDate: string;
  isActive: boolean;
};

export type FeeDashboardStats = {
  studentCount: number;
  totalFee: number;
  receivedFee: number;
  pendingFee: number;
  studentsWithPendingFee: number;
};

export type FeeCharge = {
  id: string;
  feeHeadName: string;
  description: string;
  dueDate: string;
  originalAmount: number;
  adjustedAmount: number;
  paidAmount: number;
  status: "PENDING" | "PARTIAL" | "PAID" | "WAIVED" | "VOID";
};

export type FeeReceipt = {
  id: string;
  receiptNumber: string;
  receiptDate: string;
  paymentMethod: string;
  collectedAmount: number;
  discountAmount: number;
  status: "POSTED" | "VOID";
};

export type FeeLedger = {
  charges: FeeCharge[];
  receipts: FeeReceipt[];
};

export type CollectFeeDraft = {
  amount: string;
  discountAmount: string;
  discountReason: string;
  paymentMethod: string;
  paymentReference: string;
  notes: string;
};

export type FeeCollectionResult = {
  receiptNumber: string;
  amount: number;
  discountAmount: number;
  paymentMethod: string;
  paymentReference: string;
  collectedAt: string;
};
