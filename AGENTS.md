# RILEN Repository Agent Instructions

These instructions apply to the entire repository. A nested `AGENTS.md` may add
more specific rules for its directory, but it must not weaken or contradict
this file.

## 1. Source Of Truth

Before proposing or implementing product, UX, messaging, architecture,
security, database, or data-model changes:

1. Read `RILEN_CONTEXT.md`.
2. Read the nearest applicable nested `AGENTS.md`.
3. Inspect the existing implementation, schema, and established patterns.
4. Treat `RILEN_CONTEXT.md` as authoritative when assumptions conflict.

Do not invent fields, workflows, policies, product claims, or AI capabilities
that are unsupported by the context, schema, or implemented system. Ask a
focused question when a consequential requirement cannot be verified.

When making product decisions, ask:

> What manual work is the human still doing that RILEN should have done?

Prefer proactive, exception-driven workflows; deterministic logic before AI;
human approval for sensitive actions; auditability; multi-institution
foundations; and depth in the current product priority over unrelated features.

## 2. Privacy And Confidential Data

RILEN handles data about children, families, teachers, staff, finances, and
institutions. Treat all real records as confidential and sensitive.

- Never commit real personal, student, guardian, employee, financial, academic,
  authentication, or institutional data.
- Never commit generated SQL containing real records. Data import, seed, dump,
  export, backup, and one-time insert scripts containing actual data must remain
  outside Git.
- Never copy production data into tests, fixtures, screenshots, logs, examples,
  documentation, issues, prompts, demos, or analytics.
- Use clearly fictional and minimal test data. Avoid examples that can be
  linked back to a real person even after obvious fields are removed.
- Mask identifiers in diagnostics and UI examples. Do not log Aadhaar numbers,
  SSSM IDs, family IDs, bank details, phone numbers, addresses, tokens, or full
  dates of birth.
- Collect, query, return, and retain only the fields required for the task.
- Do not transmit confidential data to third-party services without explicit,
  informed authorization and an approved data-handling path.
- Treat spreadsheet imports as local, temporary processing. Validate them,
  produce a reviewable anomaly report, and keep raw files and generated inserts
  out of the repository.

Repository-safe database code may define schemas, migrations, constraints,
indexes, functions, policies, and fictional development seeds. Any script or
file containing real records is not repository-safe.

## 3. Secrets And Configuration

- Never commit passwords, API keys, privileged service credentials, access tokens, private
  certificates, database URLs with credentials, session values, or webhook
  secrets.
- Keep local secrets in an ignored secret store or environment configuration.
- Commit only sanitized configuration templates containing variable names and
  safe descriptions, never working values.
- Client-side code may use only identifiers or credentials explicitly designed
  for public distribution. Public client credentials must never be treated as
  authorization or as a substitute for server-side access controls.
- Privileged credentials are server-only and must be inaccessible to clients,
  static assets, logs, analytics, and source maps.
- Fail closed when required configuration is missing. Do not silently fall back
  to production, insecure defaults, or embedded credentials.
- Redact secrets from logs and error messages. If a secret is exposed, remove
  it from code and history where appropriate and rotate it immediately.

## 4. Architecture And Code Quality

- Write clear, optimized, maintainable code. Less code should accomplish more,
  but brevity must never obscure behavior or remove necessary validation.
- Do not add placeholder logic, dead code, unexplained duplication, speculative
  abstractions, or generated-looking noise.
- Follow the repository's existing language, framework, naming, formatting,
  and directory conventions.
- Separate presentation, domain logic, data access, and infrastructure. UI
  components must not contain privileged database or secret-handling logic.
- Organize code by cohesive features and responsibilities. Views and major UI
  regions belong in their own components; shared behavior belongs in reusable
  components, hooks, utilities, or services.
- Prefer small pure functions for transformations, validation, calculations,
  filtering, sorting, and business rules. Make side effects explicit and keep
  them at system boundaries.
- Prefer composition over inheritance and explicit data flow over hidden global
  state.
- Reuse established modules before adding new abstractions. Add an abstraction
  only when it removes meaningful complexity or duplication.
- Use strict types. Avoid `any`, unchecked casts, non-null assertions, and
  ambiguous optional fields unless there is a documented reason.
- Validate all data at trust boundaries. Types alone do not validate runtime
  input.
- Handle loading, empty, error, stale, unauthorized, and partial-data states.
- Add concise comments or function documentation wherever a future maintainer
  would otherwise need to reverse-engineer intent. This includes complex
  functions, non-obvious business rules, security and privacy decisions,
  financial calculations, data transformations, important invariants,
  workarounds, unusual edge cases, and logic whose correctness depends on
  external policy or domain context.
- Document a function's contract when its purpose, inputs, outputs, side
  effects, failure behavior, or assumptions are not obvious from its name and
  types. Keep documentation next to the function or logic it explains.
- Explain why a decision or algorithm exists and what must remain true. Do not
  add comments that merely translate individual statements into prose, repeat
  type information, preserve obsolete history, or compensate for unclear code.
