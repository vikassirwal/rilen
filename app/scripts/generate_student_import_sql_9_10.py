from __future__ import annotations

import json
import re
from datetime import datetime
from pathlib import Path
from typing import Any
from uuid import uuid4

import openpyxl
from openpyxl.utils.datetime import from_excel


WORKBOOK_PATH = Path("/Users/vikassirwal/Desktop/9-10.xlsx")
OUTPUT_PATH = Path("db/student_import_class_9_10.sql")
ACADEMIC_YEAR = "2026-27"

NULL_TOKENS = {"", "?", "NA", "N/A", "#REF!"}
CLASS_BY_SHEET = {
    "CLASS 9th": "9",
    "CLASS 10th": "10",
}

HEADER_MAP = {
    "MODE": "mode",
    "NAME": "first_name",
    "SURNAME": "last_name",
    "FATHER": "father_name",
    "MOTHER": "mother_name",
    "DOB": "date_of_birth",
    "ADM NO.": "admission_number",
    "SCH. NO.": "scholar_number",
    "ENROLL": "enrollment_number",
    "ADHAR CARD": "aadhaar_number",
    "SSSMID": "sssm_id",
    "FAMILY ID": "family_id",
    "BANK AC. NO.": "account_number",
    "IFSC CODE": "ifsc_code",
    "RELIGION": "religion",
    "CASTE": "caste",
    "CATE.": "category",
    "CATE": "category",
    "OCCUPATION": "occupation",
    "ADMN.DATE": "admission_date",
    "BOARD R.N.": "board_registration_number",
    "ADM .CLASS": "admission_class",
    "ADM.CLASS": "admission_class",
    "MOB. NO.": "mobile_primary",
    "MOB. NO. 1": "mobile_primary",
    "MOB. NO. 2": "mobile_secondary",
    "ADDRESS": "address_line",
    "LAST SCHOOL": "last_school_name",
}


def clean_cell(value: Any) -> Any:
    if value is None:
        return None
    if isinstance(value, str):
        cleaned = re.sub(r"\s+", " ", value.replace("\xa0", " ")).strip()
        return None if cleaned.upper() in NULL_TOKENS else cleaned
    if isinstance(value, float) and value.is_integer():
        return int(value)
    return value


def text_value(value: Any) -> str | None:
    cleaned = clean_cell(value)
    if cleaned is None:
        return None
    return str(cleaned).strip()


def normalize_date_text(value: str) -> str:
    normalized = value.strip()
    normalized = normalized.replace("..", ".")
    normalized = re.sub(r"^(\d{1,2})[-/.]0(\d{2})[-/.](\d{4})$", r"\1-\2-\3", normalized)
    normalized = re.sub(r"(?<=\d)[.-](?=\d{4}$)", "-", normalized)
    normalized = re.sub(r"(?<=\d)[.-](?=\d{1,2}[.-]\d{4}$)", "-", normalized)
    normalized = re.sub(r"(?<=\d)/(?!/)", "/", normalized)
    return normalized


def parse_date(value: Any) -> str | None:
    cleaned = clean_cell(value)
    if cleaned is None:
        return None
    if isinstance(cleaned, datetime):
        return cleaned.date().isoformat()
    if isinstance(cleaned, (int, float)):
        try:
            return from_excel(cleaned).date().isoformat()
        except Exception:
            return None
    if isinstance(cleaned, str):
        candidates = [cleaned, normalize_date_text(cleaned)]
        for candidate in candidates:
            for fmt in ("%d.%m.%Y", "%d/%m/%Y", "%d-%m-%Y", "%d/%m/%y", "%d-%m-%y", "%Y-%m-%d %H:%M:%S"):
                try:
                    return datetime.strptime(candidate, fmt).date().isoformat()
                except ValueError:
                    continue
    return None


def sql_text(value: Any) -> str:
    cleaned = text_value(value)
    if cleaned is None:
        return "null"
    return "'" + cleaned.replace("'", "''") + "'"


def sql_date(value: Any) -> str:
    parsed = parse_date(value)
    if parsed is None:
        return "null"
    return f"'{parsed}'::date"


def sql_bool(value: bool) -> str:
    return "true" if value else "false"


def normalize_header(value: Any) -> str | None:
    cleaned = text_value(value)
    if cleaned is None:
        return None
    return re.sub(r"\s+", " ", cleaned.upper()).strip()


def row_has_data(row: tuple[Any, ...]) -> bool:
    return any(clean_cell(value) is not None for value in row)


def is_section_marker(row: tuple[Any, ...]) -> str | None:
    joined = " ".join(str(clean_cell(value) or "").upper() for value in row)
    if "RTE" in joined and "STUDENT" in joined:
        return "rte"
    if "LEFT" in joined:
        return "left"
    return None


