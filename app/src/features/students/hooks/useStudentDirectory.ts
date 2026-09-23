import { useCallback, useEffect, useMemo, useState } from "react";
import { supabase } from "../../../lib/supabase/client";
import { useDebouncedValue } from "../../../lib/useDebouncedValue";
import { sampleStudents } from "../../../data/sampleStudents";
import type { Student, StudentFilters } from "../../../types/student";
import { filterStudents } from "../utils/studentSearch";
import { getStudentDirectoryHealth, listStudents } from "../api/studentRepository";
import { getUserSafeError } from "../../../lib/errors";

export type DirectorySource = "supabase" | "demo";
export type DirectoryHealth = Awaited<ReturnType<typeof getStudentDirectoryHealth>>;

export function useStudentDirectory(filters: StudentFilters) {
  const [students, setStudents] = useState<Student[]>([]);
  const [source, setSource] = useState<DirectorySource>(supabase ? "supabase" : "demo");
  const [isLoading, setIsLoading] = useState(Boolean(supabase));
  const [error, setError] = useState<string | null>(null);
  const [health, setHealth] = useState<DirectoryHealth | null>(null);
  const [forceReload, setForceReload] = useState(false);
  const debouncedQuery = useDebouncedValue(filters.query, 350);
  const queryFilters = useMemo(
    () => ({ ...filters, query: debouncedQuery }),
    [
      debouncedQuery,
      filters.className,
      filters.section,
      filters.city,
      filters.status,
      filters.rteStatus,
    ],
  );

  useEffect(() => {
    if (!supabase) return;
    let cancelled = false;

    getStudentDirectoryHealth()
      .then((directoryHealth) => {
        if (!cancelled) setHealth(directoryHealth);
      })
      .catch(() => {
        if (!cancelled) setHealth(null);
      });

    return () => {
      cancelled = true;
    };
  }, []);

  useEffect(() => {
    let cancelled = false;

    async function loadStudents() {
      if (!supabase) {
        setStudents(filterStudents(sampleStudents, filters));
        setSource("demo");
        setIsLoading(false);
        setError(null);
        return;
      }

      setIsLoading(true);
      setError(null);

      try {
        const result = await listStudents(queryFilters, { force: forceReload });
        if (!cancelled) {
          setStudents(result);
          setSource("supabase");
        }
      } catch (loadError) {
        if (!cancelled) {
          // A configured live connection must fail visibly; substituting demo
          // records could cause an operator to mistake fictional data for live data.
          setStudents([]);
          setSource("supabase");
          setError(getUserSafeError(loadError, "Unable to load student records. Please retry."));
        }
      } finally {
        if (!cancelled) {
          setIsLoading(false);
          if (forceReload) setForceReload(false);
        }
      }
    }

    loadStudents();

    return () => {
      cancelled = true;
    };
  }, [forceReload, queryFilters]);

  const activeStudents = useMemo(
    () => students.filter((student) => student.academicRegistration.isActive),
    [students],
  );

  const replaceStudent = useCallback((student: Student) => {
    setStudents((current) => current.map((item) => (item.id === student.id ? student : item)));
  }, []);

  return {
    students,
    activeStudents,
    source,
    isLoading,
    error,
    health,
    refresh: () => setForceReload(true),
    replaceStudent,
  };
}
