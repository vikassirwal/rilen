-- RILEN fee-management schema.
-- Run in Supabase SQL Editor after the student tables already exist.
-- Design rules:
-- - Keep fee setup, charges, discounts, payments, and receipt allocations separate.
-- - Treat receipts as financial records: do not edit/delete; void or reverse instead.
-- - Let dashboard/list screens read from views instead of recalculating money in browser code.

begin;

create extension if not exists pgcrypto;

do $$
begin
  create type public.fee_frequency as enum ('ONE_TIME', 'MONTHLY', 'QUARTERLY', 'HALF_YEARLY', 'ANNUAL', 'CUSTOM');
exception
  when duplicate_object then null;
end $$;

do $$
begin
  create type public.fee_charge_status as enum ('PENDING', 'PARTIAL', 'PAID', 'WAIVED', 'VOID');
exception
  when duplicate_object then null;
end $$;

do $$
begin
  create type public.fee_receipt_status as enum ('POSTED', 'VOID');
exception
  when duplicate_object then null;
end $$;

do $$
begin
  create type public.fee_payment_method as enum ('CASH', 'UPI', 'CARD', 'BANK_TRANSFER', 'CHEQUE', 'ADJUSTMENT', 'OTHER');
exception
  when duplicate_object then null;
end $$;

create table if not exists public.fee_heads (
  id uuid primary key default gen_random_uuid(),
  code text not null unique,
  name text not null,
  description text,
  frequency public.fee_frequency not null default 'CUSTOM',
  display_order integer not null default 100,
  is_optional boolean not null default false,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint fee_heads_code_not_blank check (btrim(code) <> ''),
  constraint fee_heads_name_not_blank check (btrim(name) <> '')
);

create table if not exists public.fee_plans (
  id uuid primary key default gen_random_uuid(),
  academic_year text not null,
  class_name text not null,
  section text,
  name text not null,
  effective_from date,
  effective_to date,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint fee_plans_dates_valid check (effective_to is null or effective_from is null or effective_to >= effective_from)
);

create table if not exists public.fee_plan_items (
  id uuid primary key default gen_random_uuid(),
  fee_plan_id uuid not null references public.fee_plans(id) on delete cascade,
  fee_head_id uuid not null references public.fee_heads(id),
  amount numeric(12,2) not null,
  due_date date,
  installment_label text,
  display_order integer not null default 100,
  created_at timestamptz not null default now(),
  constraint fee_plan_items_amount_non_negative check (amount >= 0)
);

create table if not exists public.student_fee_accounts (
  id uuid primary key default gen_random_uuid(),
  student_id uuid not null references public.students(id) on delete cascade,
  academic_registration_id uuid references public.student_academic_registrations(id) on delete set null,
  academic_year text not null,
  class_name text not null,
  section text,
  fee_plan_id uuid references public.fee_plans(id) on delete set null,
  opening_balance numeric(12,2) not null default 0,
  is_active boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint student_fee_accounts_opening_balance_valid check (opening_balance >= 0),
  constraint student_fee_accounts_one_per_year unique (student_id, academic_year)
);

create table if not exists public.student_fee_charges (
  id uuid primary key default gen_random_uuid(),
  student_fee_account_id uuid not null references public.student_fee_accounts(id) on delete cascade,
  fee_head_id uuid not null references public.fee_heads(id),
  source_fee_plan_item_id uuid references public.fee_plan_items(id) on delete set null,
  charge_date date not null default current_date,
  due_date date,
  description text,
  original_amount numeric(12,2) not null,
  adjusted_amount numeric(12,2) not null,
  paid_amount numeric(12,2) not null default 0,
  status public.fee_charge_status not null default 'PENDING',
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now(),
  constraint student_fee_charges_amounts_valid check (
    original_amount >= 0
    and adjusted_amount >= 0
    and paid_amount >= 0
    and paid_amount <= adjusted_amount
  )
);

create table if not exists public.student_fee_discounts (
  id uuid primary key default gen_random_uuid(),
  student_fee_charge_id uuid not null references public.student_fee_charges(id) on delete restrict,
  amount numeric(12,2) not null,
  reason text not null,
  approved_by uuid references auth.users(id) on delete set null,
  approved_at timestamptz,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  voided_at timestamptz,
  void_reason text,
  constraint student_fee_discounts_amount_positive check (amount > 0),
  constraint student_fee_discounts_reason_not_blank check (btrim(reason) <> '')
);

