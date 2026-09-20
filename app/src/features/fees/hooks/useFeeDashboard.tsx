import React from "react";
import type { FeeFilters, FeeLedger, FeeStudentSummary } from "../../../types/fees";
import { calculateStats, filterFeeStudents } from "../utils/feeMath";
import { getFeeLedger, listFeeStudents, refreshFeeLedger, refreshFeeStudents } from "../api/feeRepository";

export function useFeeDashboard(filters: FeeFilters) {
  const [students, setStudents] = React.useState<FeeStudentSummary[]>([]);
  const [source, setSource] = React.useState<"supabase" | "sample">("sample");
  const [isLoading, setIsLoading] = React.useState(true);
  const [error, setError] = React.useState("");

  const load = React.useCallback(async (force = false) => {
    setIsLoading(true);
    setError("");
    try {
      const result = force ? await refreshFeeStudents() : await listFeeStudents();
      setStudents(result.students);
      setSource(result.source);
    } catch (caught) {
      setError(caught instanceof Error ? caught.message : "Unable to load fee data.");
    } finally {
      setIsLoading(false);
    }
  }, []);

  React.useEffect(() => {
    load();
  }, [load]);

  const filteredStudents = React.useMemo(() => filterFeeStudents(students, filters), [students, filters]);
  const stats = React.useMemo(() => calculateStats(filteredStudents), [filteredStudents]);
  const classOptions = React.useMemo(
    () => Array.from(new Set(students.map((student) => student.className).filter(Boolean))).sort(),
    [students],
  );

  const refresh = React.useCallback(() => load(true), [load]);

  return { students: filteredStudents, allStudents: students, classOptions, stats, source, isLoading, error, refresh };
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
      setError(caught instanceof Error ? caught.message : "Unable to load fee ledger.");
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
