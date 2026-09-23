import { useMemo, useState } from "react";
import { sampleStudents } from "../data/sampleStudents";
import type { Student, StudentFormValues } from "../types/student";
import { createStudent } from "../features/students/utils/studentFactory";

export function useStudents() {
  // This store powers the clearly labelled demo onboarding flow only. Student
  // records must never be persisted in browser storage.
  const [students, setStudents] = useState<Student[]>(() => sampleStudents.map(normalizeStudent));

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
