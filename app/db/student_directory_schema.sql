-- RILEN student-directory schema.
-- Run this before supabase_student_directory_security.sql and
-- fee_management_schema.sql.
--
-- This migration contains structure only. Never add student records, import
-- values, credentials, or other confidential data to this file.

begin;

create extension if not exists pgcrypto;

create table if not exists public.students (
  id uuid primary key default gen_random_uuid(),
  first_name text not null,
  last_name text,
  date_of_birth date,
  aadhaar_number text,
  sssm_id text,
  family_id text,
  religion text,
  caste text,
  category text,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint students_first_name_not_blank check (btrim(first_name) <> ''),
  constraint students_aadhaar_not_blank check (aadhaar_number is null or btrim(aadhaar_number) <> ''),
  constraint students_sssm_id_not_blank check (sssm_id is null or btrim(sssm_id) <> ''),
  constraint students_family_id_not_blank check (family_id is null or btrim(family_id) <> '')
);

create unique index if not exists unique_students_aadhaar_number
  on public.students (aadhaar_number)
  where aadhaar_number is not null;

create table if not exists public.student_academic_registrations (
  id uuid primary key default gen_random_uuid(),
  student_id uuid not null references public.students(id) on delete cascade,
  academic_year text not null,
  class_name text not null,
  section text,
  admission_number text,
  scholar_number text,
  enrollment_number text,
  admission_date date,
  admission_class text,
  board_registration_number text,
  admission_mode text,
  last_school_name text,
  tc_status text,
  is_rte_student boolean not null default false,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint student_registrations_academic_year_not_blank check (btrim(academic_year) <> ''),
  constraint student_registrations_class_name_not_blank check (btrim(class_name) <> ''),
  constraint student_registrations_admission_number_not_blank check (
    admission_number is null or btrim(admission_number) <> ''
  ),
  constraint student_registrations_scholar_number_not_blank check (
    scholar_number is null or btrim(scholar_number) <> ''
  )
);

create unique index if not exists unique_scholar_number_per_year
  on public.student_academic_registrations (academic_year, scholar_number)
  where scholar_number is not null;

create index if not exists student_registrations_directory_idx
  on public.student_academic_registrations (academic_year, class_name, section, is_active);

create index if not exists student_registrations_student_idx
  on public.student_academic_registrations (student_id);

create table if not exists public.student_guardians (
  id uuid primary key default gen_random_uuid(),
  student_id uuid not null references public.students(id) on delete cascade,
  relationship text not null,
  full_name text not null,
  occupation text,
  mobile_primary text,
  mobile_secondary text,
  created_at timestamptz not null default now(),
  constraint student_guardians_relationship_valid check (relationship in ('father', 'mother', 'guardian')),
  constraint student_guardians_full_name_not_blank check (btrim(full_name) <> '')
);

create index if not exists student_guardians_student_idx
  on public.student_guardians (student_id);

create table if not exists public.student_addresses (
  id uuid primary key default gen_random_uuid(),
  student_id uuid not null references public.students(id) on delete cascade,
  address_line text not null,
  city text,
  state text,
  pincode text,
  address_type text not null default 'home',
  created_at timestamptz not null default now(),
  constraint student_addresses_line_not_blank check (btrim(address_line) <> ''),
  constraint student_addresses_type_not_blank check (btrim(address_type) <> '')
);

create index if not exists student_addresses_student_idx
  on public.student_addresses (student_id);

create index if not exists student_addresses_city_idx
  on public.student_addresses (city)
  where city is not null;

create table if not exists public.student_bank_accounts (
  id uuid primary key default gen_random_uuid(),
  student_id uuid not null references public.students(id) on delete cascade,
  bank_name text,
  account_number text,
  ifsc_code text,
  account_holder_name text,
  created_at timestamptz not null default now()
);

create index if not exists student_bank_accounts_student_idx
  on public.student_bank_accounts (student_id);

create or replace function public.set_student_record_updated_at()
returns trigger
language plpgsql
set search_path = public, pg_temp
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists students_set_updated_at on public.students;
create trigger students_set_updated_at
before update on public.students
for each row execute function public.set_student_record_updated_at();

drop trigger if exists student_registrations_set_updated_at on public.student_academic_registrations;
create trigger student_registrations_set_updated_at
before update on public.student_academic_registrations
for each row execute function public.set_student_record_updated_at();

comment on table public.students is 'Core student identity record. Academic enrollment is stored separately.';
comment on table public.student_academic_registrations is 'Student enrollment and class placement for one academic year.';
comment on column public.student_academic_registrations.is_rte_student is 'Whether the registration is under Right To Education.';

commit;