def is_header_row(row: tuple[Any, ...]) -> bool:
    return normalize_header(row[0]) in {"S.NO", "S. NO", "SR.NO", "SR. NO"}


def correct_known_shifted_row(record: dict[str, Any]) -> None:
    if record["sheet"] != "CLASS 9th" or record["row_number"] != 41:
        return

    mapped = record["mapped"]
    raw = record["raw"]
    corrected = {
        "enrollment_number": None,
        "aadhaar_number": raw.get("ENROLL"),
        "sssm_id": raw.get("ADHAR CARD"),
        "family_id": raw.get("SSSMID"),
        "account_number": raw.get("FAMILY ID"),
        "ifsc_code": raw.get("BANK AC. NO."),
        "religion": raw.get("IFSC CODE"),
        "caste": raw.get("RELIGION"),
        "category": raw.get("CASTE"),
        "mobile_primary": raw.get("CATE."),
        "address_line": raw.get("OCCUPATION"),
    }
    mapped.update(corrected)
    record["corrections"].append("Corrected shifted values after ADM NO. in source row.")


def should_skip_record(worksheet_title: str, row_number: int, mapped: dict[str, Any]) -> bool:
    return (
        worksheet_title == "CLASS 10th"
        and row_number == 20
        and text_value(mapped.get("first_name")) == "SANSKAR"
        and text_value(mapped.get("last_name")) == "PATIDAR"
    )


def extract_records() -> list[dict[str, Any]]:
    workbook = openpyxl.load_workbook(WORKBOOK_PATH, data_only=True)
    records: list[dict[str, Any]] = []

    for worksheet in workbook.worksheets:
        class_name = CLASS_BY_SHEET.get(worksheet.title)
        if class_name is None:
            continue

        section = "enrolled"
        headers: list[str | None] = []

        for row_number, row in enumerate(worksheet.iter_rows(values_only=True), start=1):
            marker = is_section_marker(row)
            if marker:
                section = marker
                continue

            if is_header_row(row):
                headers = [normalize_header(value) for value in row]
                continue

            if not headers or not row_has_data(row):
                continue

            raw = {}
            mapped: dict[str, Any] = {}
            for index, header in enumerate(headers):
                if header is None or header in {"S.NO", "S. NO", "SR.NO", "SR. NO"}:
                    continue
                raw[header] = clean_cell(row[index] if index < len(row) else None)
                mapped_key = HEADER_MAP.get(header)
                if mapped_key:
                    mapped[mapped_key] = raw[header]

            if text_value(mapped.get("first_name")) is None and text_value(mapped.get("last_name")) is None:
                continue
            if should_skip_record(worksheet.title, row_number, mapped):
                continue

            record = {
                "id": str(uuid4()),
                "sheet": worksheet.title,
                "row_number": row_number,
                "section": section,
                "class_name": class_name,
                "is_rte_student": False,
                "is_active": section != "left",
                "mapped": mapped,
                "raw": raw,
                "corrections": [],
            }
            correct_known_shifted_row(record)
            records.append(record)

    return records


def student_insert(record: dict[str, Any]) -> str:
    mapped = record["mapped"]
    return f"""insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '{record["id"]}'::uuid,
  {sql_text(mapped.get("first_name"))},
  {sql_text(mapped.get("last_name"))},
  {sql_date(mapped.get("date_of_birth"))},
  {sql_text(mapped.get("aadhaar_number"))},
  {sql_text(mapped.get("sssm_id"))},
  {sql_text(mapped.get("family_id"))},
  {sql_text(mapped.get("religion"))},
  {sql_text(mapped.get("caste"))},
  {sql_text(mapped.get("category"))}
);"""


def registration_insert(record: dict[str, Any]) -> str:
    mapped = record["mapped"]
    tc_status = "LEFT" if record["section"] == "left" else None
    return f"""insert into public.student_academic_registrations (
  student_id,
  academic_year,
  class_name,
  section,
  admission_number,
  scholar_number,
  enrollment_number,
  admission_date,
  admission_class,
  board_registration_number,
  admission_mode,
  last_school_name,
  tc_status,
  is_rte_student,
  is_active
) values (
  '{record["id"]}'::uuid,
  '{ACADEMIC_YEAR}',
  {sql_text(record["class_name"])},
  null,
  {sql_text(mapped.get("admission_number"))},
  {sql_text(mapped.get("scholar_number"))},
  {sql_text(mapped.get("enrollment_number"))},
  {sql_date(mapped.get("admission_date"))},
  {sql_text(mapped.get("admission_class"))},
  {sql_text(mapped.get("board_registration_number"))},
  {sql_text(mapped.get("mode"))},
  {sql_text(mapped.get("last_school_name"))},
  {sql_text(tc_status)},
  {sql_bool(record["is_rte_student"])},
  {sql_bool(record["is_active"])}
);"""