create table if not exists public.fee_receipt_sequences (
  academic_year text primary key,
  next_number integer not null default 1,
  prefix text not null default 'RILEN',
  updated_at timestamptz not null default now(),
  constraint fee_receipt_sequences_next_positive check (next_number > 0)
);

create table if not exists public.fee_receipts (
  id uuid primary key default gen_random_uuid(),
  receipt_number text not null unique,
  student_fee_account_id uuid not null references public.student_fee_accounts(id) on delete restrict,
  student_id uuid not null references public.students(id) on delete restrict,
  academic_year text not null,
  receipt_date date not null default current_date,
  payment_method public.fee_payment_method not null,
  payment_reference text,
  collected_amount numeric(12,2) not null,
  discount_amount numeric(12,2) not null default 0,
  notes text,
  status public.fee_receipt_status not null default 'POSTED',
  voided_at timestamptz,
  voided_by uuid references auth.users(id) on delete set null,
  void_reason text,
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  constraint fee_receipts_amounts_valid check (collected_amount > 0 and discount_amount >= 0),
  constraint fee_receipts_void_reason_required check (
    status = 'POSTED'
    or (voided_at is not null and btrim(coalesce(void_reason, '')) <> '')
  )
);

create table if not exists public.fee_receipt_allocations (
  id uuid primary key default gen_random_uuid(),
  receipt_id uuid not null references public.fee_receipts(id) on delete restrict,
  student_fee_charge_id uuid not null references public.student_fee_charges(id) on delete restrict,
  amount numeric(12,2) not null,
  created_at timestamptz not null default now(),
  constraint fee_receipt_allocations_amount_positive check (amount > 0),
  constraint fee_receipt_allocations_unique unique (receipt_id, student_fee_charge_id)
);

create table if not exists public.legacy_fee_receipt_references (
  id uuid primary key default gen_random_uuid(),
  school_id uuid not null references public.schools(id) on delete restrict,
  fee_receipt_id uuid not null unique references public.fee_receipts(id) on delete restrict,
  external_receipt_number text not null,
  source_system text not null default 'legacy_import',
  imported_at timestamptz not null default now(),
  created_by uuid references auth.users(id) on delete set null,
  created_at timestamptz not null default now(),
  constraint legacy_receipts_number_not_blank check (btrim(external_receipt_number) <> ''),
  constraint legacy_receipts_source_not_blank check (btrim(source_system) <> ''),
  constraint legacy_receipts_school_number_unique unique (school_id, external_receipt_number)
);

-- The school is stored on the mapping to support an enforceable scoped unique
-- key. This trigger prevents a mapping from being attached across tenants.
create or replace function public.validate_legacy_fee_receipt_school()
returns trigger
language plpgsql
security definer
set search_path = public, pg_temp
as $$
declare
  receipt_school_id uuid;
begin
  select student.school_id
  into receipt_school_id
  from public.fee_receipts receipt
  join public.students student on student.id = receipt.student_id
  where receipt.id = new.fee_receipt_id;

  if receipt_school_id is null or receipt_school_id <> new.school_id then
    raise exception 'Legacy receipt school does not match the RILEN receipt school';
  end if;

  return new;
end;
$$;

do $$
begin
  if not exists (
    select 1
    from pg_trigger
    where tgrelid = 'public.legacy_fee_receipt_references'::regclass
      and tgname = 'validate_legacy_fee_receipt_school'
      and not tgisinternal
  ) then
    execute 'create trigger validate_legacy_fee_receipt_school
      before insert or update on public.legacy_fee_receipt_references
      for each row execute function public.validate_legacy_fee_receipt_school()';
  end if;
end $$;

create table if not exists public.fee_events (
  id uuid primary key default gen_random_uuid(),
  student_fee_account_id uuid references public.student_fee_accounts(id) on delete set null,
  student_id uuid references public.students(id) on delete set null,
  event_type text not null,
  event_at timestamptz not null default now(),
  actor_user_id uuid references auth.users(id) on delete set null,
  reference_table text,
  reference_id uuid,
  metadata jsonb not null default '{}'::jsonb,
  constraint fee_events_type_not_blank check (btrim(event_type) <> '')
);

create index if not exists fee_plans_class_lookup_idx
on public.fee_plans (academic_year, class_name, section)
where is_active;