- Keep comments accurate when logic changes. Remove or update stale comments as
  part of the same change.
- Optimize database calls and expensive rendering based on measured or obvious
  cost. Use pagination, debouncing, caching, request deduplication, selective
  columns, and appropriate indexes where they materially help.

## 5. Frontend

- Build accessible, responsive, keyboard-usable interfaces using semantic HTML
  and appropriate ARIA only where native semantics are insufficient.
- Keep views in dedicated components. Break large screens into cohesive feature
  components rather than one monolithic file.
- Preserve design-system tokens and existing interaction patterns. Do not
  introduce one-off styling when a reusable pattern exists.
- Never trust or directly render user-provided markup. Prefer text-rendering
  APIs that escape content by default. If raw markup is unavoidable, sanitize
  it with a maintained allowlist-based mechanism and document why.
- Do not construct executable code, HTML, CSS selectors, or URLs from unchecked
  input.
- Validate and encode URL parameters, redirects, filenames, and downloadable
  content. Allowlist URL protocols and destinations.
- Protect against XSS, CSRF where cookie-authenticated mutations exist, clickjacking,
  open redirects, unsafe file uploads, and dependency-based supply-chain risk.
- Use an appropriate Content Security Policy and secure response headers in
  production. Do not weaken security headers merely to suppress errors.
- Do not store sensitive records or long-lived credentials in local storage,
  session storage, query strings, client logs, or analytics events.
- Client-side authorization is presentation only. Enforce authorization again
  in the backend or database.
- Avoid leaking implementation details or sensitive values in user-facing
  errors. Provide useful recovery guidance while logging only safe diagnostics.
- Respect reduced-motion preferences and verify layouts at mobile and desktop
  sizes without overflow, clipping, overlap, or inaccessible controls.

## 6. Backend And APIs

- APIs must have a clear contract, validated inputs, typed outputs, consistent
  errors, and predictable status codes.
- Authenticate every protected request and authorize access to the specific
  institution, resource, and action. Authentication alone is not authorization.
- Derive tenant and user scope from verified server-side identity, never from a
  client-supplied institution ID alone.
- Return the minimum data necessary. Never expose internal columns, secrets,
  stack traces, SQL errors, or cross-tenant information.
- Use parameterized data operations or trusted data-access libraries. Never
  concatenate untrusted values into a query language or command.
- Apply sensible pagination, bounded filters, timeouts, payload limits, and rate
  limits. Prevent unbounded list endpoints and expensive arbitrary queries.
- Make retryable writes idempotent where duplicate payments, receipts,
  notifications, or workflow actions would cause harm.
- Use transactions for multi-step operations that must succeed or fail together.
- Preserve audit trails for financial, permission, policy, and other sensitive
  mutations, including actor, timestamp, action, and relevant before/after
  context without copying unnecessary sensitive data.
- Keep business rules in testable domain services rather than route handlers or
  UI components.
- Version breaking API contracts and provide a deliberate migration path.

## 7. Database And Data Access

- Treat persistent data access as an authorization boundary. Enforce and test
  access policies at the server, data service, or database layer for every
  exposed collection, table, view, file store, and query path.
- Design all tenant-owned data for explicit institution isolation. Every query
  and policy must prevent cross-institution access.
- Use migrations for schema changes. Migrations should be deterministic,
  reviewable, safely ordered, and compatible with existing data.
- Do not rewrite or silently alter an already-applied migration. Add a new
  corrective migration.
- Prefer normalized, atomic structures and explicit relationships. Add required
  field, validation, uniqueness, and referential constraints where the business
  rule is real.
- Add indexes for demonstrated access patterns, foreign keys, tenant scoping,
  common filters, and ordering. Avoid redundant indexes.
- Store money in exact numeric or integer minor-unit types, never floating
  point. Store timestamps with timezone semantics and define the business
  timezone explicitly.
- Financial records should be immutable or corrected through traceable reversal
  and adjustment records. Do not silently overwrite posted receipts or payments.
- Use stable internal identifiers. External identifiers such as scholar or
  admission numbers may support matching but must not be assumed globally
  unique without an explicit scoped constraint.
- Schema files may be committed. Real-data inserts, production dumps, and
  confidential migration helpers may not.
- Before destructive or irreversible data operations, provide a backup or
  rollback strategy, state the scope, and obtain explicit approval.

## 8. Security

- Apply least privilege to users, services, database roles, storage, and CI/CD.
- Deny by default and allow explicitly. Fail closed on authorization or policy
  uncertainty.
- Validate input on the server even when the client validates it first.
- Use maintained cryptographic and authentication libraries; never invent
  cryptography, token formats, password storage, or session protocols.
- Protect sensitive actions with re-authorization or confirmation appropriate
  to their impact.
- Keep dependencies minimal, pinned through the lockfile, and reviewed before
  introduction. Do not add a package for behavior that is simple and safe to
  implement with existing tools.
- Address known critical and high-severity vulnerabilities before release, or
  document the accepted risk and mitigation explicitly.
