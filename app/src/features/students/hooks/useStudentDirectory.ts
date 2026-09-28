import { useCallback, useEffect, useMemo, useState } from "react";
import { supabase } from "../../../lib/supabase/client";
import { useDebouncedValue } from "../../../lib/useDebouncedValue";
import { sampleStudents } from "../../../data/sampleStudents";
import type { PageRequest } from "../../../types/pagination";
import type { Student, StudentDirectoryFacets, StudentDirectoryMetrics, StudentFilters, StudentSummary } from "../../../types/student";
import { filterStudents, uniqueValues } from "../utils/studentSearch";
import { getStudent, getStudentDirectoryFacets, getStudentDirectoryHealth, getStudentDirectoryMetrics, invalidateStudentDetailCache, invalidateStudentDirectoryCache, listStudentSummaries } from "../api/studentRepository";
import { getUserSafeError } from "../../../lib/errors";

export type DirectorySource = "supabase" | "demo";
export type DirectoryHealth = Awaited<ReturnType<typeof getStudentDirectoryHealth>>;

const EMPTY_FACETS: StudentDirectoryFacets = { classes: [], sections: [], cities: [] };
const EMPTY_METRICS: StudentDirectoryMetrics = { total: 0, active: 0, inactive: 0, needsCompletion: 0, classCount: 0, cityCount: 0, rteCount: 0 };

export function useStudentDirectory(filters: StudentFilters, pageRequest: PageRequest) {
  const [students, setStudents] = useState<StudentSummary[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [facets, setFacets] = useState<StudentDirectoryFacets>(EMPTY_FACETS);
  const [metrics, setMetrics] = useState<StudentDirectoryMetrics>(EMPTY_METRICS);
  const [source, setSource] = useState<DirectorySource>(supabase ? "supabase" : "demo");
  const [isLoading, setIsLoading] = useState(Boolean(supabase));
  const [error, setError] = useState<string | null>(null);
  const [health, setHealth] = useState<DirectoryHealth | null>(null);
  const [reloadToken, setReloadToken] = useState(0);
  const debouncedQuery = useDebouncedValue(filters.query, 350);
  const queryFilters = useMemo(() => ({ ...filters, query: debouncedQuery }), [debouncedQuery, filters.className, filters.section, filters.city, filters.status, filters.rteStatus]);

  useEffect(() => {
    let cancelled = false;
    if (!supabase) {
      setFacets({
        classes: uniqueValues(sampleStudents.map((student) => student.academicRegistration.className)),
        sections: uniqueValues(sampleStudents.map((student) => student.academicRegistration.section)),
        cities: uniqueValues(sampleStudents.map((student) => student.address.city)),
      });
      setMetrics(calculateDemoMetrics(sampleStudents));
      return;
    }
    Promise.all([getStudentDirectoryFacets(), getStudentDirectoryMetrics()])
      .then(([nextFacets, nextMetrics]) => {
        if (!cancelled) {
          setFacets(nextFacets);
          setMetrics(nextMetrics);
        }
      })
      .catch(() => {
        if (!cancelled) {
          setFacets(EMPTY_FACETS);
          setMetrics(EMPTY_METRICS);
        }
      });
    return () => { cancelled = true; };
  }, [reloadToken]);

  useEffect(() => {
    let cancelled = false;
    async function loadStudents() {
      if (!supabase) {
        const filtered = filterStudents(sampleStudents, queryFilters);
        const start = (pageRequest.page - 1) * pageRequest.pageSize;
        setStudents(filtered.slice(start, start + pageRequest.pageSize).map(toSummary));
        setTotalCount(filtered.length);
        setSource("demo");
        setIsLoading(false);
        setError(null);
        return;
      }
      setIsLoading(true);
      setError(null);
      try {
        const result = await listStudentSummaries(queryFilters, pageRequest);
        if (!cancelled) {
          setStudents(result.items);
          setTotalCount(result.totalCount);
          setSource("supabase");
        }
      } catch (caught) {
        if (!cancelled) {
          setStudents([]);
          setTotalCount(0);
          setSource("supabase");
          setError(getUserSafeError(caught, "Unable to load student records. Please retry."));
        }
      } finally {
        if (!cancelled) setIsLoading(false);
      }
    }
    loadStudents();
    return () => { cancelled = true; };
  }, [pageRequest.page, pageRequest.pageSize, queryFilters, reloadToken]);

  useEffect(() => {
    if (!supabase || totalCount !== 0) return;
    let cancelled = false;
    getStudentDirectoryHealth()
      .then((value) => !cancelled && setHealth(value))
      .catch(() => !cancelled && setHealth(null));
    return () => { cancelled = true; };
  }, [reloadToken, totalCount]);

  return {
    students,
    totalCount,
    facets,
    metrics,
    source,
    isLoading,
    error,
    health,
    refresh: () => {
      invalidateStudentDirectoryCache();
      setReloadToken((value) => value + 1);
    },
  };
}

export function useStudentDetail(studentId: string | null, source: DirectorySource) {
  const [student, setStudent] = useState<Student | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [reloadToken, setReloadToken] = useState(0);

  useEffect(() => {
    let cancelled = false;
    if (!studentId) {
      setStudent(null);
      setError(null);
      return;
    }
    setIsLoading(true);
    setError(null);
    setStudent(null);
    const request = source === "demo"
      ? Promise.resolve(sampleStudents.find((item) => item.id === studentId) ?? null)
      : getStudent(studentId);
    request
      .then((value) => { if (!cancelled) setStudent(value); })
      .catch((caught) => {
        if (!cancelled) {
          setStudent(null);
          setError(getUserSafeError(caught, "Unable to load this student record."));
        }
      })
      .finally(() => { if (!cancelled) setIsLoading(false); });
    return () => { cancelled = true; };
  }, [reloadToken, source, studentId]);

  const replaceStudent = useCallback((value: Student) => setStudent(value), []);
  return {
    student,
    isLoading,
    error,
    refresh: () => {
      if (studentId) invalidateStudentDetailCache(studentId);
      setReloadToken((value) => value + 1);
    },
    replaceStudent,
  };
}

function toSummary(student: Student): StudentSummary {
  const registration = student.academicRegistration;
  const hasGuardian = student.guardians.some((guardian) => guardian.fullName && guardian.mobilePrimary);
  return {
    id: student.id,
    firstName: student.firstName,
    lastName: student.lastName,
    dateOfBirth: student.dateOfBirth,
    className: registration.className,
    section: registration.section,
    city: student.address.city,
    admissionNumber: registration.admissionNumber,
    scholarNumber: registration.scholarNumber,
    isRteStudent: registration.isRteStudent,
    isActive: registration.isActive,
    missingCount: Number(!student.dateOfBirth) + Number(!student.address.city) + Number(!hasGuardian),
  };
}

function calculateDemoMetrics(students: Student[]): StudentDirectoryMetrics {
  const summaries = students.map(toSummary);
  return {
    total: summaries.length,
    active: summaries.filter((student) => student.isActive).length,
    inactive: summaries.filter((student) => !student.isActive).length,
    needsCompletion: summaries.filter((student) => student.missingCount > 0).length,
    classCount: new Set(summaries.map((student) => student.className).filter(Boolean)).size,
    cityCount: new Set(summaries.map((student) => student.city).filter(Boolean)).size,
    rteCount: summaries.filter((student) => student.isRteStudent).length,
  };
}