def guardian_inserts(record: dict[str, Any]) -> list[str]:
    mapped = record["mapped"]
    inserts = []

    father_name = text_value(mapped.get("father_name"))
    mother_name = text_value(mapped.get("mother_name"))
    occupation = mapped.get("occupation")
    mobile_primary = mapped.get("mobile_primary")

    if father_name:
        inserts.append(
            f"""insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '{record["id"]}'::uuid,
  'father',
  {sql_text(father_name)},
  {sql_text(occupation)},
  {sql_text(mobile_primary)},
  null
);"""
        )

    if mother_name:
        inserts.append(
            f"""insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '{record["id"]}'::uuid,
  'mother',
  {sql_text(mother_name)},
  null,
  null,
  null
);"""
        )

    return inserts


def address_insert(record: dict[str, Any]) -> str | None:
    mapped = record["mapped"]
    if text_value(mapped.get("address_line")) is None:
        return None
    return f"""insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '{record["id"]}'::uuid,
  {sql_text(mapped.get("address_line"))},
  null,
  null,
  null,
  'home'
);"""


def bank_insert(record: dict[str, Any]) -> str | None:
    mapped = record["mapped"]
    if text_value(mapped.get("account_number")) is None and text_value(mapped.get("ifsc_code")) is None:
        return None
    return f"""insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '{record["id"]}'::uuid,
  null,
  {sql_text(mapped.get("account_number"))},
  {sql_text(mapped.get("ifsc_code"))},
  null
);"""


def import_row_insert(record: dict[str, Any]) -> str:
    raw_data = {
        "sheet_name": record["sheet"],
        "row_number": record["row_number"],
        "section": record["section"],
        "corrections": record["corrections"],
        "data": record["raw"],
    }
    raw_json = json.dumps(raw_data, ensure_ascii=False, default=str)
    return f"""insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '{record["id"]}'::uuid,
  '{ACADEMIC_YEAR}',
  {sql_text(record["class_name"])},
  {sql_text(WORKBOOK_PATH.name)},
  {sql_text(record["sheet"])},
  '{raw_json.replace("'", "''")}'::jsonb
);"""


def build_sql(records: list[dict[str, Any]]) -> str:
    lines = [
        "-- RILEN student import for classes 9 and 10",
        f"-- Source workbook: {WORKBOOK_PATH.name}",
        f"-- Generated records: {len(records)}",
        "-- Rules: no RTE section => is_rte_student false; LEFT section => is_active false and tc_status LEFT; typo-like dates normalized when unambiguous.",
        "",
        "begin;",
        "",
    ]

    for record in records:
        mapped = record["mapped"]
        display_name = " ".join(filter(None, [text_value(mapped.get("first_name")), text_value(mapped.get("last_name"))]))
        correction_note = f" Corrections: {'; '.join(record['corrections'])}" if record["corrections"] else ""
        lines.extend(
            [
                f"-- {record['sheet']} row {record['row_number']} [{record['section']}]: {display_name}{correction_note}",
                student_insert(record),
                registration_insert(record),
                *guardian_inserts(record),
            ]
        )
        address = address_insert(record)
        if address:
            lines.append(address)
        bank = bank_insert(record)
        if bank:
            lines.append(bank)
        lines.extend([import_row_insert(record), ""])

    lines.extend(["commit;", ""])
    return "\n".join(lines)


def main() -> None:
    records = extract_records()
    OUTPUT_PATH.parent.mkdir(parents=True, exist_ok=True)
    OUTPUT_PATH.write_text(build_sql(records), encoding="utf-8")
    counts: dict[str, dict[str, int]] = {}
    null_dates = []
    corrections = []
    for record in records:
        counts.setdefault(record["sheet"], {"enrolled": 0, "rte": 0, "left": 0})
        counts[record["sheet"]][record["section"]] += 1
        if record["corrections"]:
            corrections.append(
                {
                    "sheet": record["sheet"],
                    "row": record["row_number"],
                    "corrections": record["corrections"],
                }
            )
        for field in ("date_of_birth", "admission_date"):
            value = record["mapped"].get(field)
            if text_value(value) is not None and parse_date(value) is None:
                null_dates.append(
                    {
                        "sheet": record["sheet"],
                        "row": record["row_number"],
                        "field": field,
                        "value": value,
                    }
                )
    print(
        json.dumps(
            {
                "output": str(OUTPUT_PATH),
                "records": len(records),
                "counts": counts,
                "null_dates": null_dates,
                "corrections": corrections,
            },
            indent=2,
        )
    )


if __name__ == "__main__":
    main()
