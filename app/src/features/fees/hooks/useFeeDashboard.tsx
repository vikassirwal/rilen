import React from "react";
import type { FeeDashboardStats, FeeFilters, FeeLedger, FeeStudentSummary } from "../../../types/fees";
import type { PageRequest } from "../../../types/pagination";
import { getFeeLedger, listFeeStudents, refreshFeeLedger } from "../api/feeRepository";
import { getUserSafeError } from "../../../lib/errors";
import { useDebouncedValue } from "../../../lib/useDebouncedValue";

const EMPTY_STATS: FeeDashboardStats = { studentCount: 0, totalFee: 0, receivedFee: 0, pendingFee: 0, studentsWithPendingFee: 0 };

export function useFeeDashboard(filters: FeeFilters, pageRequest: PageRequest) {
  const [students, setStudents] = React.useState<FeeStudentSummary[]>([]);
  const [totalCount, setTotalCount] = React.useState(0);
  const [classOptions, setClassOptions] = React.useState<string[]>([]);
  const [stats, setStats] = React.useState<FeeDashboardStats>(EMPTY_STATS);
  const [source, setSource] = React.useState<"supabase" | "sample">("sample");
  const [isLoading, setIsLoading] = React.useState(true);
  const [error, setError] = React.useState("");
  const debouncedQuery = useDebouncedValue(filters.query, 350);
  const queryFilters = React.useMemo(() => ({ ...filters, query: debouncedQuery }), [debouncedQuery, filters.className, filters.status, filters.fromDate, filters.toDate, filters.sort]);

  const load = React.useCallback(async (force = false) => {
    setIsLoading(true);
    setError("");
    try {
      const result = await listFeeStudents(queryFilters, pageRequest, { force });
      setStudents(result.page.items);
      setTotalCount(result.page.totalCount);
      setStats(result.stats);
      setClassOptions(result.facets.classes);
      setSource(result.source);
    } catch (caught) {
      setError(getUserSafeError(caught, "Unable to load fee data. Please retry."));
    } finally {
      setIsLoading(false);
    }
  }, [queryFilters, pageRequest.page, pageRequest.pageSize]);

  React.useEffect(() => {
    load();
  }, [load]);

  const refresh = React.useCallback(() => load(true), [load]);

  return { students, totalCount, classOptions, stats, source, isLoading, error, refresh };
}

export function useFeeLedger(student: FeeStudentSummary | null, source: "supabase" | "sample") {
  const [ledger, setLedger] = React.useState<FeeLedger>({ charges: [], receipts: [] });
  const [isLoading, setIsLoading] = React.useState(false);
  const [error, setError] = React.useState("");

  const load = React.useCallback(async (force = false) => {
    if (!student) return;
    setIsLoading(true);
    setError("");
    try {
      setLedger(
        force
          ? await refreshFeeLedger(student.studentFeeAccountId, source)
          : await getFeeLedger(student.studentFeeAccountId, source),
      );
    } catch (caught) {
      setError(getUserSafeError(caught, "Unable to load this fee ledger. Please retry."));
    } finally {
      setIsLoading(false);
    }
  }, [source, student]);

  React.useEffect(() => {
    load();
  }, [load]);

  const refresh = React.useCallback(() => load(true), [load]);

  return { ledger, isLoading, error, refresh };
}
