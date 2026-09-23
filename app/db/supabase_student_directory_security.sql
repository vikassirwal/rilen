-- RILEN student directory read access.
-- Run this after student_directory_schema.sql. Data may be loaded afterward.
-- Do not use a Supabase secret/service-role key in browser code.

select 'students_before_policy' as check_name, count(*) as visible_in_sql_editor from public.students;
select 'registrations_before_policy' as check_name, count(*) as visible_in_sql_editor from public.student_academic_registrations;

alter table public.students enable row level security;
alter table public.student_academic_registrations enable row level security;
alter table public.student_guardians enable row level security;
alter table public.student_addresses enable row level security;
alter table public.student_bank_accounts enable row level security;

revoke all on public.students from anon;
revoke all on public.student_academic_registrations from anon;
revoke all on public.student_guardians from anon;
revoke all on public.student_addresses from anon;
revoke all on public.student_bank_accounts from anon;

grant usage on schema public to authenticated;
grant select on public.students to authenticated;
grant select on public.student_academic_registrations to authenticated;
grant select on public.student_guardians to authenticated;
grant select on public.student_addresses to authenticated;
grant select on public.student_bank_accounts to authenticated;
grant update on public.students to authenticated;
grant update on public.student_academic_registrations to authenticated;
grant update on public.student_guardians to authenticated;
grant update on public.student_addresses to authenticated;
grant update on public.student_bank_accounts to authenticated;
grant insert on public.student_guardians to authenticated;
grant insert on public.student_addresses to authenticated;
grant insert on public.student_bank_accounts to authenticated;

drop policy if exists "Authenticated users can read students" on public.students;
create policy "Authenticated users can read students"
on public.students
for select
to authenticated
using (true);

drop policy if exists "Authenticated users can read academic registrations" on public.student_academic_registrations;
create policy "Authenticated users can read academic registrations"
on public.student_academic_registrations
for select
to authenticated
using (true);

drop policy if exists "Authenticated users can read guardians" on public.student_guardians;
create policy "Authenticated users can read guardians"
on public.student_guardians
for select
to authenticated
using (true);

drop policy if exists "Authenticated users can read addresses" on public.student_addresses;
create policy "Authenticated users can read addresses"
on public.student_addresses
for select
to authenticated
using (true);

drop policy if exists "Authenticated users can read bank accounts" on public.student_bank_accounts;
create policy "Authenticated users can read bank accounts"
on public.student_bank_accounts
for select
to authenticated
using (true);

drop policy if exists "Authenticated users can update students" on public.students;
create policy "Authenticated users can update students"
on public.students
for update
to authenticated
using (true)
with check (true);

drop policy if exists "Authenticated users can update academic registrations" on public.student_academic_registrations;
create policy "Authenticated users can update academic registrations"
on public.student_academic_registrations
for update
to authenticated
using (true)
with check (true);

drop policy if exists "Authenticated users can update guardians" on public.student_guardians;
create policy "Authenticated users can update guardians"
on public.student_guardians
for update
to authenticated
using (true)
with check (true);

drop policy if exists "Authenticated users can insert guardians" on public.student_guardians;
create policy "Authenticated users can insert guardians"
on public.student_guardians
for insert
to authenticated
with check (true);

drop policy if exists "Authenticated users can update addresses" on public.student_addresses;
create policy "Authenticated users can update addresses"
on public.student_addresses
for update
to authenticated
using (true)
with check (true);

drop policy if exists "Authenticated users can insert addresses" on public.student_addresses;
create policy "Authenticated users can insert addresses"
on public.student_addresses
for insert
to authenticated
with check (true);

drop policy if exists "Authenticated users can update bank accounts" on public.student_bank_accounts;
create policy "Authenticated users can update bank accounts"
on public.student_bank_accounts
for update
to authenticated
using (true)
with check (true);

drop policy if exists "Authenticated users can insert bank accounts" on public.student_bank_accounts;
create policy "Authenticated users can insert bank accounts"
on public.student_bank_accounts
for insert
to authenticated
with check (true);

select schemaname, tablename, policyname, roles, cmd, qual
from pg_policies
where schemaname = 'public'
  and tablename in (
    'students',
    'student_academic_registrations',
    'student_guardians',
    'student_addresses',
    'student_bank_accounts'
  )
order by tablename, policyname;