- Consider abuse cases, not only expected use: enumeration, replay, duplicate
  submissions, privilege escalation, tenant switching, injection, oversized
  input, and automated scraping.
- Security controls must be tested. A policy that exists but is not exercised
  by tests should be treated as unverified.

## 9. Design And Product Experience

- RILEN is an intelligence and reasoning layer, not a conventional module-heavy
  ERP. Interfaces should begin with context, priorities, decisions, and prepared
  actions rather than raw tables or dashboard clutter.
- Keep the visual language calm, precise, minimal, and modern. Density should
  support repeated work without becoming crowded.
- Show why a recommendation exists, its evidence, uncertainty, and what will
  happen before a sensitive action is executed.
- Never introduce hidden student, parent, teacher, or institution reputation
  scores. Verify facts and provide context; do not secretly rank people.
- Maintain human approval, override, and traceability for consequential actions.
- Use realistic but fictional content in demos. Mark simulated intelligence and
  sample data clearly.
- Build complete states and workflows, not decorative mockups that imply
  unsupported functionality.

## 10. Testing And Verification

- Match verification effort to risk and blast radius.
- Add or update focused tests for business rules, validation, permissions,
  calculations, data transformations, and regressions.
- For financial behavior, test rounding, partial payments, overpayments,
  reversals, discounts, allocation order, duplicate submission, and receipt
  sequencing.
- For database changes, test constraints, access-control policies, tenant
  isolation, expected query plans where relevant, and migration behavior on
  existing data.
- For frontend changes, run the build and inspect important workflows at mobile
  and desktop sizes. Check keyboard navigation, focus, overflow, empty/error
  states, and browser console errors.
- Do not claim tests passed unless they were actually run. Report anything that
  could not be verified and why.
- Never repair unrelated failures or rewrite unrelated code without explicit
  scope. Surface them separately.

## 11. Git And Repository Hygiene

- Keep commits and diffs focused. Do not mix unrelated refactors, formatting,
  generated files, or data changes into a feature or fix.
- Never commit secret configuration, real-data scripts, database dumps,
  spreadsheets, exports, logs, build artifacts, OS metadata, or temporary
  analysis files.
- Keep ignore rules current for local configuration, imports, exports,
  generated data scripts, local databases, coverage, build output, and
  editor/OS files.
- Do not delete, revert, or overwrite user work that is outside the requested
  change.
- Review staged changes for secrets and confidential data before committing.
- Use descriptive commit messages that explain the purpose of the change.

## 12. Releases, Versions, And Change History

Every completed change intended to ship must be classified and documented in
`CHANGELOG.md`. Do not change an application, package, schema, or release
version unless the user explicitly asks for a version update or release.

Classify the change as one or more of:

- `feature`: new user-visible capability
- `fix`: corrected defective behavior
- `security`: security or privacy improvement
- `database`: schema, policy, migration, or data-contract change
- `performance`: measurable efficiency improvement
- `design`: user-facing visual or interaction change
- `internal`: refactor, tooling, tests, or maintenance without intended behavior change
- `documentation`: documentation-only change

When the user explicitly requests a release or version update, use Semantic
Versioning:

- `PATCH` for backward-compatible fixes, security hardening, and internal improvements
- `MINOR` for backward-compatible features or meaningful design additions
- `MAJOR` for breaking API, schema, configuration, or user-workflow changes

For every completed change:

1. Add a concise entry under the appropriate category in the `Unreleased`
   section of `CHANGELOG.md`.
2. State the classification and user-visible or operational impact.
3. Call out database migrations, configuration changes, security implications,
   and manual deployment steps where relevant.
4. Keep entries concise and factual; do not advertise unfinished behavior.
5. Preserve all `Unreleased` entries added since the last published version so
   the eventual release notes describe everything included in that release.

When the user explicitly requests a version update or release:

1. Choose the appropriate semantic version from the complete set of
   `Unreleased` changes, unless the user specifies the exact version.
2. Update the version only in the relevant canonical release sources.
3. Move all applicable `Unreleased` entries into a new versioned section with
   the release date; do not omit earlier changes made since the previous
   version.
4. Leave an empty `Unreleased` section ready for subsequent work.
5. Verify release notes, versions, migrations, and deployment instructions are
   consistent before finishing.

If no changelog exists, create one when making the first material change. Never
bump a version without explicit user instruction, and never use a version bump
or release-note edit to conceal an incomplete or unverified change.

## 13. Definition Of Done

Before finishing:

- Confirm the implementation matches `RILEN_CONTEXT.md` and the requested scope.
- Confirm no confidential data, insert scripts with real records, or secrets
  were introduced.
- Review security, tenant isolation, failure states, and audit implications.
- Run relevant tests, type checks, builds, migrations, and visual checks.
- Review the final diff for unrelated or generated changes.
- Update the changelog for completed changes. Update versions only when the
  user explicitly requests a version update or release.
- Summarize what changed, what was verified, and any remaining risk or manual
  action.
