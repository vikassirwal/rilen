-- Apply after student_directory_schema.sql and fee_management_schema.sql.
-- This migration adds narrow, RLS-aware read models for paginated app queries.

begin;

create or replace view public.student_directory
with (security_invoker = true)
as
select
  student.id,
  student.first_name,
  student.last_name,
  student.date_of_birth,
  registration.academic_year,
  registration.class_name,
  registration.section,
  registration.admission_number,
  registration.scholar_number,
  registration.is_rte_student,
  coalesce(registration.is_active, false) as is_active,
  address.city,
  (
    (student.date_of_birth is null)::integer
    + (address.city is null or btrim(address.city) = '')::integer
    + (not exists (
      select 1
      from public.student_guardians guardian
      where guardian.student_id = student.id
        and btrim(guardian.full_name) <> ''
        and guardian.mobile_primary is not null
        and btrim(guardian.mobile_primary) <> ''
    ))::integer
  ) as missing_count
from public.students student
left join lateral (
  select registration.*
  from public.student_academic_registrations registration
  where registration.student_id = student.id
  order by registration.is_active desc, registration.academic_year desc, registration.created_at desc, registration.id
  limit 1
) registration on true
left join lateral (
  select student_address.city
  from public.student_addresses student_address
  where student_address.student_id = student.id
  order by (student_address.address_type = 'home') desc, student_address.created_at, student_address.id
  limit 1
) address on true;

comment on view public.student_directory is
  'Minimal student summary used for filtered, paginated directory screens. Full personal data is loaded on demand.';

create or replace function public.get_student_directory_facets()
returns jsonb
language sql
stable
security invoker
set search_path = public
as $$
  select jsonb_build_object(
    'classes', coalesce((select jsonb_agg(value order by value) from (select distinct class_name as value from public.student_directory where class_name is not null and btrim(class_name) <> '') facet_values), '[]'::jsonb),
    'sections', coalesce((select jsonb_agg(value order by value) from (select distinct section as value from public.student_directory where section is not null and btrim(section) <> '') facet_values), '[]'::jsonb),
    'cities', coalesce((select jsonb_agg(value order by value) from (select distinct city as value from public.student_directory where city is not null and btrim(city) <> '') facet_values), '[]'::jsonb)
  );
$$;

create or replace function public.get_student_directory_metrics()
returns jsonb
language sql
stable
security invoker
set search_path = public
as $$
  select jsonb_build_object(
    'total', count(*),
    'active', count(*) filter (where is_active),
    'inactive', count(*) filter (where not is_active),
    'needs_completion', count(*) filter (where missing_count > 0),
    'class_count', count(distinct class_name) filter (where class_name is not null and btrim(class_name) <> ''),
    'city_count', count(distinct city) filter (where city is not null and btrim(city) <> ''),
    'rte_count', count(*) filter (where is_rte_student)
  )
  from public.student_directory;
$$;

alter view public.fee_student_balances set (security_invoker = true);
alter view public.fee_dashboard_stats set (security_invoker = true);
alter view public.fee_student_directory set (security_invoker = true);

create or replace view public.fee_student_directory_page
with (security_invoker = true)
as
select
  directory.*,
  lower(concat_ws(' ',
    directory.first_name,
    directory.last_name,
    directory.scholar_number,
    directory.admission_number,
    directory.class_name,
    directory.section,
    directory.last_receipt_number,
    array_to_string(directory.legacy_receipt_numbers, ' '),
    directory.last_payment_date::text
  )) as search_text
from public.fee_student_directory directory;

create or replace function public.get_fee_directory_facets()
returns jsonb
language sql
stable
security invoker
set search_path = public
as $$
  select jsonb_build_object(
    'classes', coalesce((select jsonb_agg(value order by value) from (select distinct class_name as value from public.fee_student_directory_page where class_name is not null and btrim(class_name) <> '') facet_values), '[]'::jsonb)
  );
$$;

create or replace function public.get_fee_dashboard_stats(
  target_query text default null,
  target_class text default null,
  target_status text default null,
  target_from date default null,
  target_to date default null
)
returns jsonb
language sql
stable
security invoker
set search_path = public
as $$
  select jsonb_build_object(
    'student_count', count(*) filter (where is_active),
    'total_fee', coalesce(sum(total_fee), 0),
    'received_fee', coalesce(sum(received_fee), 0),
    'pending_fee', coalesce(sum(pending_fee), 0),
    'students_with_pending_fee', count(*) filter (where is_active and pending_fee > 0)
  )
  from public.fee_student_directory_page
  where (target_query is null or search_text like '%' || lower(target_query) || '%')
    and (target_class is null or class_name = target_class)
    and (target_status is null or (target_status = 'pending' and pending_fee > 0) or (target_status = 'paid' and pending_fee <= 0))
    and (target_from is null or last_payment_date >= target_from)
    and (target_to is null or last_payment_date <= target_to);
$$;

create index if not exists student_registrations_current_lookup_idx
  on public.student_academic_registrations (student_id, is_active desc, academic_year desc, created_at desc);

create index if not exists student_registrations_filter_idx
  on public.student_academic_registrations (class_name, section, is_active, is_rte_student);

create index if not exists students_name_lookup_idx
  on public.students (lower(first_name), lower(coalesce(last_name, '')), id);

revoke all on public.student_directory from anon;
revoke all on public.fee_student_directory_page from anon;
revoke all on function public.get_student_directory_facets() from anon;
revoke all on function public.get_student_directory_metrics() from anon;
revoke all on function public.get_fee_directory_facets() from anon;
revoke all on function public.get_fee_dashboard_stats(text, text, text, date, date) from anon;

grant select on public.student_directory to authenticated;
grant select on public.fee_student_directory_page to authenticated;
grant execute on function public.get_student_directory_facets() to authenticated;
grant execute on function public.get_student_directory_metrics() to authenticated;
grant execute on function public.get_fee_directory_facets() to authenticated;
grant execute on function public.get_fee_dashboard_stats(text, text, text, date, date) to authenticated;

commit;
