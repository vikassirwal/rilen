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
alter table public.schools enable row level security;
alter table public.school_user_memberships enable row level security;

revoke all on public.students from anon;
revoke all on public.student_academic_registrations from anon;
revoke all on public.student_guardians from anon;
revoke all on public.student_addresses from anon;
revoke all on public.student_bank_accounts from anon;
revoke all on public.schools from anon;
revoke all on public.school_user_memberships from anon;

grant usage on schema public to authenticated;
grant select on public.students to authenticated;
grant select on public.student_academic_registrations to authenticated;
grant select on public.student_guardians to authenticated;
grant select on public.student_addresses to authenticated;
grant select on public.student_bank_accounts to authenticated;
grant select on public.schools to authenticated;
grant select on public.school_user_memberships to authenticated;
grant update on public.students to authenticated;
grant update on public.student_academic_registrations to authenticated;
grant update on public.student_guardians to authenticated;
grant update on public.student_addresses to authenticated;
grant update on public.student_bank_accounts to authenticated;
grant insert on public.student_guardians to authenticated;
grant insert on public.student_addresses to authenticated;
grant insert on public.student_bank_accounts to authenticated;

-- Membership is derived from auth.uid(); callers cannot choose a tenant scope.
create or replace function public.is_school_member(target_school_id uuid)
returns boolean
language sql
stable
security definer
set search_path = public, pg_temp
as $$
  select exists (
    select 1
    from public.school_user_memberships membership
    where membership.school_id = target_school_id
      and membership.user_id = auth.uid()
      and membership.is_active
  );
$$;

revoke all on function public.is_school_member(uuid) from public;
grant execute on function public.is_school_member(uuid) to authenticated;

drop policy if exists "Members can read their schools" on public.schools;
create policy "Members can read their schools"
on public.schools for select to authenticated
using (public.is_school_member(id));

drop policy if exists "Users can read their memberships" on public.school_user_memberships;
create policy "Users can read their memberships"
on public.school_user_memberships for select to authenticated
using (user_id = auth.uid() and is_active);

drop policy if exists "Authenticated users can read students" on public.students;
create policy "Authenticated users can read students"
on public.students
for select
to authenticated
using (public.is_school_member(school_id));

drop policy if exists "Authenticated users can read academic registrations" on public.student_academic_registrations;
create policy "Authenticated users can read academic registrations"
on public.student_academic_registrations
for select
to authenticated
using (
  public.is_school_member(school_id)
);

drop policy if exists "Authenticated users can read guardians" on public.student_guardians;
create policy "Authenticated users can read guardians"
on public.student_guardians
for select
to authenticated
using (
  exists (
    select 1 from public.students student
    where student.id = student_guardians.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can read addresses" on public.student_addresses;
create policy "Authenticated users can read addresses"
on public.student_addresses
for select
to authenticated
using (
  exists (
    select 1 from public.students student
    where student.id = student_addresses.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can read bank accounts" on public.student_bank_accounts;
create policy "Authenticated users can read bank accounts"
on public.student_bank_accounts
for select
to authenticated
using (
  exists (
    select 1 from public.students student
    where student.id = student_bank_accounts.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can update students" on public.students;
create policy "Authenticated users can update students"
on public.students
for update
to authenticated
using (public.is_school_member(school_id))
with check (public.is_school_member(school_id));

drop policy if exists "Authenticated users can update academic registrations" on public.student_academic_registrations;
create policy "Authenticated users can update academic registrations"
on public.student_academic_registrations
for update
to authenticated
using (
  public.is_school_member(school_id)
)
with check (
  public.is_school_member(school_id)
);

drop policy if exists "Authenticated users can update guardians" on public.student_guardians;
create policy "Authenticated users can update guardians"
on public.student_guardians
for update
to authenticated
using (
  exists (
    select 1 from public.students student
    where student.id = student_guardians.student_id
      and public.is_school_member(student.school_id)
  )
)
with check (
  exists (
    select 1 from public.students student
    where student.id = student_guardians.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can insert guardians" on public.student_guardians;
create policy "Authenticated users can insert guardians"
on public.student_guardians
for insert
to authenticated
with check (
  exists (
    select 1 from public.students student
    where student.id = student_guardians.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can update addresses" on public.student_addresses;
create policy "Authenticated users can update addresses"
on public.student_addresses
for update
to authenticated
using (
  exists (
    select 1 from public.students student
    where student.id = student_addresses.student_id
      and public.is_school_member(student.school_id)
  )
)
with check (
  exists (
    select 1 from public.students student
    where student.id = student_addresses.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can insert addresses" on public.student_addresses;
create policy "Authenticated users can insert addresses"
on public.student_addresses
for insert
to authenticated
with check (
  exists (
    select 1 from public.students student
    where student.id = student_addresses.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can update bank accounts" on public.student_bank_accounts;
create policy "Authenticated users can update bank accounts"
on public.student_bank_accounts
for update
to authenticated
using (
  exists (
    select 1 from public.students student
    where student.id = student_bank_accounts.student_id
      and public.is_school_member(student.school_id)
  )
)
with check (
  exists (
    select 1 from public.students student
    where student.id = student_bank_accounts.student_id
      and public.is_school_member(student.school_id)
  )
);

drop policy if exists "Authenticated users can insert bank accounts" on public.student_bank_accounts;
create policy "Authenticated users can insert bank accounts"
on public.student_bank_accounts
for insert
to authenticated
with check (
  exists (
    select 1 from public.students student
    where student.id = student_bank_accounts.student_id
      and public.is_school_member(student.school_id)
  )
);

select schemaname, tablename, policyname, roles, cmd, qual
from pg_policies
where schemaname = 'public'
  and tablename in (
    'students',
    'student_academic_registrations',
    'student_guardians',
    'student_addresses',
    'student_bank_accounts',
    'schools',
    'school_user_memberships'
  )
order by tablename, policyname;
