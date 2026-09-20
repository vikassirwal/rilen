export function fullName(firstName: string, lastName: string) {
  return [firstName, lastName].filter(Boolean).join(" ");
}

export function formatDate(value: string) {
  if (!value) return "Not added";
  return new Intl.DateTimeFormat("en-IN", {
    day: "2-digit",
    month: "short",
    year: "numeric",
  }).format(new Date(value));
}

export function initials(firstName: string, lastName: string) {
  return `${firstName.at(0) ?? ""}${lastName.at(0) ?? ""}`.toUpperCase() || "ST";
}

export function compactValue(value: string | boolean | undefined) {
  if (typeof value === "boolean") return value ? "Active" : "Inactive";
  return value?.trim() || "Not added";
}
