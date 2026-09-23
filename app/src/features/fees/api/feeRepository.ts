import { assertSupabaseClient, supabase } from "../../../lib/supabase/client";
import { cachedRequest, invalidateCachedRequests } from "../../../lib/requestCache";
import type {
  CollectFeeDraft,
  FeeCharge,
  FeeCollectionResult,
  FeeLedger,
  FeeReceipt,
  FeeStudentSummary,
} from "../../../types/fees";
import { sampleCharges, sampleFeeStudents, sampleReceipts } from "../data/sampleFees";
import { DataAccessError } from "../../../lib/errors";

type FeeStudentRow = {
  student_fee_account_id: string;
  student_id: string;
  first_name: string;
  last_name: string | null;
  scholar_number: string | null;
  admission_number: string | null;
  academic_year: string;
  class_name: string;
  section: string | null;
  total_fee: number | string | null;
  received_fee: number | string | null;
  pending_fee: number | string | null;
  last_receipt_number: string | null;
  last_payment_date: string | null;
  next_due_date: string | null;
  is_active: boolean;
};

type FeeChargeRow = {
  id: string;
  due_date: string | null;
  description: string | null;
  original_amount: number | string;
  adjusted_amount: number | string;
  paid_amount: number | string;
  status: FeeCharge["status"];
  fee_heads?: { name: string | null } | null;
};

type FeeReceiptRow = {
  id: string;
  receipt_number: string;
  receipt_date: string;
  payment_method: string;
  collected_amount: number | string;
  discount_amount: number | string | null;
  status: FeeReceipt["status"];
};

export async function listFeeStudents(): Promise<{ students: FeeStudentSummary[]; source: "supabase" | "sample" }> {
  return cachedRequest("fee-directory:all", fetchFeeStudents, { ttlMs: 60 * 1000 });
}

export async function refreshFeeStudents(): Promise<{ students: FeeStudentSummary[]; source: "supabase" | "sample" }> {
  return cachedRequest("fee-directory:all", fetchFeeStudents, { ttlMs: 60 * 1000, force: true });
}

async function fetchFeeStudents(): Promise<{ students: FeeStudentSummary[]; source: "supabase" | "sample" }> {
  if (!supabase) return { students: sampleFeeStudents, source: "sample" };

  const client = assertSupabaseClient() as any;
  const { data, error } = await client
    .from("fee_student_directory" as never)
    .select("*")
    .order("pending_fee", { ascending: false });

  if (error) throw new DataAccessError("Unable to load fee accounts. Please retry.");

  return { students: (data as FeeStudentRow[]).map(mapFeeStudent), source: "supabase" };
}

export async function getFeeLedger(studentFeeAccountId: string, source: "supabase" | "sample"): Promise<FeeLedger> {
  if (source === "sample" || !supabase) {
    return {
      charges: sampleCharges[studentFeeAccountId] ?? [],
      receipts: sampleReceipts[studentFeeAccountId] ?? [],
    };
  }

  return cachedRequest(`fee-ledger:${studentFeeAccountId}`, () => fetchFeeLedger(studentFeeAccountId), {
    ttlMs: 60 * 1000,
  });
}

export async function refreshFeeLedger(studentFeeAccountId: string, source: "supabase" | "sample") {
  if (source === "sample" || !supabase) return getFeeLedger(studentFeeAccountId, source);
  return cachedRequest(`fee-ledger:${studentFeeAccountId}`, () => fetchFeeLedger(studentFeeAccountId), {
    ttlMs: 60 * 1000,
    force: true,
  });
}

async function fetchFeeLedger(studentFeeAccountId: string): Promise<FeeLedger> {
  const client = assertSupabaseClient() as any;
  const [chargesResult, receiptsResult] = await Promise.all([
    client
      .from("student_fee_charges" as never)
      .select("id,due_date,description,original_amount,adjusted_amount,paid_amount,status,fee_heads(name)")
      .eq("student_fee_account_id", studentFeeAccountId)
      .order("due_date", { ascending: true }),
    client
      .from("fee_receipts" as never)
      .select("id,receipt_number,receipt_date,payment_method,collected_amount,discount_amount,status")
      .eq("student_fee_account_id", studentFeeAccountId)
      .order("receipt_date", { ascending: false }),
  ]);

  if (chargesResult.error || receiptsResult.error) {
    throw new DataAccessError("Unable to load this student's fee ledger.");
  }

  return {
    charges: ((chargesResult.data ?? []) as FeeChargeRow[]).map(mapFeeCharge),
    receipts: ((receiptsResult.data ?? []) as FeeReceiptRow[]).map(mapFeeReceipt),
  };
}

