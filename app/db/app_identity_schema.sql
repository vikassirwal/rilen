-- RILEN application identity schema.
--
-- Run after student_directory_schema.sql and fee_management_schema.sql.
-- This migration creates server-managed application users. It deliberately
-- does not store plaintext passwords and does not use auth.users as the user
-- directory.
--
-- IMPORTANT:
-- - password_hash must be produced and verified by the RILEN backend using
--   Argon2id. Never insert a plaintext password into this table.
-- - session_token_hash stores a SHA-256 hash of a cryptographically random
--   session token. The raw token belongs only in a Secure, HttpOnly cookie.
-- - These tables are server-only. Browser roles receive no grants.
-- - The existing school_user_memberships table and auth.users audit columns
--   remain temporarily for compatibility. Remove them only after the backend
--   authentication cutover is complete and verified.

begin;

create extension if not exists pgcrypto;

create table if not exists public.app_roles (
  code text primary key,
  display_name text not null,
  description text,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint app_roles_code_valid check (code ~ '^[a-z][a-z0-9_]*$'),
  constraint app_roles_display_name_not_blank check (btrim(display_name) <> '')
);

insert into public.app_roles (code, display_name, description)
values
  ('school_admin', 'School administrator', 'Manages school configuration, users, students, and operations.'),
  ('fee_admin', 'Fee administrator', 'Manages fee setup, collection, receipts, and fee reporting.'),
  ('admissions_staff', 'Admissions staff', 'Creates and maintains student admission records.'),
  ('teacher', 'Teacher', 'Accesses permitted student and academic workflows.'),
  ('viewer', 'Read-only viewer', 'Views permitted school information without mutation access.')
on conflict (code) do update
set
  display_name = excluded.display_name,
  description = excluded.description;

create table if not exists public.app_users (
  id uuid primary key default gen_random_uuid(),
  username text not null,
  password_hash text not null,
  display_name text not null,
  is_active boolean not null default true,
  must_change_password boolean not null default true,
  failed_login_attempts integer not null default 0,
  locked_until timestamptz,
  last_login_at timestamptz,
  password_changed_at timestamptz not null default now(),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint app_users_username_not_blank check (btrim(username) <> ''),
  constraint app_users_username_length check (char_length(btrim(username)) between 3 and 100),
  constraint app_users_password_hash_not_blank check (char_length(btrim(password_hash)) >= 40),
  constraint app_users_display_name_not_blank check (btrim(display_name) <> ''),
  constraint app_users_failed_login_attempts_valid check (failed_login_attempts >= 0)
);

-- Usernames are case-insensitive without forcing presentation casing.
create unique index if not exists app_users_username_lower_unique
  on public.app_users (lower(btrim(username)));

create index if not exists app_users_active_lookup_idx
  on public.app_users (is_active, id);

create table if not exists public.app_user_school_memberships (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.app_users(id) on delete cascade,
  school_id uuid not null references public.schools(id) on delete cascade,
  role_code text not null references public.app_roles(code) on delete restrict,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint app_user_school_memberships_unique unique (user_id, school_id)
);

create index if not exists app_user_school_memberships_user_lookup_idx
  on public.app_user_school_memberships (user_id, school_id, role_code)
  where is_active;

create index if not exists app_user_school_memberships_school_lookup_idx
  on public.app_user_school_memberships (school_id, role_code, user_id)
  where is_active;

create table if not exists public.app_user_sessions (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references public.app_users(id) on delete cascade,
  session_token_hash text not null unique,
  expires_at timestamptz not null,
  last_seen_at timestamptz not null default now(),
  revoked_at timestamptz,
  revoke_reason text,
  created_at timestamptz not null default now(),
  constraint app_user_sessions_token_hash_valid check (session_token_hash ~ '^[a-f0-9]{64}$'),
  constraint app_user_sessions_expiry_valid check (expires_at > created_at),
  constraint app_user_sessions_revoke_state_valid check (
    revoked_at is null
    or btrim(coalesce(revoke_reason, '')) <> ''
  )
);

create index if not exists app_user_sessions_active_lookup_idx
  on public.app_user_sessions (user_id, expires_at)
  where revoked_at is null;

create or replace function public.set_app_identity_updated_at()
returns trigger
language plpgsql
set search_path = public, pg_temp
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists app_roles_set_updated_at on public.app_roles;
create trigger app_roles_set_updated_at
before update on public.app_roles
for each row execute function public.set_app_identity_updated_at();

drop trigger if exists app_users_set_updated_at on public.app_users;
create trigger app_users_set_updated_at
before update on public.app_users
for each row execute function public.set_app_identity_updated_at();

drop trigger if exists app_user_school_memberships_set_updated_at on public.app_user_school_memberships;
create trigger app_user_school_memberships_set_updated_at
before update on public.app_user_school_memberships
for each row execute function public.set_app_identity_updated_at();

-- Preserve who performed financial actions after the application stops using
-- Supabase Auth identities. Existing auth.users columns remain nullable during
-- the transition so old records and the current frontend continue to work.
alter table public.student_fee_discounts
  add column if not exists approved_by_app_user_id uuid references public.app_users(id) on delete set null,
  add column if not exists created_by_app_user_id uuid references public.app_users(id) on delete set null;

alter table public.fee_receipts
  add column if not exists voided_by_app_user_id uuid references public.app_users(id) on delete set null,
  add column if not exists created_by_app_user_id uuid references public.app_users(id) on delete set null;

alter table public.legacy_fee_receipt_references
  add column if not exists created_by_app_user_id uuid references public.app_users(id) on delete set null;

alter table public.fee_events
  add column if not exists actor_app_user_id uuid references public.app_users(id) on delete set null;

create index if not exists student_fee_discounts_created_by_app_user_idx
  on public.student_fee_discounts (created_by_app_user_id)
  where created_by_app_user_id is not null;

create index if not exists fee_receipts_created_by_app_user_idx
  on public.fee_receipts (created_by_app_user_id)
  where created_by_app_user_id is not null;

create index if not exists fee_events_actor_app_user_idx
  on public.fee_events (actor_app_user_id, event_at desc)
  where actor_app_user_id is not null;

-- Identity data is intentionally unavailable through public browser roles.
alter table public.app_roles enable row level security;
alter table public.app_users enable row level security;
alter table public.app_user_school_memberships enable row level security;
alter table public.app_user_sessions enable row level security;

revoke all on public.app_roles from public, anon, authenticated;
revoke all on public.app_users from public, anon, authenticated;
revoke all on public.app_user_school_memberships from public, anon, authenticated;
revoke all on public.app_user_sessions from public, anon, authenticated;

grant select, insert, update, delete on public.app_roles to service_role;
grant select, insert, update, delete on public.app_users to service_role;
grant select, insert, update, delete on public.app_user_school_memberships to service_role;
grant select, insert, update, delete on public.app_user_sessions to service_role;

comment on table public.app_roles is 'Server-managed role catalog for RILEN application users.';
comment on table public.app_users is 'RILEN application identities. Passwords are stored only as Argon2id hashes.';
comment on column public.app_users.password_hash is 'Argon2id password hash generated and verified only by the backend.';
comment on table public.app_user_school_memberships is 'Associates a RILEN application user with a school and role.';
comment on table public.app_user_sessions is 'Server-managed login sessions containing only hashes of random session tokens.';
comment on column public.app_user_sessions.session_token_hash is 'Lowercase hexadecimal SHA-256 hash; never store the raw session token.';
comment on table public.school_user_memberships is 'Legacy Supabase Auth membership mapping retained temporarily during the app-auth migration.';

commit;
