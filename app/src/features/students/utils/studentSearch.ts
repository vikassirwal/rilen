import type { Student, StudentFilters } from "../../../types/student";
import { fullName } from "../../../utils/format";

export function filterStudents(students: Student[], filters: StudentFilters) {
  const query = normalize(filters.query);
  const rteQuery = getRteQuery(query);

  return students.filter((student) => {
    const registration = student.academicRegistration;
    const guardians = student.guardians.map((guardian) => guardian.fullName).join(" ");
    const guardianMobiles = student.guardians
      .flatMap((guardian) => [guardian.mobilePrimary, guardian.mobileSecondary])
      .join(" ");

    const haystack = normalize(
      [
        fullName(student.firstName, student.lastName),
        student.aadhaarNumber,
        student.sssmId,
        student.familyId,
        student.religion,
        student.caste,
        student.category,
        registration.academicYear,
        registration.className,
        registration.section,
        registration.admissionNumber,
        registration.scholarNumber,
        registration.enrollmentNumber,
        student.address.city,
        student.address.state,
        student.address.pincode,
        guardians,
        guardianMobiles,
      ].join(" "),
    );

    const matchesQuery =
      !query ||
      (rteQuery === "rte" && registration.isRteStudent) ||
      (rteQuery === "non-rte" && !registration.isRteStudent) ||
      (!rteQuery && haystack.includes(query));
    const matchesClass = !filters.className || registration.className === filters.className;
    const matchesSection = !filters.section || registration.section === filters.section;
    const matchesCity = !filters.city || student.address.city === filters.city;
    const matchesStatus =
      filters.status === "all" ||
      (filters.status === "active" && registration.isActive) ||
      (filters.status === "inactive" && !registration.isActive);
    const matchesRte =
      filters.rteStatus === "all" ||
      (filters.rteStatus === "rte" && registration.isRteStudent) ||
      (filters.rteStatus === "non-rte" && !registration.isRteStudent);

    return matchesQuery && matchesClass && matchesSection && matchesCity && matchesStatus && matchesRte;
  });
}

export function uniqueValues(values: string[]) {
  return Array.from(new Set(values.filter(Boolean))).sort((a, b) =>
    a.localeCompare(b, undefined, { numeric: true }),
  );
}

function normalize(value: string) {
  return value.toLowerCase().replace(/\s+/g, " ").trim();
}

function getRteQuery(query: string) {
  if (["rte", "right to education"].includes(query)) return "rte";
  if (["non rte", "non-rte", "not rte", "not right to education"].includes(query)) return "non-rte";
  return null;
}