create unique index if not exists fee_plans_year_class_name_unique_idx
on public.fee_plans (academic_year, class_name, coalesce(section, ''), name);

create unique index if not exists fee_plan_items_unique_idx
on public.fee_plan_items (
  fee_plan_id,
  fee_head_id,
  coalesce(due_date, '0001-01-01'::date),
  coalesce(installment_label, '')
);

create index if not exists student_fee_accounts_dashboard_idx
on public.student_fee_accounts (academic_year, class_name, section, is_active);

create index if not exists student_fee_charges_account_due_idx
on public.student_fee_charges (student_fee_account_id, due_date, status);

create index if not exists fee_receipts_student_date_idx
on public.fee_receipts (student_id, receipt_date desc)
where status = 'POSTED';

create index if not exists fee_receipts_number_search_idx
on public.fee_receipts (receipt_number);

create index if not exists legacy_fee_receipts_number_search_idx
on public.legacy_fee_receipt_references (external_receipt_number);

create or replace view public.fee_student_balances as
with charge_totals as (
  select
    student_fee_account_id,
    coalesce(sum(adjusted_amount), 0) as adjusted_amount,
    coalesce(sum(paid_amount), 0) as paid_amount,
    min(due_date) filter (where status in ('PENDING', 'PARTIAL')) as next_due_date
  from public.student_fee_charges
  where status <> 'VOID'
  group by student_fee_account_id
),
receipt_totals as (
  select
    student_fee_account_id,
    max(receipt_date) as last_payment_date
  from public.fee_receipts
  where status = 'POSTED'
  group by student_fee_account_id
)
select
  sfa.id as student_fee_account_id,
  sfa.student_id,
  sfa.academic_registration_id,
  sfa.academic_year,
  sfa.class_name,
  sfa.section,
  sfa.is_active,
  coalesce(ct.adjusted_amount, 0) + sfa.opening_balance as total_fee,
  coalesce(ct.paid_amount, 0) as received_fee,
  greatest(coalesce(ct.adjusted_amount - ct.paid_amount, 0) + sfa.opening_balance, 0) as pending_fee,
  ct.next_due_date,
  rt.last_payment_date,
  (
    select fr2.receipt_number
    from public.fee_receipts fr2
    where fr2.student_fee_account_id = sfa.id
      and fr2.status = 'POSTED'
    order by fr2.receipt_date desc, fr2.created_at desc
    limit 1
  ) as last_receipt_number
from public.student_fee_accounts sfa
left join charge_totals ct on ct.student_fee_account_id = sfa.id
left join receipt_totals rt on rt.student_fee_account_id = sfa.id;

create or replace view public.fee_dashboard_stats as
select
  academic_year,
  class_name,
  section,
  count(*) filter (where is_active) as student_count,
  sum(total_fee) as total_fee,
  sum(received_fee) as received_fee,
  sum(pending_fee) as pending_fee,
  count(*) filter (where pending_fee > 0 and is_active) as students_with_pending_fee
from public.fee_student_balances
group by academic_year, class_name, section;

create or replace view public.fee_student_directory as
select
  fsb.student_fee_account_id,
  fsb.student_id,
  s.first_name,
  s.last_name,
  sar.scholar_number,
  sar.admission_number,
  fsb.academic_year,
  fsb.class_name,
  fsb.section,
  fsb.total_fee,
  fsb.received_fee,
  fsb.pending_fee,
  fsb.last_receipt_number,
  coalesce((
    select array_agg(distinct legacy.external_receipt_number order by legacy.external_receipt_number)
    from public.fee_receipts receipt
    join public.legacy_fee_receipt_references legacy on legacy.fee_receipt_id = receipt.id
    where receipt.student_fee_account_id = fsb.student_fee_account_id
  ), array[]::text[]) as legacy_receipt_numbers,
  fsb.last_payment_date,
  fsb.next_due_date,
  fsb.is_active
from public.fee_student_balances fsb
join public.students s on s.id = fsb.student_id
left join public.student_academic_registrations sar on sar.id = fsb.academic_registration_id;

create or replace function public.next_fee_receipt_number(target_academic_year text)
returns text
language plpgsql
security definer
set search_path = public
as $$
declare
  sequence_row public.fee_receipt_sequences%rowtype;
  receipt text;
