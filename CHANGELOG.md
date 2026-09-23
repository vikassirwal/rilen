# Changelog

All notable changes to RILEN are documented in this file.

## Unreleased

### Added

- Rebuilt the public RILEN website from the approved interactive prototype,
  including institution, teacher, parent, and student product experiences,
  responsive layouts, charts, theme support, and motion preferences.
- Added repository-wide agent guidance covering privacy, architecture,
  frontend, backend, data access, security, design, testing, Git hygiene, and
  release practices.
- Added repository ignore rules for raw spreadsheets, generated student import
  scripts, local secrets, exports, caches, dependencies, and build artifacts.

### Changed

- Separated the public website into dedicated HTML, stylesheet, and behavior
  files while retaining the approved content, design, and interactions.
- Made repository guidance technology-neutral so it remains valid if the
  implementation stack changes.
- Required useful documentation for complex functions, non-obvious logic,
  business rules, security decisions, invariants, and edge cases.
- Changed release tracking so completed work accumulates under `Unreleased` and
  versions change only when explicitly requested.
- Refactored live directory loading to fail visibly instead of silently
  substituting fictional records after a database or authorization error.
- Kept demo onboarding records in memory instead of persisting sensitive
  student-shaped data in browser storage.
- Added client-side fee collection validation for invalid amounts and
  overpayments, and stopped live fee-loading failures from showing preview data.

### Security

- Removed class-specific student import SQL and generator scripts containing or
  encoding confidential student records and corrections.
- Added restrictive browser security and referrer policies to the public
  website.
- Replaced raw authentication and data-provider errors with user-safe recovery
  messages, and removed account email addresses from database diagnostics.