export async function collectFee(
  student: FeeStudentSummary,
  draft: CollectFeeDraft,
  charges: FeeCharge[],
  source: "supabase" | "sample",
): Promise<FeeCollectionResult> {
  const amount = Number(draft.amount || 0);
  const discountAmount = Number(draft.discountAmount || 0);
  const collectedAt = new Date().toISOString();

  if (!Number.isFinite(amount) || amount <= 0) {
    throw new DataAccessError("Enter a valid collection amount greater than zero.");
  }
  if (!Number.isFinite(discountAmount) || discountAmount < 0) {
    throw new DataAccessError("Enter a valid discount amount.");
  }

  const outstanding = charges
    .filter((charge) => charge.status !== "PAID" && charge.status !== "VOID")
    .reduce((total, charge) => total + Math.max(charge.adjustedAmount - charge.paidAmount, 0), 0);
  if (amount > outstanding) {
    throw new DataAccessError("The collection amount cannot exceed the outstanding balance.");
  }

  if (source === "sample" || !supabase) {
    return {
      receiptNumber: `RILEN-${student.academicYear.replace("-", "")}-PREVIEW`,
      amount,
      discountAmount,
      paymentMethod: draft.paymentMethod,
      paymentReference: draft.paymentReference.trim(),
      collectedAt,
    };
  }

  const client = assertSupabaseClient() as any;
  const { data: receiptNumber, error: receiptError } = await client.rpc("next_fee_receipt_number" as never, {
    target_academic_year: student.academicYear,
  } as never);
  if (receiptError) throw new DataAccessError("Unable to reserve a receipt number.");

  const { data: receipt, error: insertError } = await client
    .from("fee_receipts" as never)
    .insert({
      receipt_number: receiptNumber,
      student_fee_account_id: student.studentFeeAccountId,
      student_id: student.studentId,
      academic_year: student.academicYear,
      payment_method: draft.paymentMethod,
      payment_reference: draft.paymentReference.trim() || null,
      collected_amount: amount,
      discount_amount: discountAmount,
      notes: draft.notes.trim() || null,
      created_by: (await client.auth.getSession()).data.session?.user.id ?? null,
    } as never)
    .select("id,receipt_number")
    .single();
  if (insertError) throw new DataAccessError("Unable to create the fee receipt.");

  let remaining = amount;
  const allocations = charges
    .filter((charge) => charge.status !== "PAID" && charge.status !== "VOID")
    .map((charge) => {
      const due = Math.max(charge.adjustedAmount - charge.paidAmount, 0);
      const allocated = Math.min(due, remaining);
      remaining -= allocated;
      return allocated > 0 ? { receipt_id: receipt.id, student_fee_charge_id: charge.id, amount: allocated } : null;
    })
    .filter(Boolean);

  if (allocations.length > 0) {
    const { error: allocationError } = await client.from("fee_receipt_allocations" as never).insert(allocations as never);
    if (allocationError) {
      throw new DataAccessError("The receipt was created, but its allocations could not be completed. Contact support.");
    }
  }

  invalidateCachedRequests("fee-directory:");
  invalidateCachedRequests(`fee-ledger:${student.studentFeeAccountId}`);

  return {
    receiptNumber: receipt.receipt_number,
    amount,
    discountAmount,
    paymentMethod: draft.paymentMethod,
    paymentReference: draft.paymentReference.trim(),
    collectedAt,
  };
}

function mapFeeStudent(row: FeeStudentRow): FeeStudentSummary {
  return {
    studentFeeAccountId: row.student_fee_account_id,
    studentId: row.student_id,
    firstName: row.first_name,
    lastName: row.last_name ?? "",
    scholarNumber: row.scholar_number ?? "",
    admissionNumber: row.admission_number ?? "",
    academicYear: row.academic_year,
    className: row.class_name,
    section: row.section ?? "",
    totalFee: Number(row.total_fee ?? 0),
    receivedFee: Number(row.received_fee ?? 0),
    pendingFee: Number(row.pending_fee ?? 0),
    lastReceiptNumber: row.last_receipt_number ?? "",
    lastPaymentDate: row.last_payment_date ?? "",
    nextDueDate: row.next_due_date ?? "",
    isActive: row.is_active,
  };
}

function mapFeeCharge(row: FeeChargeRow): FeeCharge {
  return {
    id: row.id,
    feeHeadName: row.fee_heads?.name ?? "Fee",
    description: row.description ?? "",
    dueDate: row.due_date ?? "",
    originalAmount: Number(row.original_amount ?? 0),
    adjustedAmount: Number(row.adjusted_amount ?? 0),
    paidAmount: Number(row.paid_amount ?? 0),
    status: row.status,
  };
}

function mapFeeReceipt(row: FeeReceiptRow): FeeReceipt {
  return {
    id: row.id,
    receiptNumber: row.receipt_number,
    receiptDate: row.receipt_date,
    paymentMethod: row.payment_method,
    collectedAmount: Number(row.collected_amount ?? 0),
    discountAmount: Number(row.discount_amount ?? 0),
    status: row.status,
  };
}