begin
  insert into public.fee_receipt_sequences (academic_year, next_number, prefix)
  values (target_academic_year, 1, 'RILEN')
  on conflict (academic_year) do nothing;

  select *
  into sequence_row
  from public.fee_receipt_sequences
  where academic_year = target_academic_year
  for update;

  receipt := sequence_row.prefix || '-' || replace(target_academic_year, '-', '') || '-' || lpad(sequence_row.next_number::text, 5, '0');

  update public.fee_receipt_sequences
  set next_number = next_number + 1,
      updated_at = now()
  where academic_year = target_academic_year;

  return receipt;
end;
$$;

create or replace function public.refresh_fee_charge_status(target_charge_id uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  paid numeric(12,2);
  adjusted numeric(12,2);
begin
  select
    coalesce(sum(fra.amount), 0),
    sfc.adjusted_amount
  into paid, adjusted
  from public.student_fee_charges sfc
  left join public.fee_receipt_allocations fra on fra.student_fee_charge_id = sfc.id
  left join public.fee_receipts fr on fr.id = fra.receipt_id and fr.status = 'POSTED'
  where sfc.id = target_charge_id
  group by sfc.adjusted_amount;

  update public.student_fee_charges
  set paid_amount = coalesce(paid, 0),
      status = case
        when adjusted = 0 then 'WAIVED'::public.fee_charge_status
        when coalesce(paid, 0) <= 0 then 'PENDING'::public.fee_charge_status
        when coalesce(paid, 0) < adjusted then 'PARTIAL'::public.fee_charge_status
        else 'PAID'::public.fee_charge_status
      end,
      updated_at = now()
  where id = target_charge_id;
end;
$$;

create or replace function public.apply_fee_discount_to_charge()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  update public.student_fee_charges
  set adjusted_amount = greatest(original_amount - (
        select coalesce(sum(amount), 0)
        from public.student_fee_discounts
        where student_fee_charge_id = new.student_fee_charge_id
          and voided_at is null
      ), 0),
      updated_at = now()
  where id = new.student_fee_charge_id;

  perform public.refresh_fee_charge_status(new.student_fee_charge_id);
  return new;
end;
$$;

drop trigger if exists on_fee_discount_changed on public.student_fee_discounts;
create trigger on_fee_discount_changed
after insert or update on public.student_fee_discounts
for each row execute function public.apply_fee_discount_to_charge();

create or replace function public.refresh_fee_allocation_charge_status()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
begin
  if tg_op = 'DELETE' then
    perform public.refresh_fee_charge_status(old.student_fee_charge_id);
    return old;
  end if;

  perform public.refresh_fee_charge_status(new.student_fee_charge_id);
  return new;
end;
$$;

drop trigger if exists on_fee_receipt_allocation_changed on public.fee_receipt_allocations;
create trigger on_fee_receipt_allocation_changed
after insert or update or delete on public.fee_receipt_allocations
for each row execute function public.refresh_fee_allocation_charge_status();

create or replace function public.refresh_fee_receipt_status_allocations()
returns trigger
language plpgsql
security definer
set search_path = public
as $$
declare
  charge_id uuid;
begin
  if old.status is distinct from new.status then
    for charge_id in
      select student_fee_charge_id
      from public.fee_receipt_allocations
      where receipt_id = new.id
    loop
      perform public.refresh_fee_charge_status(charge_id);
    end loop;
  end if;

  return new;
end;
$$;

drop trigger if exists on_fee_receipt_status_changed on public.fee_receipts;
create trigger on_fee_receipt_status_changed
after update of status on public.fee_receipts
for each row execute function public.refresh_fee_receipt_status_allocations();

alter table public.fee_heads enable row level security;
alter table public.fee_plans enable row level security;
alter table public.fee_plan_items enable row level security;
alter table public.student_fee_accounts enable row level security;
alter table public.student_fee_charges enable row level security;
alter table public.student_fee_discounts enable row level security;
alter table public.fee_receipt_sequences enable row level security;
alter table public.fee_receipts enable row level security;
alter table public.fee_receipt_allocations enable row level security;
alter table public.fee_events enable row level security;
alter table public.legacy_fee_receipt_references enable row level security;

grant usage on schema public to authenticated;
grant select on public.fee_heads to authenticated;
grant select on public.fee_plans to authenticated;
grant select on public.fee_plan_items to authenticated;
grant select on public.student_fee_accounts to authenticated;
grant select on public.student_fee_charges to authenticated;
grant select on public.student_fee_discounts to authenticated;
grant select on public.fee_receipts to authenticated;
grant select on public.fee_receipt_allocations to authenticated;
grant select on public.fee_events to authenticated;
grant select on public.legacy_fee_receipt_references to authenticated;
grant select on public.fee_student_balances to authenticated;
grant select on public.fee_dashboard_stats to authenticated;
grant select on public.fee_student_directory to authenticated;

grant insert, update on public.fee_heads to authenticated;
grant insert, update on public.fee_plans to authenticated;
grant insert, update on public.fee_plan_items to authenticated;
grant insert, update on public.student_fee_accounts to authenticated;
grant insert, update on public.student_fee_charges to authenticated;
grant insert, update on public.student_fee_discounts to authenticated;
grant insert on public.fee_receipts to authenticated;
grant update (status, voided_at, voided_by, void_reason) on public.fee_receipts to authenticated;
grant insert on public.fee_receipt_allocations to authenticated;
grant insert on public.fee_events to authenticated;
grant insert on public.legacy_fee_receipt_references to authenticated;
grant execute on function public.next_fee_receipt_number(text) to authenticated;
grant execute on function public.refresh_fee_charge_status(uuid) to authenticated;

do $$
declare
  object_name text;
begin
  foreach object_name in array array[
    'fee_heads',
    'fee_plans',
    'fee_plan_items',
    'student_fee_accounts',
    'student_fee_charges',
    'student_fee_discounts',
    'fee_receipt_sequences',
    'fee_receipts',
    'fee_receipt_allocations',
    'fee_events'
  ]
  loop
    execute format('drop policy if exists "Authenticated users can read %s" on public.%I', object_name, object_name);
    execute format('create policy "Authenticated users can read %s" on public.%I for select to authenticated using (true)', object_name, object_name);
  end loop;
end $$;

drop policy if exists "Authenticated users can write fee setup" on public.fee_heads;
create policy "Authenticated users can write fee setup"
on public.fee_heads for all to authenticated
using (true) with check (true);

drop policy if exists "Authenticated users can write fee plans" on public.fee_plans;
create policy "Authenticated users can write fee plans"
on public.fee_plans for all to authenticated
using (true) with check (true);

drop policy if exists "Authenticated users can write fee plan items" on public.fee_plan_items;
create policy "Authenticated users can write fee plan items"
on public.fee_plan_items for all to authenticated
using (true) with check (true);

drop policy if exists "Authenticated users can write student fee accounts" on public.student_fee_accounts;
create policy "Authenticated users can write student fee accounts"
on public.student_fee_accounts for all to authenticated
using (true) with check (true);

drop policy if exists "Authenticated users can write student fee charges" on public.student_fee_charges;
create policy "Authenticated users can write student fee charges"
on public.student_fee_charges for all to authenticated
using (true) with check (true);

drop policy if exists "Authenticated users can write student fee discounts" on public.student_fee_discounts;
create policy "Authenticated users can write student fee discounts"
on public.student_fee_discounts for all to authenticated
using (true) with check (true);

drop policy if exists "Authenticated users can create receipts" on public.fee_receipts;
create policy "Authenticated users can create receipts"
on public.fee_receipts for insert to authenticated
with check (status = 'POSTED');

drop policy if exists "Authenticated users can void receipts" on public.fee_receipts;
create policy "Authenticated users can void receipts"
on public.fee_receipts for update to authenticated
using (true)
with check (status in ('POSTED', 'VOID'));

drop policy if exists "Authenticated users can create receipt allocations" on public.fee_receipt_allocations;
create policy "Authenticated users can create receipt allocations"
on public.fee_receipt_allocations for insert to authenticated
with check (true);

drop policy if exists "Authenticated users can create fee events" on public.fee_events;
create policy "Authenticated users can create fee events"
on public.fee_events for insert to authenticated
with check (true);

drop policy if exists "School members can read legacy receipt references" on public.legacy_fee_receipt_references;
create policy "School members can read legacy receipt references"
on public.legacy_fee_receipt_references for select to authenticated
using (public.is_school_member(school_id));

drop policy if exists "School members can create legacy receipt references" on public.legacy_fee_receipt_references;
create policy "School members can create legacy receipt references"
on public.legacy_fee_receipt_references for insert to authenticated
with check (public.is_school_member(school_id));

commit;
