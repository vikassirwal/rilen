import { useEffect, useMemo, useState } from "react";
import { sampleStudents } from "../data/sampleStudents";
import type { Student, StudentFormValues } from "../types/student";
import { createStudent } from "../features/students/utils/studentFactory";

const STORAGE_KEY = "rilen.students.v1";

export function useStudents() {
  const [students, setStudents] = useState<Student[]>(() => {
    const stored = localStorage.getItem(STORAGE_KEY);
    const parsed = stored ? (JSON.parse(stored) as Student[]) : sampleStudents;
    return parsed.map(normalizeStudent);
  });

  useEffect(() => {
    localStorage.setItem(STORAGE_KEY, JSON.stringify(students));
  }, [students]);

  const activeStudents = useMemo(
    () => students.filter((student) => student.academicRegistration.isActive),
    [students],
  );

  function addStudent(values: StudentFormValues) {
    const student = createStudent(values);
    setStudents((current) => [student, ...current]);
    return student;
  }

  return {
    students,
    activeStudents,
    addStudent,
  };
}

function normalizeStudent(student: Student): Student {
  return {
    ...student,
    academicRegistration: {
      ...student.academicRegistration,
      isRteStudent: student.academicRegistration.isRteStudent ?? false,
    },
  };
}
