-- RILEN student import for nursery through UKG
-- Source workbook: nur-ukg.xlsx
-- Generated records: 116
-- Rules: RTE section => is_rte_student true; LEFT section => is_active false and tc_status LEFT; typo-like dates normalized when unambiguous.

begin;

-- NUR row 3 [enrolled]: AANVI KURAWARE
insert into public.students (
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
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  'AANVI',
  'KURAWARE',
  '2022-06-05'::date,
  'A-504916181673',
  '316642656',
  '40117331',
  'HINDU',
  'DHOBI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-23-N',
  null,
  null,
  '2026-04-06'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  'father',
  'DEEPAK',
  'BUSINESS',
  '9111821101',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  'mother',
  'RIYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  'GANGA VIHAR -128',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  'UNION BANK OF INDIA',
  '274212010007612',
  'UBIN0827428',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'e0ce56de-aa74-443a-b1e0-4aecdebbdd60'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "AANVI", "SURNAME": "KURAWARE", "FATHER": "DEEPAK", "MOTHER": "RIYA", "DOB": "2022-06-05 00:00:00", "ADM NO.": "26-23-N", "SCH.": null, "ADHAR CARD": "A-504916181673", "SSSMID": 316642656, "FAMILY ID": 40117331, "BANK NAME": "UNION BANK OF INDIA", "BANK AC. NO.": 274212010007612, "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "DHOBI", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2026-04-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9111821101, "MOB. NO. 2": 9131146512, "ADDRESS": "GANGA VIHAR -128", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 4 [enrolled]: VIKRANT
insert into public.students (
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
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  'VIKRANT',
  null,
  '2023-04-21'::date,
  'A-483100722303',
  '323571576',
  '51023951',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-25-N',
  null,
  null,
  '2026-05-12'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  'father',
  'PREM SINGH',
  'MAJDURI',
  '9399035843',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  'mother',
  'MAMTA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  'RADHAGANJ',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  'BANK OF INDIA',
  '891118210017561',
  'BKID00008911',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '1dc3abe1-0112-4222-92cb-91054b2e397c'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "VIKRANT", "SURNAME": null, "FATHER": "PREM SINGH", "MOTHER": "MAMTA", "DOB": "2023-04-21 00:00:00", "ADM NO.": "26-25-N", "SCH.": null, "ADHAR CARD": "A-483100722303", "SSSMID": 323571576, "FAMILY ID": 51023951, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 891118210017561, "IFSC CODE": "BKID00008911", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "MAJDURI", "ADMN.DATE": "2026-05-12 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9399035843, "MOB. NO. 2": 9301901865, "ADDRESS": "RADHAGANJ", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 5 [enrolled]: HIMANSHU DHAKAD
insert into public.students (
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
  '5b08da79-c2c2-4235-aa32-b0bb3bf31b8c'::uuid,
  'HIMANSHU',
  'DHAKAD',
  '2022-09-21'::date,
  'A-276047105175',
  null,
  null,
  'HINDU',
  'DHAKAD',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '5b08da79-c2c2-4235-aa32-b0bb3bf31b8c'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-28-N',
  null,
  null,
  '2026-06-02'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5b08da79-c2c2-4235-aa32-b0bb3bf31b8c'::uuid,
  'father',
  'SACHIN',
  null,
  '8435273379',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5b08da79-c2c2-4235-aa32-b0bb3bf31b8c'::uuid,
  'mother',
  'JYOTI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '5b08da79-c2c2-4235-aa32-b0bb3bf31b8c'::uuid,
  'DRIM COLONY-58',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5b08da79-c2c2-4235-aa32-b0bb3bf31b8c'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "HIMANSHU", "SURNAME": "DHAKAD", "FATHER": "SACHIN", "MOTHER": "JYOTI", "DOB": "2022-09-21 00:00:00", "ADM NO.": "26-28-N", "SCH.": null, "ADHAR CARD": "A-276047105175", "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "2026-06-02 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8435273379, "MOB. NO. 2": 9201730430, "ADDRESS": "DRIM COLONY-58", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 6 [enrolled]: YOGESHWARI SONI
insert into public.students (
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
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  'YOGESHWARI',
  'SONI',
  '2023-02-15'::date,
  'A-853696564768',
  '322435717',
  '45196434',
  'HINDU',
  'SONI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-20-N',
  null,
  null,
  '2026-03-28'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  'father',
  'GOVINDKRISHNA',
  null,
  '9074782846',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  'mother',
  'PRIYANKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  'RAM RAHIM NAGAR-32',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  'STATE BANK OF INDIA',
  '53010747026',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '9c41aa14-1488-4beb-893e-5c7d90f7038b'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "YOGESHWARI", "SURNAME": "SONI", "FATHER": "GOVINDKRISHNA", "MOTHER": "PRIYANKA", "DOB": "2023-02-15 00:00:00", "ADM NO.": "26-20-N", "SCH.": null, "ADHAR CARD": "A-853696564768", "SSSMID": 322435717, "FAMILY ID": 45196434, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": 53010747026, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "SONI", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "2026-03-28 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9074782846, "MOB. NO. 2": null, "ADDRESS": "RAM RAHIM NAGAR-32", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 7 [enrolled]: VIDHAYAK CHAUHAN
insert into public.students (
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
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  'VIDHAYAK',
  'CHAUHAN',
  '2023-02-12'::date,
  'A-546543283445',
  null,
  null,
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-35-N',
  null,
  null,
  '2026-06-30'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  'father',
  'SATISH',
  'MARKETING',
  '9977707442',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  'ARJUN NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  'POST OOFICE',
  'P-027810135885',
  'IPOS0000001',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '51d2ce71-e18d-4c8d-9f15-857f3391f265'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "VIDHAYAK", "SURNAME": "CHAUHAN", "FATHER": "SATISH", "MOTHER": "POOJA", "DOB": "2023-02-12 00:00:00", "ADM NO.": "26-35-N", "SCH.": null, "ADHAR CARD": "A-546543283445", "SSSMID": null, "FAMILY ID": null, "BANK NAME": "POST OOFICE", "BANK AC. NO.": "P-027810135885", "IFSC CODE": "IPOS0000001", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "MARKETING", "ADMN.DATE": "2026-06-30 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9977707442, "MOB. NO. 2": 8827826521, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 8 [enrolled]: AADITI SHARMA
insert into public.students (
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
  'c6272372-4c1a-4fcc-92ff-4a9bd0941b83'::uuid,
  'AADITI',
  'SHARMA',
  '2023-01-27'::date,
  'A-718465510206',
  '324322606',
  '37922749',
  'HINDU',
  'BRAHMAN',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  'c6272372-4c1a-4fcc-92ff-4a9bd0941b83'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-36-N',
  null,
  null,
  '2026-06-01'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c6272372-4c1a-4fcc-92ff-4a9bd0941b83'::uuid,
  'father',
  'KHILESH',
  'PVT. JOB',
  '7898490235',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c6272372-4c1a-4fcc-92ff-4a9bd0941b83'::uuid,
  'mother',
  'MEENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c6272372-4c1a-4fcc-92ff-4a9bd0941b83'::uuid,
  'KANCHAN PURA -33',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c6272372-4c1a-4fcc-92ff-4a9bd0941b83'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "AADITI", "SURNAME": "SHARMA", "FATHER": "KHILESH", "MOTHER": "MEENA", "DOB": "2023-01-27 00:00:00", "ADM NO.": "26-36-N", "SCH.": null, "ADHAR CARD": "A-718465510206", "SSSMID": 324322606, "FAMILY ID": 37922749, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BRAHMAN", "CATE.": "GEN.", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-06-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7898490235, "MOB. NO. 2": null, "ADDRESS": "KANCHAN PURA -33", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 9 [enrolled]: KRATIKA
insert into public.students (
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
  '0f46a408-b261-48b9-ad86-2c34a1a23e48'::uuid,
  'KRATIKA',
  null,
  '2021-11-19'::date,
  'A-422374610456',
  '314863995',
  '36838575',
  'HINDU',
  'BARAGI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '0f46a408-b261-48b9-ad86-2c34a1a23e48'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-38-N',
  null,
  null,
  '2026-06-24'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0f46a408-b261-48b9-ad86-2c34a1a23e48'::uuid,
  'father',
  'MANGAL SINGH',
  'PVT. JOB',
  '9685336624',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0f46a408-b261-48b9-ad86-2c34a1a23e48'::uuid,
  'mother',
  'PAYAL',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0f46a408-b261-48b9-ad86-2c34a1a23e48'::uuid,
  'RADHAGANJ -135',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0f46a408-b261-48b9-ad86-2c34a1a23e48'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "KRATIKA", "SURNAME": null, "FATHER": "MANGAL SINGH", "MOTHER": "PAYAL", "DOB": "2021-11-19 00:00:00", "ADM NO.": "26-38-N", "SCH.": null, "ADHAR CARD": "A-422374610456", "SSSMID": 314863995, "FAMILY ID": 36838575, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BARAGI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-06-24 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9685336624, "MOB. NO. 2": 8462907677, "ADDRESS": "RADHAGANJ -135", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 10 [enrolled]: SHIVANSHI NAGAR
insert into public.students (
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
  '18517905-4980-4ae9-b891-a18271765c1c'::uuid,
  'SHIVANSHI',
  'NAGAR',
  '2022-11-14'::date,
  'A-522542724201',
  '319855122',
  '42753095',
  'HINDU',
  'DHAKAD',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '18517905-4980-4ae9-b891-a18271765c1c'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-47-N',
  null,
  null,
  '2026-06-23'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '18517905-4980-4ae9-b891-a18271765c1c'::uuid,
  'father',
  'GULSHAN',
  'FARMA CO.',
  '7693986169',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '18517905-4980-4ae9-b891-a18271765c1c'::uuid,
  'mother',
  'SWATI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '18517905-4980-4ae9-b891-a18271765c1c'::uuid,
  'MANGALMURTI NAGAR -7/B',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '18517905-4980-4ae9-b891-a18271765c1c'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SHIVANSHI", "SURNAME": "NAGAR", "FATHER": "GULSHAN", "MOTHER": "SWATI", "DOB": "2022-11-14 00:00:00", "ADM NO.": "26-47-N", "SCH.": null, "ADHAR CARD": "A-522542724201", "SSSMID": 319855122, "FAMILY ID": 42753095, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "FARMA CO.", "ADMN.DATE": "2026-06-23 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7693986169, "MOB. NO. 2": 8815141376, "ADDRESS": "MANGALMURTI NAGAR -7/B", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 11 [enrolled]: MANASVI RATHORE
insert into public.students (
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
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  'MANASVI',
  'RATHORE',
  '2022-07-31'::date,
  'A-689340996540',
  '319014016',
  '38456392',
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-03-N',
  null,
  null,
  '2026-03-25'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  'father',
  'GAURAV SINGH',
  'HR MANAGER',
  '9893338735',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  'mother',
  'NILESWARI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  'CHAMUNDAPURI - 61',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  'STATE BANK OF INDIA',
  'A/C-43483456633',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'd72a57e7-e945-4c36-a8a7-248a1aaa87be'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "MANASVI", "SURNAME": "RATHORE", "FATHER": "GAURAV SINGH", "MOTHER": "NILESWARI", "DOB": "2022-07-31 00:00:00", "ADM NO.": "26-03-N", "SCH.": null, "ADHAR CARD": "A-689340996540", "SSSMID": 319014016, "FAMILY ID": 38456392, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": "A/C-43483456633", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN.", "OCCUPATION": "HR MANAGER", "ADMN.DATE": "2026-03-25 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9893338735, "MOB. NO. 2": null, "ADDRESS": "CHAMUNDAPURI - 61", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 12 [enrolled]: DEVANSHE RATHORE
insert into public.students (
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
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  'DEVANSHE',
  'RATHORE',
  '2023-03-22'::date,
  'A-220165416875',
  '320752659',
  '38456392',
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-2-N',
  null,
  null,
  '2026-03-25'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  'father',
  'MAHENDRA SINGH',
  'SOFTWARE DEVELOPER',
  '7241172176',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  'mother',
  'KUSUM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  'CHAMUNDAPURI - 61',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  'FEDRAL BANK',
  'A/C - 16130100003000',
  'FDRL0001613',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '872a7125-2e98-4a0b-86eb-2d1a6895888c'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "DEVANSHE", "SURNAME": "RATHORE", "FATHER": "MAHENDRA SINGH", "MOTHER": "KUSUM", "DOB": "2023-03-22 00:00:00", "ADM NO.": "26-2-N", "SCH.": null, "ADHAR CARD": "A-220165416875", "SSSMID": 320752659, "FAMILY ID": 38456392, "BANK NAME": "FEDRAL BANK", "BANK AC. NO.": "A/C - 16130100003000", "IFSC CODE": "FDRL0001613", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN.", "OCCUPATION": "SOFTWARE DEVELOPER", "ADMN.DATE": "2026-03-25 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7241172176, "MOB. NO. 2": null, "ADDRESS": "CHAMUNDAPURI - 61", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 13 [enrolled]: HANISHKA CHOUDHARY
insert into public.students (
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
  'd62b9e89-9bb6-438f-a0a1-fd5fcc8c0157'::uuid,
  'HANISHKA',
  'CHOUDHARY',
  '2022-10-18'::date,
  'A-567772635064',
  '319056842',
  '38543951',
  'HINDU',
  'KHATI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'd62b9e89-9bb6-438f-a0a1-fd5fcc8c0157'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-01-N',
  null,
  null,
  '2026-03-31'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd62b9e89-9bb6-438f-a0a1-fd5fcc8c0157'::uuid,
  'father',
  'MANISH',
  'PVT. JOB',
  '8269361671',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd62b9e89-9bb6-438f-a0a1-fd5fcc8c0157'::uuid,
  'mother',
  'TEENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'd62b9e89-9bb6-438f-a0a1-fd5fcc8c0157'::uuid,
  'ARJUN NAGAR -01',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'd62b9e89-9bb6-438f-a0a1-fd5fcc8c0157'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "HANISHKA", "SURNAME": "CHOUDHARY", "FATHER": "MANISH", "MOTHER": "TEENA", "DOB": "2022-10-18 00:00:00", "ADM NO.": "26-01-N", "SCH.": null, "ADHAR CARD": "A-567772635064", "SSSMID": 319056842, "FAMILY ID": 38543951, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-03-31 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8269361671, "MOB. NO. 2": 7024661671, "ADDRESS": "ARJUN NAGAR -01", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 14 [enrolled]: VIVEK ALAWA
insert into public.students (
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
  '940458c8-d4d3-47c1-9c96-dd81bebb32c4'::uuid,
  'VIVEK',
  'ALAWA',
  '2023-08-26'::date,
  'A- 923094630492',
  '324901316',
  '21139198',
  'HINDU',
  'BARELA',
  'ST'
);
insert into public.student_academic_registrations (
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
  '940458c8-d4d3-47c1-9c96-dd81bebb32c4'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-53-N',
  null,
  null,
  '2026-07-17'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '940458c8-d4d3-47c1-9c96-dd81bebb32c4'::uuid,
  'father',
  'ANTOSH',
  'PVT. JOB',
  '9575743892',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '940458c8-d4d3-47c1-9c96-dd81bebb32c4'::uuid,
  'mother',
  'ANITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '940458c8-d4d3-47c1-9c96-dd81bebb32c4'::uuid,
  'ARJUN NAGAR -43',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '940458c8-d4d3-47c1-9c96-dd81bebb32c4'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "VIVEK", "SURNAME": "ALAWA", "FATHER": "ANTOSH", "MOTHER": "ANITA", "DOB": "2023-08-26 00:00:00", "ADM NO.": "26-53-N", "SCH.": null, "ADHAR CARD": "A- 923094630492", "SSSMID": 324901316, "FAMILY ID": 21139198, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BARELA", "CATE.": "ST", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-07-17 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9575743892, "MOB. NO. 2": 9691695453, "ADDRESS": "ARJUN NAGAR -43", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 15 [enrolled]: YUVIKA MALVIYA
insert into public.students (
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
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  'YUVIKA',
  'MALVIYA',
  '2022-01-01'::date,
  'A-509160215800',
  '315274832',
  '20334306',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-61-N',
  null,
  null,
  '2026-06-18'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  'father',
  'MANOHAR',
  'PVT. JOB',
  '9399752510',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  'mother',
  'SADHANA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  'ARJUN NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  'BANK OF INDIA',
  'A/C-890010510003090',
  'BKID0008900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0d9cddce-14fb-48c1-8a4d-bc6942106785'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "YUVIKA", "SURNAME": "MALVIYA", "FATHER": "MANOHAR", "MOTHER": "SADHANA", "DOB": "2022-01-01 00:00:00", "ADM NO.": "26-61-N", "SCH.": null, "ADHAR CARD": "A-509160215800", "SSSMID": 315274832, "FAMILY ID": 20334306, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": "A/C-890010510003090", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-06-18 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9399752510, "MOB. NO. 2": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 16 [enrolled]: NIDHI DONGLIYA
insert into public.students (
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
  '13a6dd8d-15f2-4112-baff-a116a103c322'::uuid,
  'NIDHI',
  'DONGLIYA',
  '2022-04-18'::date,
  'A-454669466139',
  '324235204',
  '42079295',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '13a6dd8d-15f2-4112-baff-a116a103c322'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-60-N',
  null,
  null,
  '2026-07-16'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '13a6dd8d-15f2-4112-baff-a116a103c322'::uuid,
  'father',
  'SONU',
  'FILED OFFICERS',
  '8839894843',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '13a6dd8d-15f2-4112-baff-a116a103c322'::uuid,
  'mother',
  'NISHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '13a6dd8d-15f2-4112-baff-a116a103c322'::uuid,
  'ARJUN NAGAR-13',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '13a6dd8d-15f2-4112-baff-a116a103c322'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "NIDHI", "SURNAME": "DONGLIYA", "FATHER": "SONU", "MOTHER": "NISHA", "DOB": "2022-04-18 00:00:00", "ADM NO.": "26-60-N", "SCH.": null, "ADHAR CARD": "A-454669466139", "SSSMID": 324235204, "FAMILY ID": 42079295, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "FILED OFFICERS", "ADMN.DATE": "2026-07-16 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8839894843, "MOB. NO. 2": 9179214843, "ADDRESS": "ARJUN NAGAR-13", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 17 [enrolled]: SARTHAK MALVIYA
insert into public.students (
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
  'f2e70b92-8a92-4785-8c7f-75257489d327'::uuid,
  'SARTHAK',
  'MALVIYA',
  '2022-09-22'::date,
  'A-918743155921',
  '324347229',
  '25940644',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'f2e70b92-8a92-4785-8c7f-75257489d327'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-37-N',
  null,
  null,
  '2026-07-01'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f2e70b92-8a92-4785-8c7f-75257489d327'::uuid,
  'father',
  'MAHESH KUMAR',
  null,
  '7974618956',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f2e70b92-8a92-4785-8c7f-75257489d327'::uuid,
  'mother',
  'GAYTRI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f2e70b92-8a92-4785-8c7f-75257489d327'::uuid,
  'NEW DEWAS-152',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f2e70b92-8a92-4785-8c7f-75257489d327'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SARTHAK", "SURNAME": "MALVIYA", "FATHER": "MAHESH KUMAR", "MOTHER": "GAYTRI", "DOB": "2022-09-22 00:00:00", "ADM NO.": "26-37-N", "SCH.": null, "ADHAR CARD": "A-918743155921", "SSSMID": 324347229, "FAMILY ID": 25940644, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": "2026-07-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7974618956, "MOB. NO. 2": 9770999527, "ADDRESS": "NEW DEWAS-152", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 18 [enrolled]: DHARA
insert into public.students (
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
  'b1e561fd-e767-4173-ab36-0d60883c79a6'::uuid,
  'DHARA',
  null,
  '2021-10-17'::date,
  'A-943580331975',
  '314431494',
  '50668493',
  'HINDU',
  'BAGRI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'b1e561fd-e767-4173-ab36-0d60883c79a6'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-63-N',
  null,
  null,
  '2026-06-19'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b1e561fd-e767-4173-ab36-0d60883c79a6'::uuid,
  'father',
  'DHARMENDRA',
  'PVT. JOB',
  '8085311066',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b1e561fd-e767-4173-ab36-0d60883c79a6'::uuid,
  'mother',
  'RAMA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b1e561fd-e767-4173-ab36-0d60883c79a6'::uuid,
  'MADHUBAN NX COLONY-14',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b1e561fd-e767-4173-ab36-0d60883c79a6'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "DHARA", "SURNAME": null, "FATHER": "DHARMENDRA", "MOTHER": "RAMA", "DOB": "2021-10-17 00:00:00", "ADM NO.": "26-63-N", "SCH.": null, "ADHAR CARD": "A-943580331975", "SSSMID": 314431494, "FAMILY ID": 50668493, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-06-19 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8085311066, "MOB. NO. 2": 9399203371, "ADDRESS": "MADHUBAN NX COLONY-14", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 19 [enrolled]: AARNIK WADIA
insert into public.students (
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
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  'AARNIK',
  'WADIA',
  '2023-07-15'::date,
  'A- 670020171758',
  '320929771',
  '26428159',
  'HINDU',
  'CHAMAR',
  'SC'
);
insert into public.student_academic_registrations (
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
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-65-N',
  null,
  null,
  '2026-08-13'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  'father',
  'ANIL KUMAR',
  'TEACHER',
  '9575137712',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  'mother',
  'REENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  'MADHUBAN COLONY -225',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  'STATE BANK OF INDIA',
  'A/C- 63047287480',
  'SBIN030511',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '4952fb78-ecd3-4f34-92fc-7fc60abf027c'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "AARNIK", "SURNAME": "WADIA", "FATHER": "ANIL KUMAR", "MOTHER": "REENA", "DOB": "2023-07-15 00:00:00", "ADM NO.": "26-65-N", "SCH.": null, "ADHAR CARD": "A- 670020171758", "SSSMID": 320929771, "FAMILY ID": 26428159, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": "A/C- 63047287480", "IFSC CODE": "SBIN030511", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "TEACHER", "ADMN.DATE": "2026-08-13 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9575137712, "MOB. NO. 2": null, "ADDRESS": "MADHUBAN COLONY -225", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 20 [enrolled]: PRAGYA RANA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  'PRAGYA',
  'RANA',
  '2022-07-05'::date,
  'A- 380919075080',
  '322742786',
  '44234265',
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-32-L',
  null,
  null,
  '2026-04-27'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  'father',
  'SANJAY SINGH',
  'WARE HOUSE',
  '9827012275',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  'mother',
  'SONAM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  'CHAMUNDA PURI - 36',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  'STATE BANK OF INDIA',
  'SBI 63022743589',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '98989d13-defa-4549-88f8-e646455e50a9'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 20, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "PRAGYA", "SURNAME": "RANA", "FATHER": "SANJAY SINGH", "MOTHER": "SONAM", "DOB": "2022-07-05 00:00:00", "ADM NO.": "26-32-L", "SCH.": "26-32-L", "ADHAR CARD": "A- 380919075080", "SSSMID": 322742786, "FAMILY ID": 44234265, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": "SBI 63022743589", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "WARE HOUSE", "ADMN.DATE": "2026-04-27 00:00:00", "ADM .CLASS": "LKG", "MOB. NO. 1": 9827012275, "MOB. NO. 2": 9827187219, "ADDRESS": "CHAMUNDA PURI - 36", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 23 [rte]: HARDIK MALVIYA
insert into public.students (
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
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  'HARDIK',
  'MALVIYA',
  '2023-07-18'::date,
  'A-945963298601',
  '323019435',
  '45370711',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-26-N',
  '2249',
  null,
  '2026-05-23'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  'father',
  'NARENDRA',
  'PVT. JOB',
  '9755768722',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  'mother',
  'MANJU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  'MAHAKAL COLONY - 106/4',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  'STATE BANK OF INDIA',
  'AC-35861776711',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '8c7c5ce6-243c-49c8-a4a0-693f0a5c7adf'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 23, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "HARDIK", "SURNAME": "MALVIYA", "FATHER": "NARENDRA", "MOTHER": "MANJU", "DOB": "2023-07-18 00:00:00", "ADM NO.": "26-26-N", "SCH.": 2249, "ADHAR CARD": "A-945963298601", "SSSMID": 323019435, "FAMILY ID": 45370711, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": "AC-35861776711", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-05-23 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9755768722, "MOB. NO. 2": 8878983615, "ADDRESS": "MAHAKAL COLONY - 106/4", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 24 [rte]: MITANSH JAISWAL
insert into public.students (
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
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  'MITANSH',
  'JAISWAL',
  '2026-04-04'::date,
  'A-601760823833',
  '322894001',
  '21288713',
  'HINDU',
  'KALAL',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-06-N',
  '2338',
  null,
  '2026-04-04'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  'father',
  'LALIT',
  'WINE SHOP',
  '9111193067',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  'ITAWA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  'KOTAK MAHINDRA BANK',
  'AC-3946042110',
  'KKBK0005958',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f90d6a4a-019b-4384-aa2a-995c84cdd8eb'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 24, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "MITANSH", "SURNAME": "JAISWAL", "FATHER": "LALIT", "MOTHER": "POOJA", "DOB": "2026-04-04 00:00:00", "ADM NO.": "26-06-N", "SCH.": 2338, "ADHAR CARD": "A-601760823833", "SSSMID": 322894001, "FAMILY ID": 21288713, "BANK NAME": "KOTAK MAHINDRA BANK", "BANK AC. NO.": "AC-3946042110", "IFSC CODE": "KKBK0005958", "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "OCCUPATION": "WINE SHOP", "ADMN.DATE": "2026-04-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9111193067, "MOB. NO. 2": 9589669237, "ADDRESS": "ITAWA", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 25 [rte]: JAYANSH VERMA
insert into public.students (
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
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  'JAYANSH',
  'VERMA',
  '2023-03-17'::date,
  'A-218606087912',
  '321965581',
  '36826953',
  'HINDU',
  'NAI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-05-N',
  '2337',
  null,
  '2026-04-04'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  'father',
  'VINOD',
  'BUSINESS',
  '9516028819',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  'mother',
  'SANDHYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  'CHAMUNDA PALACE -14',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  'BANK OF INDIA',
  'AC-890010110010062',
  'BKID0008900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '61566dcd-95be-4cdf-bcf7-98fa6443c255'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 25, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "JAYANSH", "SURNAME": "VERMA", "FATHER": "VINOD", "MOTHER": "SANDHYA", "DOB": "2023-03-17 00:00:00", "ADM NO.": "26-05-N", "SCH.": 2337, "ADHAR CARD": "A-218606087912", "SSSMID": 321965581, "FAMILY ID": 36826953, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": "AC-890010110010062", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2026-04-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9516028819, "MOB. NO. 2": 9111052221, "ADDRESS": "CHAMUNDA PALACE -14", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 26 [rte]: SHREYANSHI SISODIYA
insert into public.students (
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
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  'SHREYANSHI',
  'SISODIYA',
  '2023-03-05'::date,
  'A-672117435082',
  '319938618',
  '39581566',
  'HINDU',
  'BARGUNDA',
  'SC'
);
insert into public.student_academic_registrations (
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
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-04-N',
  '2336',
  null,
  '2026-04-04'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  'father',
  'NIRAJ',
  'PVT. JOB',
  '8889920130',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  'mother',
  'SANDHYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  'AMBEDKAR NAGAR-146',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  'STATE BANK OF INDIA',
  'AC-33250800370',
  'SBIN0030007',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '2de5d4b6-df24-4ab4-bde6-1c5d2180b51d'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 26, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "SHREYANSHI", "SURNAME": "SISODIYA", "FATHER": "NIRAJ", "MOTHER": "SANDHYA", "DOB": "2023-03-05 00:00:00", "ADM NO.": "26-04-N", "SCH.": 2336, "ADHAR CARD": "A-672117435082", "SSSMID": 319938618, "FAMILY ID": 39581566, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": "AC-33250800370", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "BARGUNDA", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-04-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8889920130, "MOB. NO. 2": 8085314686, "ADDRESS": "AMBEDKAR NAGAR-146", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 27 [rte]: HARSH SLODIYA
insert into public.students (
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
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  'HARSH',
  'SLODIYA',
  '2022-12-14'::date,
  'A-820413272901',
  '322581802',
  '42305159',
  'HINDU',
  'BARGUNDA',
  'ST'
);
insert into public.student_academic_registrations (
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
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-08-N',
  '2339',
  null,
  '2026-04-07'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  'father',
  'JITENDRA',
  'MAJDOORI',
  '8889920130',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  'mother',
  'SAKSHI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  'AMBEDKAR NAGAR-40',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  'BANK OF INDIA',
  'AC-58050100009903',
  'BARBVJDEWA',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c3a32dce-610b-4094-8094-0cf5ea9dc9a1'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 27, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "HARSH", "SURNAME": "SLODIYA", "FATHER": "JITENDRA", "MOTHER": "SAKSHI", "DOB": "2022-12-14 00:00:00", "ADM NO.": "26-08-N", "SCH.": 2339, "ADHAR CARD": "A-820413272901", "SSSMID": 322581802, "FAMILY ID": 42305159, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": "AC-58050100009903", "IFSC CODE": "BARBVJDEWA", "RELIGION": "HINDU", "CASTE": "BARGUNDA", "CATE.": "ST", "OCCUPATION": "MAJDOORI", "ADMN.DATE": "2026-04-07 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8889920130, "MOB. NO. 2": 8085314686, "ADDRESS": "AMBEDKAR NAGAR-40", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 28 [rte]: SHIVAY PRAJAPATI
insert into public.students (
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
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  'SHIVAY',
  'PRAJAPATI',
  '2022-09-11'::date,
  'A-973984507024',
  '322522420',
  '20453907',
  'HINDU',
  'KUMHAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-10-N',
  '2340',
  null,
  '2026-04-08'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  'father',
  'DHARMANDRA',
  'MAJDOORI',
  '7869119771',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  'mother',
  'MANISHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  'MAHAKAL COLONY -',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  'CENTRAL BANK IF INDIA',
  'AC-3309700671',
  'CBIN0282162',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '246b3f8b-0e35-433c-80b9-30b353216657'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 28, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "SHIVAY", "SURNAME": "PRAJAPATI", "FATHER": "DHARMANDRA", "MOTHER": "MANISHA", "DOB": "2022-09-11 00:00:00", "ADM NO.": "26-10-N", "SCH.": 2340, "ADHAR CARD": "A-973984507024", "SSSMID": 322522420, "FAMILY ID": 20453907, "BANK NAME": "CENTRAL BANK IF INDIA", "BANK AC. NO.": "AC-3309700671", "IFSC CODE": "CBIN0282162", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.": "OBC", "OCCUPATION": "MAJDOORI", "ADMN.DATE": "2026-04-08 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7869119771, "MOB. NO. 2": 9893353665, "ADDRESS": "MAHAKAL COLONY -", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 29 [rte]: DIKSHA RAO
insert into public.students (
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
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  'DIKSHA',
  'RAO',
  '2022-09-11'::date,
  'A-298239716665',
  '319718462',
  '36688342',
  'HINDU',
  'RAO',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-11-N',
  '2341',
  null,
  '2026-04-08'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  'father',
  'SHUBHAM',
  'MAJDOORI',
  '9302185062',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  'mother',
  'SMITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  'MAHAKAL COLONY -56',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  'BANK OF BARODA',
  'AC-68058100002166',
  'BARB0VJDEWA',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f574e30a-a5f3-43a5-9a3a-0b37a86f90e3'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 29, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "DIKSHA", "SURNAME": "RAO", "FATHER": "SHUBHAM", "MOTHER": "SMITA", "DOB": "2022-09-11 00:00:00", "ADM NO.": "26-11-N", "SCH.": 2341, "ADHAR CARD": "A-298239716665", "SSSMID": 319718462, "FAMILY ID": 36688342, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": "AC-68058100002166", "IFSC CODE": "BARB0VJDEWA", "RELIGION": "HINDU", "CASTE": "RAO", "CATE.": "OBC", "OCCUPATION": "MAJDOORI", "ADMN.DATE": "2026-04-08 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9302185062, "MOB. NO. 2": 8348980170, "ADDRESS": "MAHAKAL COLONY -56", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 30 [rte]: VAISHNAVI CHOUHAN
insert into public.students (
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
  '135409a8-97a2-4a18-85ab-36a75167bf88'::uuid,
  'VAISHNAVI',
  'CHOUHAN',
  '2022-05-05'::date,
  'A-287146689741',
  '316065268',
  '3649275',
  'HINDU',
  'MALI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '135409a8-97a2-4a18-85ab-36a75167bf88'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-13-N',
  '2342',
  null,
  '2026-04-08'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '135409a8-97a2-4a18-85ab-36a75167bf88'::uuid,
  'father',
  'ROHIT',
  'PVT. JOB',
  '8821998725',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '135409a8-97a2-4a18-85ab-36a75167bf88'::uuid,
  'mother',
  'MONIKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '135409a8-97a2-4a18-85ab-36a75167bf88'::uuid,
  'ANAND PURA -95/4',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '135409a8-97a2-4a18-85ab-36a75167bf88'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 30, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "VAISHNAVI", "SURNAME": "CHOUHAN", "FATHER": "ROHIT", "MOTHER": "MONIKA", "DOB": "2022-05-05 00:00:00", "ADM NO.": "26-13-N", "SCH.": 2342, "ADHAR CARD": "A-287146689741", "SSSMID": 316065268, "FAMILY ID": 3649275, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "MALI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-04-08 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8821998725, "MOB. NO. 2": 6264410141, "ADDRESS": "ANAND PURA -95/4", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 31 [rte]: SARTAK PARIHAR
insert into public.students (
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
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  'SARTAK',
  'PARIHAR',
  '2022-12-14'::date,
  'A-623586706794',
  '319855150',
  '36973545',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-14-N',
  '2343',
  null,
  '2026-04-09'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  'father',
  'VIJAY',
  'PVT. JOB',
  '9575401305',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  'mother',
  'KOMAL',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  'NAI BASTI KALU KHEDI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  'MADHYA PRADESH GRAMIN BANK',
  'AC-016110410000461',
  'BKID0NAMRGB',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '26f1552f-936d-490e-80df-2181cfbf2d02'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 31, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "SARTAK", "SURNAME": "PARIHAR", "FATHER": "VIJAY", "MOTHER": "KOMAL", "DOB": "2022-12-14 00:00:00", "ADM NO.": "26-14-N", "SCH.": 2343, "ADHAR CARD": "A-623586706794", "SSSMID": 319855150, "FAMILY ID": 36973545, "BANK NAME": "MADHYA PRADESH GRAMIN BANK", "BANK AC. NO.": "AC-016110410000461", "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-04-09 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9575401305, "MOB. NO. 2": 9926495450, "ADDRESS": "NAI BASTI KALU KHEDI", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 32 [rte]: CHETNA MALVIYA
insert into public.students (
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
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  'CHETNA',
  'MALVIYA',
  '2022-05-27'::date,
  'A-749043265693',
  '318206972',
  '20461645',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-15-N',
  '2344',
  null,
  '2026-04-09'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  'father',
  'SOHAN',
  'PVT. JOB',
  '9754458430',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  'mother',
  'MAYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  'MAHAKAL COLONY-368',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  'BANK OF INDIA',
  'AC-1890010510004086',
  'BKID0008900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'dce20017-5581-4795-a2a3-a890b041bbc9'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 32, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "CHETNA", "SURNAME": "MALVIYA", "FATHER": "SOHAN", "MOTHER": "MAYA", "DOB": "2022-05-27 00:00:00", "ADM NO.": "26-15-N", "SCH.": 2344, "ADHAR CARD": "A-749043265693", "SSSMID": 318206972, "FAMILY ID": 20461645, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": "AC-1890010510004086", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-04-09 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9754458430, "MOB. NO. 2": 9977768987, "ADDRESS": "MAHAKAL COLONY-368", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 33 [rte]: AAYUSH SINGH
insert into public.students (
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
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  'AAYUSH',
  'SINGH',
  '2023-01-30'::date,
  'A-596051651176',
  '320698306',
  '37389876',
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-12-N',
  '2345',
  null,
  '2026-04-08'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  'father',
  'MAYANK',
  'PVT. JOB',
  '7772047613',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  'mother',
  'RANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  'MAHAKAL COLONY - 162/7',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  'POST OFFICE',
  'AC-027810213614',
  'IPOS0000001',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5a43cb76-27e0-4521-a769-4c0b998ff73f'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 33, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "AAYUSH", "SURNAME": "SINGH", "FATHER": "MAYANK", "MOTHER": "RANI", "DOB": "2023-01-30 00:00:00", "ADM NO.": "26-12-N", "SCH.": 2345, "ADHAR CARD": "A-596051651176", "SSSMID": 320698306, "FAMILY ID": 37389876, "BANK NAME": "POST OFFICE", "BANK AC. NO.": "AC-027810213614", "IFSC CODE": "IPOS0000001", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN.", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-04-08 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7772047613, "MOB. NO. 2": 6260230092, "ADDRESS": "MAHAKAL COLONY - 162/7", "LAST SCHOOL": null}}'::jsonb
);

-- NUR row 34 [rte]: VINAYAK PAINTER
insert into public.students (
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
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  'VINAYAK',
  'PAINTER',
  '2022-11-11'::date,
  'A-643994140802',
  '323797003',
  '36685982',
  'HINDU',
  'LAKHERA',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  '2026-27',
  'NUR',
  null,
  '26-27-N',
  '2350',
  null,
  '2026-05-27'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  'father',
  'SUBHASH',
  'PVT. JOB',
  '9098988606',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  'mother',
  'SONAM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  'NAYA PURA -66',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  'BANK OF MAHARASHTRA',
  'AC-68009964328',
  'MAHB0000141',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5b5890ff-76ae-41d6-bc01-ec52be7a0555'::uuid,
  '2026-27',
  'NUR',
  'nur-ukg.xlsx',
  'NUR',
  '{"sheet_name": "NUR", "row_number": 34, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "VINAYAK", "SURNAME": "PAINTER", "FATHER": "SUBHASH", "MOTHER": "SONAM", "DOB": "2022-11-11 00:00:00", "ADM NO.": "26-27-N", "SCH.": 2350, "ADHAR CARD": "A-643994140802", "SSSMID": 323797003, "FAMILY ID": 36685982, "BANK NAME": "BANK OF MAHARASHTRA", "BANK AC. NO.": "AC-68009964328", "IFSC CODE": "MAHB0000141", "RELIGION": "HINDU", "CASTE": "LAKHERA", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-05-27 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9098988606, "MOB. NO. 2": 8839179019, "ADDRESS": "NAYA PURA -66", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 3 [enrolled]: DEV KUNWAR RAJPUT Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '36930ce6-84f9-441b-a29b-df2ff6500d64'::uuid,
  'DEV KUNWAR',
  'RAJPUT',
  '2021-04-07'::date,
  '889176397692',
  '312974989',
  '47939984',
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  '36930ce6-84f9-441b-a29b-df2ff6500d64'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-17-N',
  null,
  null,
  '2025-06-19'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '36930ce6-84f9-441b-a29b-df2ff6500d64'::uuid,
  'father',
  'SUMER SINGH',
  'PRIVATE JOB',
  '9340884355',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '36930ce6-84f9-441b-a29b-df2ff6500d64'::uuid,
  'mother',
  'GOVIND KUNWAR',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '36930ce6-84f9-441b-a29b-df2ff6500d64'::uuid,
  'MADHUBAN COLONY 40-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '36930ce6-84f9-441b-a29b-df2ff6500d64'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 3, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DEV KUNWAR", "SURNAME": "RAJPUT", "FATHER": "SUMER SINGH", "MOTHER": "GOVIND KUNWAR", "DOB": "2021-04-07 00:00:00", "ADM NO.": "25-17-N", "SCH.": "25-17-N", "ADHAR CARD": 889176397692, "SSSMID": 312974989, "FAMILY ID": 47939984, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "19-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9340884355, "MOB. NO. 2": 7049821603, "ADDRESS": "MADHUBAN COLONY 40-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 4 [enrolled]: DAKSH VERMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  'DAKSH',
  'VERMA',
  '2021-07-29'::date,
  '231052165529',
  '316033131',
  '36745293',
  'HINDU',
  'NAI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-19-N',
  null,
  null,
  '2025-06-18'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  'father',
  'RUPESH',
  'PRIVATE JOB',
  '9406662628',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  'mother',
  'PRIYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  'AWAS NAGAR-C4/120-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  'BANK OF BARODA',
  '68058100003638',
  'BARB0VJDEWA',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '471447af-2eb3-4f70-9111-b933ab161aac'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 4, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DAKSH", "SURNAME": "VERMA", "FATHER": "RUPESH", "MOTHER": "PRIYA", "DOB": "29-07-2021", "ADM NO.": "25-19-N", "SCH.": "25-19-N", "ADHAR CARD": 231052165529, "SSSMID": 316033131, "FAMILY ID": 36745293, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 68058100003638, "IFSC CODE": "BARB0VJDEWA", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "18-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9406662628, "MOB. NO. 2": 8818867333, "ADDRESS": "AWAS NAGAR-C4/120-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 5 [enrolled]: DIVYANSH ALAWA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '6c9cf382-f745-433e-b7fe-3629bdcfa51a'::uuid,
  'DIVYANSH',
  'ALAWA',
  '2021-04-22'::date,
  '587426527406',
  '318814245',
  '21139198',
  'HINDU',
  'BARELA',
  'ST'
);
insert into public.student_academic_registrations (
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
  '6c9cf382-f745-433e-b7fe-3629bdcfa51a'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-21-N',
  null,
  null,
  '2025-06-17'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '6c9cf382-f745-433e-b7fe-3629bdcfa51a'::uuid,
  'father',
  'ANTOSH',
  'PRIVATE JOB',
  '9575743892',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '6c9cf382-f745-433e-b7fe-3629bdcfa51a'::uuid,
  'mother',
  'ANITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '6c9cf382-f745-433e-b7fe-3629bdcfa51a'::uuid,
  'ARJUN NAGAR 36-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '6c9cf382-f745-433e-b7fe-3629bdcfa51a'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 5, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DIVYANSH", "SURNAME": "ALAWA", "FATHER": "ANTOSH", "MOTHER": "ANITA", "DOB": "22-04-2021", "ADM NO.": "25-21-N", "SCH.": "25-21-N", "ADHAR CARD": 587426527406, "SSSMID": 318814245, "FAMILY ID": 21139198, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BARELA", "CATE.": "ST", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "17-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9575743892, "MOB. NO. 2": 9691695453, "ADDRESS": "ARJUN NAGAR 36-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 6 [enrolled]: HARSH CHOUHAN Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  'HARSH',
  'CHOUHAN',
  '2022-03-14'::date,
  '841616333021',
  '318374436',
  '20458855',
  'HINDU',
  'CHAMAR',
  'SC'
);
insert into public.student_academic_registrations (
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
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-31-N',
  null,
  null,
  '2025-05-31'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  'father',
  'ASHOK',
  null,
  '9753434635',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  'MAHANKAL COLONY -117/5-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  'SBI',
  '34685152452',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '3b0b89cc-4d1e-427a-a519-8bb5e9c991e5'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 6, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "HARSH", "SURNAME": "CHOUHAN", "FATHER": "ASHOK", "MOTHER": "POOJA", "DOB": "14-03-2022", "ADM NO.": "25-31-N", "SCH.": "25-31-N", "ADHAR CARD": 841616333021, "SSSMID": 318374436, "FAMILY ID": 20458855, "BANK NAME": "SBI", "BANK AC. NO.": 34685152452, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": "31-05-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9753434635, "MOB. NO. 2": 9340669070, "ADDRESS": "MAHANKAL COLONY -117/5-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 7 [enrolled]: CHANCHAL NO Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  'CHANCHAL',
  'NO',
  '2022-06-22'::date,
  '520185114473',
  '319934055',
  '45162000',
  'HINDU',
  'AGRAWAL',
  'GEN'
);
insert into public.student_academic_registrations (
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
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-05-N',
  null,
  null,
  '2025-04-28'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  'father',
  'HARISH',
  'ACCOUNTS',
  '9926165471',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  'mother',
  'ARTI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  'MADHUBAN COLONY 237-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  'SBI',
  '20380197208',
  'SBIN0013307',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '27581842-7c4f-4924-ba27-0070d384c335'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 7, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "CHANCHAL", "SURNAME": "NO", "FATHER": "HARISH", "MOTHER": "ARTI", "DOB": "22-06-2022", "ADM NO.": "25-05-N", "SCH.": "25-05-N", "ADHAR CARD": 520185114473, "SSSMID": 319934055, "FAMILY ID": 45162000, "BANK NAME": "SBI", "BANK AC. NO.": 20380197208, "IFSC CODE": "SBIN0013307", "RELIGION": "HINDU", "CASTE": "AGRAWAL", "CATE.": "GEN", "OCCUPATION": "ACCOUNTS", "ADMN.DATE": "28-04-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9926165471, "MOB. NO. 2": 9926165471, "ADDRESS": "MADHUBAN COLONY 237-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 8 [enrolled]: SOMVRITA NIWARIA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  'SOMVRITA',
  'NIWARIA',
  '2022-10-09'::date,
  '325756733373',
  '320510717',
  '26152626',
  'HINDU',
  'KORI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-15-N',
  null,
  null,
  '2025-06-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  'father',
  'NISHKARSH',
  'GOVT.EMP.',
  '9179350147',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  'mother',
  'SHWETA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  'MPEB COLONY E-02-BNP DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  'BANK OF INDIA',
  '945310100013554',
  'BKID0008900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '14def33a-cabd-4c2b-abdc-dbee08844839'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 8, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SOMVRITA", "SURNAME": "NIWARIA", "FATHER": "NISHKARSH", "MOTHER": "SHWETA", "DOB": "2022-10-09 00:00:00", "ADM NO.": "25-15-N", "SCH.": "25-15-N", "ADHAR CARD": 325756733373, "SSSMID": 320510717, "FAMILY ID": 26152626, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 945310100013554, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "KORI", "CATE.": "SC", "OCCUPATION": "GOVT.EMP.", "ADMN.DATE": "2025-06-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9179350147, "MOB. NO. 2": 8818895273, "ADDRESS": "MPEB COLONY E-02-BNP DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 9 [enrolled]: VIRAJ NO Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  'VIRAJ',
  'NO',
  '2021-01-01'::date,
  '974081574056',
  '322868772',
  '22079873',
  'HINDU',
  'BAGRI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-33-N',
  null,
  null,
  '2025-06-20'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  'father',
  'JITENDRA',
  'FARMING',
  '7970209775',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  'RADHAGANJ DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  'SBI',
  '34645687270',
  'SBIN0030194',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'fa9b6994-1a91-47a9-9382-09285ef9a3eb'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 9, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "VIRAJ", "SURNAME": "NO", "FATHER": "JITENDRA", "MOTHER": "POOJA", "DOB": "2021-01-01 00:00:00", "ADM NO.": "25-33-N", "SCH.": "25-33-N", "ADHAR CARD": 974081574056, "SSSMID": 322868772, "FAMILY ID": 22079873, "BANK NAME": "SBI", "BANK AC. NO.": 34645687270, "IFSC CODE": "SBIN0030194", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "OCCUPATION": "FARMING", "ADMN.DATE": "20-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7970209775, "MOB. NO. 2": 7610487250, "ADDRESS": "RADHAGANJ DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 10 [enrolled]: SHIVAM GURJUR Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'b55cff7c-79bd-41e6-8d27-0f93afc61bc6'::uuid,
  'SHIVAM',
  'GURJUR',
  '2021-05-09'::date,
  null,
  null,
  '20133876',
  'HINDU',
  'GURJUR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'b55cff7c-79bd-41e6-8d27-0f93afc61bc6'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-32-N',
  null,
  null,
  '2025-05-15'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b55cff7c-79bd-41e6-8d27-0f93afc61bc6'::uuid,
  'father',
  'SODAN',
  'PRIVATE JOB',
  '8696285254',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b55cff7c-79bd-41e6-8d27-0f93afc61bc6'::uuid,
  'mother',
  'GAYATRA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b55cff7c-79bd-41e6-8d27-0f93afc61bc6'::uuid,
  'CHAMUNDA PALACE DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b55cff7c-79bd-41e6-8d27-0f93afc61bc6'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 10, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHIVAM", "SURNAME": "GURJUR", "FATHER": "SODAN", "MOTHER": "GAYATRA", "DOB": "2021-05-09 00:00:00", "ADM NO.": "25-32-N", "SCH.": "25-32-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": 20133876, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GURJUR", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "15-05-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 8696285254, "MOB. NO. 2": 7747034790, "ADDRESS": "CHAMUNDA PALACE DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 11 [enrolled]: DIVYANSHI KUMAWAT Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  'DIVYANSHI',
  'KUMAWAT',
  '2021-12-13'::date,
  '440257182725',
  '314347337',
  '20060338',
  'HINDU',
  null,
  'OBC'
);
insert into public.student_academic_registrations (
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
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-22-N',
  null,
  null,
  '2025-06-14'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  'father',
  'VINOD KUMAWAT',
  'MANDI',
  '8827434646',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  'ARJUN NAGAR 2 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  'UNION BANK',
  '274210100018398',
  'UBIN0827428',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'bdf3b627-f889-42e1-9402-a42a5da10fa7'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 11, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DIVYANSHI", "SURNAME": "KUMAWAT", "FATHER": "VINOD KUMAWAT", "MOTHER": "POOJA", "DOB": "13-12-2021", "ADM NO.": "25-22-N", "SCH.": "25-22-N", "ADHAR CARD": 440257182725, "SSSMID": 314347337, "FAMILY ID": 20060338, "BANK NAME": "UNION BANK", "BANK AC. NO.": 274210100018398, "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": null, "CATE.": "OBC", "OCCUPATION": "MANDI", "ADMN.DATE": "14-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 8827434646, "MOB. NO. 2": 8959879663, "ADDRESS": "ARJUN NAGAR 2 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 12 [enrolled]: MANVIK CHOUKSE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  'MANVIK',
  'CHOUKSE',
  '2022-05-07'::date,
  '392489361564',
  '317968557',
  '38066236',
  'HINDU',
  'KALAL',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-01-N',
  null,
  null,
  '2025-03-28'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  'father',
  'ANKIT',
  'PRIVATE JOB',
  '8878940400',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  'mother',
  'SONAM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  'CHAMUNDA PALACE-6-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  'SBI',
  '32596913275',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'aa9b804d-8090-499c-a4e1-5d6a4f8e9291'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 12, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "MANVIK", "SURNAME": "CHOUKSE", "FATHER": "ANKIT", "MOTHER": "SONAM", "DOB": "2022-05-07 00:00:00", "ADM NO.": "25-01-N", "SCH.": "25-01-N", "ADHAR CARD": 392489361564, "SSSMID": 317968557, "FAMILY ID": 38066236, "BANK NAME": "SBI", "BANK AC. NO.": 32596913275, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "28-03-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 8878940400, "MOB. NO. 2": 8839130630, "ADDRESS": "CHAMUNDA PALACE-6-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 13 [enrolled]: SHIVAY CHOUDHARY Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  'SHIVAY',
  'CHOUDHARY',
  '2021-01-10'::date,
  '625859100283',
  '320375848',
  '43365192',
  'HINDU',
  'KHATI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-04-N',
  null,
  null,
  '2025-08-04'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  'father',
  'AKASH',
  'FARMA',
  '8269978048',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  'mother',
  'RAKSHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  'MADHUBAN COLONY -268-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  'IDBI',
  '227104000235341',
  'IBKL0000227',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '7121c249-b2c2-4f1a-8045-32fd11699cb3'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 13, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHIVAY", "SURNAME": "CHOUDHARY", "FATHER": "AKASH", "MOTHER": "RAKSHA", "DOB": "2021-01-10 00:00:00", "ADM NO.": "25-04-N", "SCH.": "25-04-N", "ADHAR CARD": 625859100283, "SSSMID": 320375848, "FAMILY ID": 43365192, "BANK NAME": "IDBI", "BANK AC. NO.": 227104000235341, "IFSC CODE": "IBKL0000227", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMA", "ADMN.DATE": "2025-08-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8269978048, "MOB. NO. 2": 7999708151, "ADDRESS": "MADHUBAN COLONY -268-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 14 [enrolled]: AARAV TOMAR Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  'AARAV',
  'TOMAR',
  '2021-07-26'::date,
  '468397482003',
  null,
  null,
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-23-N',
  null,
  null,
  '2025-04-23'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  'father',
  'ABHISHEK SINGH',
  'DOCTORE',
  '9917687418',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  'mother',
  'MINAKSHI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  'PRANAY NAGAR 30-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  'CENTRAL BANK OF INDIA',
  '2974590553',
  null,
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0b103a28-7eb1-46b3-9eb6-eb7a7360a16e'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 14, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "AARAV", "SURNAME": "TOMAR", "FATHER": "ABHISHEK SINGH", "MOTHER": "MINAKSHI", "DOB": "26-07-2021", "ADM NO.": "25-23-N", "SCH.": "25-23-N", "ADHAR CARD": 468397482003, "SSSMID": null, "FAMILY ID": null, "BANK NAME": "CENTRAL BANK OF INDIA", "BANK AC. NO.": 2974590553, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "DOCTORE", "ADMN.DATE": "23-04-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9917687418, "MOB. NO. 2": 9917687418, "ADDRESS": "PRANAY NAGAR 30-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 15 [enrolled]: VEDANSH AWASE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  'VEDANSH',
  'AWASE',
  '2021-12-23'::date,
  '728851907789',
  '320838834',
  '49926716',
  'HINDU',
  'BARELA',
  'ST'
);
insert into public.student_academic_registrations (
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
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-13-N',
  null,
  null,
  '2025-04-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  'father',
  'PALSINGH',
  'COMPANY BNP',
  '7879423870',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  'mother',
  'REENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  'CHAMUNDA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  'SBI',
  '33726643852',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'a7ae8553-e954-4b16-9098-2ec713a37ab0'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 15, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "VEDANSH", "SURNAME": "AWASE", "FATHER": "PALSINGH", "MOTHER": "REENA", "DOB": "23-12-2021", "ADM NO.": "25-13-N", "SCH.": "25-13-N", "ADHAR CARD": 728851907789, "SSSMID": 320838834, "FAMILY ID": 49926716, "BANK NAME": "SBI", "BANK AC. NO.": 33726643852, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BARELA", "CATE.": "ST", "OCCUPATION": "COMPANY BNP", "ADMN.DATE": "2025-04-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7879423870, "MOB. NO. 2": 7089937813, "ADDRESS": "CHAMUNDA", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 16 [enrolled]: SHIVANSH SHARMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  'SHIVANSH',
  'SHARMA',
  '2022-03-02'::date,
  '596048755394',
  '315957466',
  '48550159',
  'HINDU',
  'SUTAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-46-N',
  null,
  null,
  '2025-07-01'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  'father',
  'MADAN',
  'AMALTAS',
  '8770137754',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  'mother',
  'JYOTI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  'CHAMUNDA PURI -31 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  'BANK OF INDIA',
  '890010510005372',
  'BKID0008900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c04ec5b1-e0ed-4da5-a7eb-184c06566783'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 16, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHIVANSH", "SURNAME": "SHARMA", "FATHER": "MADAN", "MOTHER": "JYOTI", "DOB": "2022-03-02 00:00:00", "ADM NO.": "25-46-N", "SCH.": "25-46-N", "ADHAR CARD": 596048755394, "SSSMID": 315957466, "FAMILY ID": 48550159, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 890010510005372, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "OCCUPATION": "AMALTAS", "ADMN.DATE": "2025-07-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8770137754, "MOB. NO. 2": 91654222662, "ADDRESS": "CHAMUNDA PURI -31 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 17 [enrolled]: YASHAVI JAMLE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '9adecd29-4023-4bdf-a3dc-75b3f55a06e8'::uuid,
  'YASHAVI',
  'JAMLE',
  '2021-11-20'::date,
  '339320725381',
  null,
  null,
  'HINDU',
  'BHILALA',
  'ST'
);
insert into public.student_academic_registrations (
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
  '9adecd29-4023-4bdf-a3dc-75b3f55a06e8'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-49-N',
  null,
  null,
  '2025-07-01'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9adecd29-4023-4bdf-a3dc-75b3f55a06e8'::uuid,
  'father',
  'RAJKUMAR',
  'PRIVATE JOB',
  '7999015417',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9adecd29-4023-4bdf-a3dc-75b3f55a06e8'::uuid,
  'mother',
  'DEEPA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '9adecd29-4023-4bdf-a3dc-75b3f55a06e8'::uuid,
  'MADHUBAN COLONI 237 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '9adecd29-4023-4bdf-a3dc-75b3f55a06e8'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 17, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "YASHAVI", "SURNAME": "JAMLE", "FATHER": "RAJKUMAR", "MOTHER": "DEEPA", "DOB": "2021-11-20 00:00:00", "ADM NO.": "25-49-N", "SCH.": "25-49-N", "ADHAR CARD": 339320725381, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-07-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7999015417, "MOB. NO. 2": 7089647706, "ADDRESS": "MADHUBAN COLONI 237 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 18 [enrolled]: SHIVANGI KALYANE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  'SHIVANGI',
  'KALYANE',
  '2021-07-26'::date,
  '372031536458',
  '314802162',
  '38277434',
  'HINDU',
  'MEHTAR',
  'SC'
);
insert into public.student_academic_registrations (
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
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-03-N',
  null,
  null,
  '2025-03-04'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  'father',
  'RAVI',
  'NAGAR NIGAM',
  '6262890074',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  'mother',
  'ARCHNA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  'BHAWANI SAGAR 32/2 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  'BANK OF BARODA',
  '7240100029212',
  'BARB0DEWASX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b0e3af04-e4db-4899-9ee3-90ce9218cc1b'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 18, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHIVANGI", "SURNAME": "KALYANE", "FATHER": "RAVI", "MOTHER": "ARCHNA", "DOB": "2021-07-26 00:00:00", "ADM NO.": "25-03-N", "SCH.": "25-03-N", "ADHAR CARD": 372031536458, "SSSMID": 314802162, "FAMILY ID": 38277434, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 7240100029212, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "MEHTAR", "CATE.": "SC", "OCCUPATION": "NAGAR NIGAM", "ADMN.DATE": "2025-03-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 6262890074, "MOB. NO. 2": 7806041601, "ADDRESS": "BHAWANI SAGAR 32/2 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 19 [enrolled]: BHAVISHY PARMAR Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  'BHAVISHY',
  'PARMAR',
  '2021-12-04'::date,
  '361653257624',
  '318580619',
  '49576586',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-38-N',
  null,
  null,
  '2025-06-27'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  'father',
  'RAKESH',
  'SANTING',
  '9993277298',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  'mother',
  'ARCHNA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  'KANCHAN PURA KALUKHEDI DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  'BANK OF BARODA',
  '7240100028756',
  'BARB0DEWASX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '35a55236-b2d4-49e1-819b-aa4a9ddfc580'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 19, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "BHAVISHY", "SURNAME": "PARMAR", "FATHER": "RAKESH", "MOTHER": "ARCHNA", "DOB": "2021-12-04 00:00:00", "ADM NO.": "25-38-N", "SCH.": "25-38-N", "ADHAR CARD": 361653257624, "SSSMID": 318580619, "FAMILY ID": 49576586, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 7240100028756, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "SANTING", "ADMN.DATE": "2025-06-27 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9993277298, "MOB. NO. 2": 8085926994, "ADDRESS": "KANCHAN PURA KALUKHEDI DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 20 [enrolled]: MISHKA PACHROLE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  'MISHKA',
  'PACHROLE',
  '2021-12-24'::date,
  '886612155790',
  '314787866',
  '37912517',
  'HINDU',
  null,
  null
);
insert into public.student_academic_registrations (
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
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-45-N',
  null,
  null,
  '2025-07-01'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  'father',
  'VIKAS',
  'GOVT.',
  '9584235508',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  'mother',
  'EKTA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  'BIHARI GANJ-85-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  'BANK OF BARODA',
  '88140100005311',
  'BARB0VJDEWA',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5171edd5-6ac5-45a1-b033-2ce4aed466be'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 20, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "MISHKA", "SURNAME": "PACHROLE", "FATHER": "VIKAS", "MOTHER": "EKTA", "DOB": "2021-12-24 00:00:00", "ADM NO.": "25-45-N", "SCH.": "25-45-N", "ADHAR CARD": 886612155790, "SSSMID": 314787866, "FAMILY ID": 37912517, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 88140100005311, "IFSC CODE": "BARB0VJDEWA", "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "OCCUPATION": "GOVT.", "ADMN.DATE": "2025-07-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9584235508, "MOB. NO. 2": 9131669474, "ADDRESS": "BIHARI GANJ-85-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 21 [enrolled]: VRATIKA SISODIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'eb1c5a67-0d66-4257-814a-255acc56c784'::uuid,
  'VRATIKA',
  'SISODIYA',
  '2022-03-08'::date,
  null,
  '319056660',
  '20482028',
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  'eb1c5a67-0d66-4257-814a-255acc56c784'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-39-N',
  null,
  null,
  '2025-06-27'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'eb1c5a67-0d66-4257-814a-255acc56c784'::uuid,
  'father',
  'AJAY',
  'REALY',
  '7354497991',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'eb1c5a67-0d66-4257-814a-255acc56c784'::uuid,
  'mother',
  'RAKHI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'eb1c5a67-0d66-4257-814a-255acc56c784'::uuid,
  'DEVSHREE NAGAR -29-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'eb1c5a67-0d66-4257-814a-255acc56c784'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 21, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "VRATIKA", "SURNAME": "SISODIYA", "FATHER": "AJAY", "MOTHER": "RAKHI", "DOB": "2022-03-08 00:00:00", "ADM NO.": "25-39-N", "SCH.": "25-39-N", "ADHAR CARD": null, "SSSMID": 319056660, "FAMILY ID": 20482028, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "REALY", "ADMN.DATE": "27-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7354497991, "MOB. NO. 2": 9329679971, "ADDRESS": "DEVSHREE NAGAR -29-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 22 [enrolled]: GRANTH SHARMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  'GRANTH',
  'SHARMA',
  '2021-09-12'::date,
  '730886511856',
  '320610565',
  '29198684',
  'HINDU',
  'SUTAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-37-N',
  null,
  null,
  '2025-06-16'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  'father',
  'ABHISHEK',
  'PRIVATE JOB',
  '7440508942',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  'mother',
  'MEGA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  'KANCHAN PUR -WARD-5- DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  'BANK OF BARODA',
  '7248100011586',
  'BARB0DEWASX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'ad86e2b4-d603-474a-9c40-0e8bd7253b0b'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 22, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "GRANTH", "SURNAME": "SHARMA", "FATHER": "ABHISHEK", "MOTHER": "MEGA", "DOB": "2021-09-12 00:00:00", "ADM NO.": "25-37-N", "SCH.": "25-37-N", "ADHAR CARD": 730886511856, "SSSMID": 320610565, "FAMILY ID": 29198684, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 7248100011586, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "16-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7440508942, "MOB. NO. 2": 8305509724, "ADDRESS": "KANCHAN PUR -WARD-5- DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 23 [enrolled]: MADHVI DHAKAD Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  'MADHVI',
  'DHAKAD',
  '2022-07-30'::date,
  '861740691085',
  '318339077',
  '38367728',
  'HINDU',
  'DHAKAD',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-56-N',
  null,
  null,
  '2025-06-21'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  'father',
  'DEEPAK',
  'PRIVATE JOB',
  '8109094398',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  'mother',
  'DURGA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  'DEVSHREE NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  'BANDHAN BANK',
  '50230000051260',
  'BDBL0001880',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '474aaf3d-9a14-43ed-afcc-389cc2e2556b'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 23, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "MADHVI", "SURNAME": "DHAKAD", "FATHER": "DEEPAK", "MOTHER": "DURGA", "DOB": "30-07-2022", "ADM NO.": "25-56-N", "SCH.": "25-56-N", "ADHAR CARD": 861740691085, "SSSMID": 318339077, "FAMILY ID": 38367728, "BANK NAME": "BANDHAN BANK", "BANK AC. NO.": 50230000051260, "IFSC CODE": "BDBL0001880", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "21-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 8109094398, "MOB. NO. 2": 9174753996, "ADDRESS": "DEVSHREE NAGAR", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 24 [enrolled]: SHIVAYA GEHLOT Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'd77038d5-99a3-42d9-b823-15f6e69cf80c'::uuid,
  'SHIVAYA',
  'GEHLOT',
  '2021-03-20'::date,
  null,
  null,
  null,
  'HINDU',
  null,
  null
);
insert into public.student_academic_registrations (
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
  'd77038d5-99a3-42d9-b823-15f6e69cf80c'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-40-N',
  null,
  null,
  '2021-03-20'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd77038d5-99a3-42d9-b823-15f6e69cf80c'::uuid,
  'father',
  'AKHILESH',
  null,
  '8770632460',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd77038d5-99a3-42d9-b823-15f6e69cf80c'::uuid,
  'mother',
  'PRATIBHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'd77038d5-99a3-42d9-b823-15f6e69cf80c'::uuid,
  '27/MANGALMURTI NAGAR DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'd77038d5-99a3-42d9-b823-15f6e69cf80c'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 24, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHIVAYA", "SURNAME": "GEHLOT", "FATHER": "AKHILESH", "MOTHER": "PRATIBHA", "DOB": "20-03-2021", "ADM NO.": "25-40-N", "SCH.": "25-40-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "OCCUPATION": null, "ADMN.DATE": "20/03/2021", "ADM .CLASS": "NUR", "MOB. NO. 1": 8770632460, "MOB. NO. 2": 7000674724, "ADDRESS": "27/MANGALMURTI NAGAR DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 25 [enrolled]: BHAVYA SHARMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  'BHAVYA',
  'SHARMA',
  '2021-09-03'::date,
  '996853769091',
  '313544878',
  '37922749',
  'HINDU',
  'BRAHMAN',
  'GEN'
);
insert into public.student_academic_registrations (
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
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-35-N',
  null,
  null,
  '2025-06-25'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  'father',
  'KAILESH',
  'PRIVATE JOB',
  '7898490235',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  'mother',
  'MEENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  'KANCHAN PUR-03-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  'BANK OF INDIA',
  '890018210017348',
  'BKID0008900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'fc0efd57-d747-4eec-aca8-9b758c8db1c7'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 25, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "BHAVYA", "SURNAME": "SHARMA", "FATHER": "KAILESH", "MOTHER": "MEENA", "DOB": "2021-09-03 00:00:00", "ADM NO.": "25-35-N", "SCH.": "25-35-N", "ADHAR CARD": 996853769091, "SSSMID": 313544878, "FAMILY ID": 37922749, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 890018210017348, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BRAHMAN", "CATE.": "GEN", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "25-6-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7898490235, "MOB. NO. 2": 6268383708, "ADDRESS": "KANCHAN PUR-03-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 26 [enrolled]: LAKSHITA BACHANIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'd9f511f8-d2b5-4cc8-828e-b2d63e17ddd0'::uuid,
  'LAKSHITA',
  'BACHANIYA',
  '2023-01-28'::date,
  '630571422049',
  '319901644',
  '22114047',
  'HINDU',
  'KORKU',
  'ST'
);
insert into public.student_academic_registrations (
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
  'd9f511f8-d2b5-4cc8-828e-b2d63e17ddd0'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-36-N',
  null,
  null,
  '2025-06-18'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd9f511f8-d2b5-4cc8-828e-b2d63e17ddd0'::uuid,
  'father',
  'LAKHAN KUMAR',
  'PRIVATE JOB',
  '8889800365',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd9f511f8-d2b5-4cc8-828e-b2d63e17ddd0'::uuid,
  'mother',
  'ANITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'd9f511f8-d2b5-4cc8-828e-b2d63e17ddd0'::uuid,
  'ARJUN NAGAR-6/B DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'd9f511f8-d2b5-4cc8-828e-b2d63e17ddd0'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 26, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "LAKSHITA", "SURNAME": "BACHANIYA", "FATHER": "LAKHAN KUMAR", "MOTHER": "ANITA", "DOB": "28-01-2023", "ADM NO.": "25-36-N", "SCH.": "25-36-N", "ADHAR CARD": 630571422049, "SSSMID": 319901644, "FAMILY ID": 22114047, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KORKU", "CATE.": "ST", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "18-6-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 8889800365, "MOB. NO. 2": 8815433540, "ADDRESS": "ARJUN NAGAR-6/B DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 27 [enrolled]: HRITIKA SHARMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  'HRITIKA',
  'SHARMA',
  '2021-12-22'::date,
  '888841399007',
  null,
  '48678963',
  'HINDU',
  'LOHAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-55-N',
  null,
  null,
  '2025-04-28'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  'father',
  'ANAND KUMAR',
  'SER VICES',
  '7805952997',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  'mother',
  'SANDHYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  'VISHNU COLONY 34-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  'N.J.G.BANK',
  '10411010001192',
  'BKID0NAMRGB',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '7c727d42-dcad-4cdd-b3e7-5408e1f11e3a'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 27, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "HRITIKA", "SURNAME": "SHARMA", "FATHER": "ANAND KUMAR", "MOTHER": "SANDHYA", "DOB": "22-12-2021", "ADM NO.": "25-55-N", "SCH.": "25-55-N", "ADHAR CARD": 888841399007, "SSSMID": null, "FAMILY ID": 48678963, "BANK NAME": "N.J.G.BANK", "BANK AC. NO.": 10411010001192, "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "LOHAR", "CATE.": "OBC", "OCCUPATION": "SER VICES", "ADMN.DATE": "28-04-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7805952997, "MOB. NO. 2": 9628815470, "ADDRESS": "VISHNU COLONY 34-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 28 [enrolled]: DIVYANSHI VERMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  'DIVYANSHI',
  'VERMA',
  '2022-06-27'::date,
  '504923409007',
  '318695990',
  '20787341',
  'HINDU',
  'NAI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-54-N',
  null,
  null,
  '2025-08-04'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  'father',
  'SANDEEP',
  'PRIVATE JOB',
  '7354606551',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  'mother',
  'SWATI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  'VIVEK NAGAR-15-RADHA GANJ DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  'HDFC BANK',
  '50100246761352',
  'HDFC0000404',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '69a11b14-9b2c-450d-b01a-60b29e246540'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 28, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DIVYANSHI", "SURNAME": "VERMA", "FATHER": "SANDEEP", "MOTHER": "SWATI", "DOB": "27-06-2022", "ADM NO.": "25-54-N", "SCH.": "25-54-N", "ADHAR CARD": 504923409007, "SSSMID": 318695990, "FAMILY ID": 20787341, "BANK NAME": "HDFC BANK", "BANK AC. NO.": 50100246761352, "IFSC CODE": "HDFC0000404", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-08-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7354606551, "MOB. NO. 2": 7354606551, "ADDRESS": "VIVEK NAGAR-15-RADHA GANJ DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 29 [enrolled]: HARSHPRATAP SINGH CHOUHAN Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  'HARSHPRATAP SINGH',
  'CHOUHAN',
  '2021-08-16'::date,
  '877516572112',
  '318666658',
  '20061268',
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-53-N',
  null,
  null,
  '2025-04-23'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  'father',
  'DEEPAK',
  'ARMY',
  '9149950925',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  'mother',
  'JAMNA BAI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  'ARJUN NAGAR-8-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  'SBI',
  '20289760417',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c241795d-f80d-4fd6-9e23-4328e9a53c7c'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 29, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "HARSHPRATAP SINGH", "SURNAME": "CHOUHAN", "FATHER": "DEEPAK", "MOTHER": "JAMNA BAI", "DOB": "16-8-2021", "ADM NO.": "25-53-N", "SCH.": "25-53-N", "ADHAR CARD": 877516572112, "SSSMID": 318666658, "FAMILY ID": 20061268, "BANK NAME": "SBI", "BANK AC. NO.": 20289760417, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "ARMY", "ADMN.DATE": "23-4-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9149950925, "MOB. NO. 2": 9424715505, "ADDRESS": "ARJUN NAGAR-8-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 30 [enrolled]: DAKSHIKA NO Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  'DAKSHIKA',
  'NO',
  '2021-02-07'::date,
  null,
  null,
  null,
  'HINDU',
  null,
  null
);
insert into public.student_academic_registrations (
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
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-52-N',
  null,
  null,
  '2025-04-23'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  'father',
  'MOHIT KUMAR',
  'BNP',
  '7015927330',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  'mother',
  'NISHA RANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  'CHAMUNDA PURI 24-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  'SBI',
  '32786429992',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '410d0d9e-e529-453b-a4f2-accfa44ecf74'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 30, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DAKSHIKA", "SURNAME": "NO", "FATHER": "MOHIT KUMAR", "MOTHER": "NISHA RANI", "DOB": "2021-02-07 00:00:00", "ADM NO.": "25-52-N", "SCH.": "25-52-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": "SBI", "BANK AC. NO.": 32786429992, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "OCCUPATION": "BNP", "ADMN.DATE": "23-4-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7015927330, "MOB. NO. 2": 7015927330, "ADDRESS": "CHAMUNDA PURI 24-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 31 [enrolled]: DEVRAJ MAKWANA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  'DEVRAJ',
  'MAKWANA',
  '2020-09-21'::date,
  null,
  null,
  null,
  'HINDU',
  'NUT',
  'SC'
);
insert into public.student_academic_registrations (
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
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-71-N',
  null,
  null,
  '2025-01-07'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  'father',
  'DHARMENDRA',
  'DRIVER',
  '8085235635',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  'mother',
  'HARITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  'KALUKHEDI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  'BANK OF BARODA',
  '7248100025553',
  'BARB0DEWASX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'fb709506-0905-4df8-837c-c822fa015b9a'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 31, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DEVRAJ", "SURNAME": "MAKWANA", "FATHER": "DHARMENDRA", "MOTHER": "HARITA", "DOB": "21-09-2020", "ADM NO.": "25-71-N", "SCH.": "25-71-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 7248100025553, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "NUT", "CATE.": "SC", "OCCUPATION": "DRIVER", "ADMN.DATE": "2025-01-07 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 8085235635, "MOB. NO. 2": 8085235635, "ADDRESS": "KALUKHEDI", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 32 [enrolled]: KARTIK YADAV Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  'KARTIK',
  'YADAV',
  '2020-11-25'::date,
  null,
  null,
  null,
  'HINDU',
  'AHIR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-70-N',
  null,
  null,
  '2025-07-14'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  'father',
  'SANDEEP SINGH',
  'POLICE SI',
  '7224995510',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  'mother',
  'BABY',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  'BNP Q. 5096 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  'SBI',
  '20254746119',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5ca7c73a-fd11-490c-ba9d-d17f8f37117e'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 32, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "KARTIK", "SURNAME": "YADAV", "FATHER": "SANDEEP SINGH", "MOTHER": "BABY", "DOB": "25/11/2020", "ADM NO.": "25-70-N", "SCH.": "25-70-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": "SBI", "BANK AC. NO.": 20254746119, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "AHIR", "CATE.": "OBC", "OCCUPATION": "POLICE SI", "ADMN.DATE": "14/07/2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7224995510, "MOB. NO. 2": 7267817899, "ADDRESS": "BNP Q. 5096 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 33 [enrolled]: YASHVARDHAN SINGH SOLANKI Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '76cf7eef-868f-46af-8f0c-f327764596cb'::uuid,
  'YASHVARDHAN SINGH',
  'SOLANKI',
  '2021-08-17'::date,
  null,
  null,
  null,
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  '76cf7eef-868f-46af-8f0c-f327764596cb'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-68-N',
  null,
  null,
  '2025-05-04'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '76cf7eef-868f-46af-8f0c-f327764596cb'::uuid,
  'father',
  'DHARMENDRA',
  'TEACHAR',
  '9691338553',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '76cf7eef-868f-46af-8f0c-f327764596cb'::uuid,
  'mother',
  'REENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '76cf7eef-868f-46af-8f0c-f327764596cb'::uuid,
  'RADHACHANDRA NAGAR-144 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '76cf7eef-868f-46af-8f0c-f327764596cb'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 33, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "YASHVARDHAN SINGH", "SURNAME": "SOLANKI", "FATHER": "DHARMENDRA", "MOTHER": "REENA", "DOB": "17/08/2021", "ADM NO.": "25-68-N", "SCH.": "25-68-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "TEACHAR", "ADMN.DATE": "2025-05-04 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9691338553, "MOB. NO. 2": 7974811448, "ADDRESS": "RADHACHANDRA NAGAR-144 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 34 [enrolled]: TWINKEL JAYSAWAL Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '164bac74-f3cc-4ec9-9259-522d069d79be'::uuid,
  'TWINKEL',
  'JAYSAWAL',
  '2021-04-01'::date,
  '954013200210',
  '318874650',
  '21288713',
  'HINDU',
  'KALAL',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '164bac74-f3cc-4ec9-9259-522d069d79be'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-43-N',
  null,
  null,
  '2025-06-19'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '164bac74-f3cc-4ec9-9259-522d069d79be'::uuid,
  'father',
  'ROHIT',
  null,
  '6232050350',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '164bac74-f3cc-4ec9-9259-522d069d79be'::uuid,
  'mother',
  'TULJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '164bac74-f3cc-4ec9-9259-522d069d79be'::uuid,
  'VISHAL NAGAR ITAWA DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '164bac74-f3cc-4ec9-9259-522d069d79be'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 34, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "TWINKEL", "SURNAME": "JAYSAWAL", "FATHER": "ROHIT", "MOTHER": "TULJA", "DOB": "2021-04-01 00:00:00", "ADM NO.": "25-43-N", "SCH.": "25-43-N", "ADHAR CARD": 954013200210, "SSSMID": 318874650, "FAMILY ID": 21288713, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "19-06-2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 6232050350, "MOB. NO. 2": 9893267675, "ADDRESS": "VISHAL NAGAR ITAWA DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 35 [enrolled]: VEDANSH JALODIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '57429ace-a54f-442e-ab53-944a1851228e'::uuid,
  'VEDANSH',
  'JALODIYA',
  '2022-06-27'::date,
  '357795716659',
  '319041449',
  '37428278',
  'HINDU',
  'DHOBI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '57429ace-a54f-442e-ab53-944a1851228e'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-74-N',
  null,
  null,
  '2025-07-22'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '57429ace-a54f-442e-ab53-944a1851228e'::uuid,
  'father',
  'AMAR',
  'ADVOCATE',
  '7999617141',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '57429ace-a54f-442e-ab53-944a1851228e'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '57429ace-a54f-442e-ab53-944a1851228e'::uuid,
  '138-BHOPAL CHOURAHA DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '57429ace-a54f-442e-ab53-944a1851228e'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 35, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "VEDANSH", "SURNAME": "JALODIYA", "FATHER": "AMAR", "MOTHER": "POOJA", "DOB": "27/06/2022", "ADM NO.": "25-74-N", "SCH.": "25-74-N", "ADHAR CARD": 357795716659, "SSSMID": 319041449, "FAMILY ID": 37428278, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "DHOBI", "CATE.": "OBC", "OCCUPATION": "ADVOCATE", "ADMN.DATE": "22/7/2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 7999617141, "MOB. NO. 2": 9691195345, "ADDRESS": "138-BHOPAL CHOURAHA DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 36 [enrolled]: MOKSH-24 YADAV Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  'MOKSH-24',
  'YADAV',
  '2021-08-11'::date,
  null,
  '317968919',
  '44834086',
  'HINDU',
  'GAVLI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  '2026-27',
  'LKG',
  null,
  '24-69-N',
  null,
  null,
  '2024-06-22'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  'father',
  'ROOPSINGH',
  null,
  '9926624621',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  'mother',
  'NIRMALA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  '88 BHAWANI SAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  null,
  null,
  '8',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '86832add-0df0-4666-97ea-74a9d4606278'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 36, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "MOKSH-24", "SURNAME": "YADAV", "FATHER": "ROOPSINGH", "MOTHER": "NIRMALA", "DOB": "2021-08-11 00:00:00", "ADM NO.": "24-69-N", "SCH.": "24-69-N", "ADHAR CARD": null, "SSSMID": 317968919, "FAMILY ID": 44834086, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": 8, "RELIGION": "HINDU", "CASTE": "GAVLI", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "2024-06-22 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 9926624621, "MOB. NO. 2": 9926624621, "ADDRESS": "88 BHAWANI SAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 37 [enrolled]: HARSHIT FATROD Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  'HARSHIT',
  'FATROD',
  '2021-01-29'::date,
  'A-722760828916',
  '317706247',
  '20271567',
  'HINDU',
  'MEHTAR',
  'SC'
);
insert into public.student_academic_registrations (
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
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  '2026-27',
  'LKG',
  null,
  '24-70-N',
  null,
  null,
  '2024-07-02'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  'father',
  'ROHIT',
  null,
  '7049053056',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  'mother',
  'ISHIKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  '417-NOSHRA BAD COLONI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  'BANK OF BARODA',
  '88140100011478',
  '14',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c77bd283-3b30-4a4f-93ca-b6f6edc98607'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 37, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "HARSHIT", "SURNAME": "FATROD", "FATHER": "ROHIT", "MOTHER": "ISHIKA", "DOB": "29-01-2021", "ADM NO.": "24-70-N", "SCH.": "24-70-N", "ADHAR CARD": "A-722760828916", "SSSMID": 317706247, "FAMILY ID": 20271567, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 88140100011478, "IFSC CODE": 14, "RELIGION": "HINDU", "CASTE": "MEHTAR", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": "2024-07-02 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 7049053056, "MOB. NO. 2": 7049053056, "ADDRESS": "417-NOSHRA BAD COLONI", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 38 [enrolled]: VISHWAJEET RAJPUT
insert into public.students (
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
  'e3ee8806-4b76-4f77-9551-5bcb932f9d06'::uuid,
  'VISHWAJEET',
  'RAJPUT',
  '2021-12-22'::date,
  null,
  null,
  null,
  'HINDU',
  null,
  null
);
insert into public.student_academic_registrations (
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
  'e3ee8806-4b76-4f77-9551-5bcb932f9d06'::uuid,
  '2026-27',
  'LKG',
  null,
  null,
  null,
  null,
  '2021-12-22'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e3ee8806-4b76-4f77-9551-5bcb932f9d06'::uuid,
  'father',
  'PRADEEP',
  null,
  '8839426461',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e3ee8806-4b76-4f77-9551-5bcb932f9d06'::uuid,
  'mother',
  'REKHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'e3ee8806-4b76-4f77-9551-5bcb932f9d06'::uuid,
  '44/CHAMUNDAPURI DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'e3ee8806-4b76-4f77-9551-5bcb932f9d06'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 38, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "VISHWAJEET", "SURNAME": "RAJPUT", "FATHER": "PRADEEP", "MOTHER": "REKHA", "DOB": "22/12/2021", "ADM NO.": null, "SCH.": null, "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "OCCUPATION": null, "ADMN.DATE": "22/12/2021", "ADM .CLASS": "NUR", "MOB. NO. 1": 8839426461, "MOB. NO. 2": 9617297281, "ADDRESS": "44/CHAMUNDAPURI DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 39 [enrolled]: NAVIKA NAGLE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '0dccbb15-0f23-40b8-aae6-ff35b87400b2'::uuid,
  'NAVIKA',
  'NAGLE',
  '2022-05-17'::date,
  'A-307805488512',
  '316665612',
  '21157118',
  'HINDU',
  'MEHRA',
  'SC'
);
insert into public.student_academic_registrations (
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
  '0dccbb15-0f23-40b8-aae6-ff35b87400b2'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-78-N',
  null,
  null,
  '2025-11-07'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0dccbb15-0f23-40b8-aae6-ff35b87400b2'::uuid,
  'father',
  'NITESH',
  'PVT JOB',
  '913122115',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0dccbb15-0f23-40b8-aae6-ff35b87400b2'::uuid,
  'mother',
  'KIRAN',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0dccbb15-0f23-40b8-aae6-ff35b87400b2'::uuid,
  '2 GANGA NAGAR DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0dccbb15-0f23-40b8-aae6-ff35b87400b2'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 39, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "NAVIKA", "SURNAME": "NAGLE", "FATHER": "NITESH", "MOTHER": "KIRAN", "DOB": "17/05/2022", "ADM NO.": "25-78-N", "SCH.": "25-78-N", "ADHAR CARD": "A-307805488512", "SSSMID": 316665612, "FAMILY ID": 21157118, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "MEHRA", "CATE.": "SC", "OCCUPATION": "PVT JOB", "ADMN.DATE": "2025-11-07 00:00:00", "ADM .CLASS": "NUR", "MOB. NO. 1": 913122115, "MOB. NO. 2": 913122115, "ADDRESS": "2 GANGA NAGAR DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 40 [enrolled]: ISHWER RAJOURE
insert into public.students (
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
  '649126f1-9cb2-4090-ad52-354f776d3d2e'::uuid,
  'ISHWER',
  'RAJOURE',
  '2021-10-23'::date,
  'A-561473518230',
  '180550664',
  '20206283',
  'HINDU',
  'KHATIK',
  'SC'
);
insert into public.student_academic_registrations (
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
  '649126f1-9cb2-4090-ad52-354f776d3d2e'::uuid,
  '2026-27',
  'LKG',
  null,
  '26-30-L',
  null,
  null,
  '2026-04-27'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '649126f1-9cb2-4090-ad52-354f776d3d2e'::uuid,
  'father',
  'YASH',
  'BUSNISS',
  '9009030737',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '649126f1-9cb2-4090-ad52-354f776d3d2e'::uuid,
  'mother',
  'NANDANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '649126f1-9cb2-4090-ad52-354f776d3d2e'::uuid,
  'NAI ABADI - 11/11',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '649126f1-9cb2-4090-ad52-354f776d3d2e'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 40, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "ISHWER", "SURNAME": "RAJOURE", "FATHER": "YASH", "MOTHER": "NANDANI", "DOB": "2021-10-23 00:00:00", "ADM NO.": "26-30-L", "SCH.": null, "ADHAR CARD": "A-561473518230", "SSSMID": 180550664, "FAMILY ID": 20206283, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KHATIK", "CATE.": "SC", "OCCUPATION": "BUSNISS", "ADMN.DATE": "2026-04-27 00:00:00", "ADM .CLASS": "LKG", "MOB. NO. 1": 9009030737, "MOB. NO. 2": 9009005252, "ADDRESS": "NAI ABADI - 11/11", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 41 [enrolled]: SOURYA SINGH RAJPUT Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  'SOURYA SINGH',
  'RAJPUT',
  '2022-01-17'::date,
  'A-568247086410',
  null,
  null,
  'HINDU',
  'RAJPUT',
  'GEN'
);
insert into public.student_academic_registrations (
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
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-80-N',
  null,
  null,
  '2025-08-23'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  'father',
  'DEEP SINGH',
  'ARMY',
  '9753678367',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  'mother',
  'REENA KUNWAR',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  'ARJUN NAGAR DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  'MPGB',
  '16210410003175',
  'BKID0NAMRGB',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '40a9e234-d804-4ce7-9844-831fd4ac90d8'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 41, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SOURYA SINGH", "SURNAME": "RAJPUT", "FATHER": "DEEP SINGH", "MOTHER": "REENA KUNWAR", "DOB": "17/01/2022", "ADM NO.": "25-80-N", "SCH.": "25-80-N", "ADHAR CARD": "A-568247086410", "SSSMID": null, "FAMILY ID": null, "BANK NAME": "MPGB", "BANK AC. NO.": 16210410003175, "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "ARMY", "ADMN.DATE": "23/08/2025", "ADM .CLASS": "NUR", "MOB. NO. 1": 9753678367, "MOB. NO. 2": 9754222836, "ADDRESS": "ARJUN NAGAR DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 42 [enrolled]: RAGINI CHAUHAN Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '31443692-2a66-45dd-99dc-2be3a1c3cadd'::uuid,
  'RAGINI',
  'CHAUHAN',
  '2021-02-18'::date,
  null,
  null,
  null,
  null,
  null,
  null
);
insert into public.student_academic_registrations (
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
  '31443692-2a66-45dd-99dc-2be3a1c3cadd'::uuid,
  '2026-27',
  'LKG',
  null,
  '26-34-L',
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '31443692-2a66-45dd-99dc-2be3a1c3cadd'::uuid,
  'father',
  'SATISH',
  null,
  null,
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '31443692-2a66-45dd-99dc-2be3a1c3cadd'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '31443692-2a66-45dd-99dc-2be3a1c3cadd'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 42, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "RAGINI", "SURNAME": "CHAUHAN", "FATHER": "SATISH", "MOTHER": "POOJA", "DOB": "2021-02-18 00:00:00", "ADM NO.": "26-34-L", "SCH.": "26-34-L", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": null, "CASTE": null, "CATE.": null, "OCCUPATION": null, "ADMN.DATE": null, "ADM .CLASS": null, "MOB. NO. 1": null, "MOB. NO. 2": null, "ADDRESS": null, "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 43 [enrolled]: SOMESH SONI
insert into public.students (
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
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  'SOMESH',
  'SONI',
  '2021-12-11'::date,
  'A- 719434715850',
  '322855137',
  '41774590',
  'HINDU',
  'SUTAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  '2026-27',
  'LKG',
  null,
  '26-50-L',
  null,
  null,
  '2026-07-03'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  'father',
  'BHASKAR',
  'GOVT. JOB',
  '9424887612',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  'mother',
  'RAJNI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  'RADHAGANJ - 99',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  'BANK OF INDIA',
  'A/C 914510110002413',
  'BKID00009145',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b5cf0ac6-9652-4521-a386-0f4dcb64fee7'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 43, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SOMESH", "SURNAME": "SONI", "FATHER": "BHASKAR", "MOTHER": "RAJNI", "DOB": "2021-12-11 00:00:00", "ADM NO.": "26-50-L", "SCH.": null, "ADHAR CARD": "A- 719434715850", "SSSMID": 322855137, "FAMILY ID": 41774590, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": "A/C 914510110002413", "IFSC CODE": "BKID00009145", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2026-07-03 00:00:00", "ADM .CLASS": "LKG", "MOB. NO. 1": 9424887612, "MOB. NO. 2": 939945768, "ADDRESS": "RADHAGANJ - 99", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 44 [enrolled]: MANSHVI GOUD
insert into public.students (
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
  'ee737e10-40c4-40de-847a-eeb27bb9c1bb'::uuid,
  'MANSHVI',
  'GOUD',
  '2020-11-10'::date,
  'A- 238168991008',
  '314155697',
  '42168762',
  'HINDU',
  'KALOTA',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'ee737e10-40c4-40de-847a-eeb27bb9c1bb'::uuid,
  '2026-27',
  'LKG',
  null,
  '26-51-L',
  null,
  null,
  '2026-07-09'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ee737e10-40c4-40de-847a-eeb27bb9c1bb'::uuid,
  'father',
  'YOGESH KRISH',
  'BUSNISS',
  '7441191751',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ee737e10-40c4-40de-847a-eeb27bb9c1bb'::uuid,
  'mother',
  'RINKU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'ee737e10-40c4-40de-847a-eeb27bb9c1bb'::uuid,
  'MADHUBAN COLONY-273',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'ee737e10-40c4-40de-847a-eeb27bb9c1bb'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 44, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "MANSHVI", "SURNAME": "GOUD", "FATHER": "YOGESH KRISH", "MOTHER": "RINKU", "DOB": "2020-11-10 00:00:00", "ADM NO.": "26-51-L", "SCH.": null, "ADHAR CARD": "A- 238168991008", "SSSMID": 314155697, "FAMILY ID": 42168762, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.": "OBC", "OCCUPATION": "BUSNISS", "ADMN.DATE": "2026-07-09 00:00:00", "ADM .CLASS": "LKG", "MOB. NO. 1": 7441191751, "MOB. NO. 2": 7067403338, "ADDRESS": "MADHUBAN COLONY-273", "LAST SCHOOL": null}}'::jsonb
);

-- LKG row 47 [rte]: SHIVANSH BAIRAGI
insert into public.students (
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
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  'SHIVANSH',
  'BAIRAGI',
  '2021-08-11'::date,
  '255738245526',
  '318139032',
  '36974039',
  'HINDU',
  'BAIRAGI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-10-N',
  '2261',
  null,
  '2025-03-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  'father',
  'NITESH',
  'MARKRTE',
  '9981803163',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  'mother',
  'GIRIJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  'PRATAP NAGAR -A/6 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  'UNION BANK',
  '373502010024809',
  'UBIN0537357',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '092101b5-3526-4bc7-8326-80cd7a55e905'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 47, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "SHIVANSH", "SURNAME": "BAIRAGI", "FATHER": "NITESH", "MOTHER": "GIRIJA", "DOB": "2021-08-11 00:00:00", "ADM NO.": "25-10-N", "SCH.": 2261, "ADHAR CARD": 255738245526, "SSSMID": 318139032, "FAMILY ID": 36974039, "BANK NAME": "UNION BANK", "BANK AC. NO.": 373502010024809, "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "BAIRAGI", "CATE.": "OBC", "OCCUPATION": "MARKRTE", "ADMN.DATE": "2025-03-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 9981803163, "ADDRESS": "PRATAP NAGAR -A/6 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 48 [rte]: RITVIKA NAGAR
insert into public.students (
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
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  'RITVIKA',
  'NAGAR',
  '2022-03-20'::date,
  '760613725830',
  '315173218',
  '36654885',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-08-N',
  '2256',
  null,
  '2025-03-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  'father',
  'SAVAN',
  'PRIVATE JOB',
  '7610507138',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  'mother',
  'URMILA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  'NAI BASTI KALUKHEDI DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  'UNION BANK',
  '373502010027270',
  'UBIN0537357',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b14d1d0e-78c8-4545-917a-f7789e4fb0c9'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 48, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "RITVIKA", "SURNAME": "NAGAR", "FATHER": "SAVAN", "MOTHER": "URMILA", "DOB": "20-03-2022", "ADM NO.": "25-08-N", "SCH.": 2256, "ADHAR CARD": 760613725830, "SSSMID": 315173218, "FAMILY ID": 36654885, "BANK NAME": "UNION BANK", "BANK AC. NO.": 373502010027270, "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-03-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 7610507138, "ADDRESS": "NAI BASTI KALUKHEDI DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 49 [rte]: CHETAN KUSHWAHA
insert into public.students (
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
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  'CHETAN',
  'KUSHWAHA',
  '2021-12-14'::date,
  '225196318165',
  '318182330',
  '44252083',
  'HINDU',
  'KACHI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-12-N',
  '2262',
  null,
  '2025-03-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  'father',
  'SANTOSH',
  'PRIVATE JOB',
  '7697671793',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  'mother',
  'SEEMA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  'PRATAP NAGAR -108 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  'SBI',
  '34709919063',
  'SBIN0003864',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c2d6c74f-8f19-4f91-89cf-af30a0648aff'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 49, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "CHETAN", "SURNAME": "KUSHWAHA", "FATHER": "SANTOSH", "MOTHER": "SEEMA", "DOB": "14-12-2021", "ADM NO.": "25-12-N", "SCH.": 2262, "ADHAR CARD": 225196318165, "SSSMID": 318182330, "FAMILY ID": 44252083, "BANK NAME": "SBI", "BANK AC. NO.": 34709919063, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "KACHI", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-03-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 7697671793, "ADDRESS": "PRATAP NAGAR -108 DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 50 [rte]: KHYATI CHHAREL
insert into public.students (
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
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  'KHYATI',
  'CHHAREL',
  '2021-04-05'::date,
  '423631202361',
  '319307335',
  '46861529',
  'HINDU',
  'BHILALA',
  'ST'
);
insert into public.student_academic_registrations (
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
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-07-N',
  '2273',
  null,
  '2025-03-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  'father',
  'JAYDEEP',
  'FARMER',
  '7999385483',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  'mother',
  'RITU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  'DEVSHREE NAGAR-23/A- DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  'BANK OF INDIA',
  '881310110010966',
  'BKID0008813',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '2ed2f026-1925-43f1-8e9c-3a00c40880a2'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 50, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "KHYATI", "SURNAME": "CHHAREL", "FATHER": "JAYDEEP", "MOTHER": "RITU", "DOB": "2021-04-05 00:00:00", "ADM NO.": "25-07-N", "SCH.": 2273, "ADHAR CARD": 423631202361, "SSSMID": 319307335, "FAMILY ID": 46861529, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 881310110010966, "IFSC CODE": "BKID0008813", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "FARMER", "ADMN.DATE": "2025-03-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 7999385483, "ADDRESS": "DEVSHREE NAGAR-23/A- DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 51 [rte]: DIVISHA VERMA
insert into public.students (
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
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  'DIVISHA',
  'VERMA',
  '2021-02-10'::date,
  '824731214700',
  '314057157',
  '45318235',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-09-N',
  '2274',
  null,
  '2025-03-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  'father',
  'YOGENDRA',
  'PRIVATE JOB',
  '9131091025',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  'mother',
  'ANJANA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  'CHAMUNDA 4-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  'SBI',
  '53010740075',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0d7b6bae-3b4c-4dd5-b2d4-b9e9276376c9'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 51, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "DIVISHA", "SURNAME": "VERMA", "FATHER": "YOGENDRA", "MOTHER": "ANJANA", "DOB": "2021-02-10 00:00:00", "ADM NO.": "25-09-N", "SCH.": 2274, "ADHAR CARD": 824731214700, "SSSMID": 314057157, "FAMILY ID": 45318235, "BANK NAME": "SBI", "BANK AC. NO.": 53010740075, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-03-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 9131091025, "ADDRESS": "CHAMUNDA 4-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 52 [rte]: ANVIKA MALVIYA
insert into public.students (
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
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  'ANVIKA',
  'MALVIYA',
  '2022-03-04'::date,
  '991152523358',
  '315256415',
  '48590152',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-14-N',
  '2280',
  null,
  '2025-06-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  'father',
  'NITESH',
  'PRIVATE JOB',
  '9098341369',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  'mother',
  'MAYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  'ARJUN NAGAR RADHAGANJ -4-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  'BANK OF INDIA',
  '890310110005906',
  'BKID0008903',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '4d0934a0-df6d-4b2a-aa96-c34daa33426a'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 52, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "ANVIKA", "SURNAME": "MALVIYA", "FATHER": "NITESH", "MOTHER": "MAYA", "DOB": "2022-03-04 00:00:00", "ADM NO.": "25-14-N", "SCH.": 2280, "ADHAR CARD": 991152523358, "SSSMID": 315256415, "FAMILY ID": 48590152, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 890310110005906, "IFSC CODE": "BKID0008903", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-06-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 9098341369, "ADDRESS": "ARJUN NAGAR RADHAGANJ -4-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 53 [rte]: ANANYA KHARADIYA
insert into public.students (
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
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  'ANANYA',
  'KHARADIYA',
  '2022-05-04'::date,
  '554108428793',
  '315386799',
  '20446966',
  'HINDU',
  'KUMHAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-11-N',
  '2259',
  null,
  '2025-03-06'::date,
  'NUR',
  null,
  null,
  'NEW',
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  'father',
  'SHUBHAM',
  'PRIVATE JOB',
  '9981796389',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  'mother',
  'JYOTI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  'MAHANKAL COLONY DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  'POST BANK',
  '27810119906',
  'IPOS0000001',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '1bf0756b-c025-44c7-90a9-89c0dab6ec07'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 53, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "ANANYA", "SURNAME": "KHARADIYA", "FATHER": "SHUBHAM", "MOTHER": "JYOTI", "DOB": "2022-05-04 00:00:00", "ADM NO.": "25-11-N", "SCH.": 2259, "ADHAR CARD": 554108428793, "SSSMID": 315386799, "FAMILY ID": 20446966, "BANK NAME": "POST BANK", "BANK AC. NO.": 27810119906, "IFSC CODE": "IPOS0000001", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.": "OBC", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2025-03-06 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 9981796389, "ADDRESS": "MAHANKAL COLONY DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- LKG row 55 [left]: ATHARV GUPTA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'f8241e43-5c42-405a-9c43-b6226369d06d'::uuid,
  'ATHARV',
  'GUPTA',
  '2022-06-30'::date,
  null,
  null,
  null,
  'HINDU',
  'VASHY',
  'GEN'
);
insert into public.student_academic_registrations (
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
  'f8241e43-5c42-405a-9c43-b6226369d06d'::uuid,
  '2026-27',
  'LKG',
  null,
  '25-18-N',
  null,
  null,
  '2025-06-18'::date,
  'NUR',
  null,
  null,
  'NEW',
  'LEFT',
  false,
  false
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f8241e43-5c42-405a-9c43-b6226369d06d'::uuid,
  'father',
  'SAURAV',
  'BUISNESH',
  '9827730575',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f8241e43-5c42-405a-9c43-b6226369d06d'::uuid,
  'mother',
  'NIDHI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f8241e43-5c42-405a-9c43-b6226369d06d'::uuid,
  'NUTAN NAGAR-50-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f8241e43-5c42-405a-9c43-b6226369d06d'::uuid,
  '2026-27',
  'LKG',
  'nur-ukg.xlsx',
  'LKG',
  '{"sheet_name": "LKG", "row_number": 55, "section": "left", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "ATHARV", "SURNAME": "GUPTA", "FATHER": "SAURAV", "MOTHER": "NIDHI", "DOB": "30-06-2022", "ADM NO.": "25-18-N", "SCH.": "25-18-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "VASHY", "CATE.": "GEN", "OCCUPATION": "BUISNESH", "ADMN.DATE": "18-06-2025", "ADM .CLASS": "NUR", "MOB. NO.": 9827730575, "ADDRESS": "NUTAN NAGAR-50-DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- UKG row 3 [enrolled]: VANSH DELMIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '5933c8d8-e088-4be5-af5d-0cd83f456197'::uuid,
  'VANSH',
  'DELMIYA',
  '2020-11-30'::date,
  'A-673286181003',
  '318717276',
  '49838838',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '5933c8d8-e088-4be5-af5d-0cd83f456197'::uuid,
  '2026-27',
  'UKG',
  null,
  '24--28-N',
  null,
  null,
  '2024-04-25'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5933c8d8-e088-4be5-af5d-0cd83f456197'::uuid,
  'father',
  'PRAMOD KUMAR',
  'BUSINESS',
  '76977103045, 99264644867',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5933c8d8-e088-4be5-af5d-0cd83f456197'::uuid,
  'mother',
  'ARUNA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '5933c8d8-e088-4be5-af5d-0cd83f456197'::uuid,
  'CHAMUNDAPURI -32',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5933c8d8-e088-4be5-af5d-0cd83f456197'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 3, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "VANSH", "SURNAME": "DELMIYA", "FATHER": "PRAMOD KUMAR", "MOTHER": "ARUNA", "DOB": "30.11.20", "ADM NO.": "24--28-N", "SCH.": "24--28-N", "ADHAR CARD": "A-673286181003", "SSSMID": 318717276, "FAMILY ID": 49838838, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.G": "SC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2024-04-25 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "76977103045, 99264644867", "ADDRESS": "CHAMUNDAPURI -32", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 4 [enrolled]: SHANVI PATHAK Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '68723b22-fd1c-43ad-b1dd-351154da00d3'::uuid,
  'SHANVI',
  'PATHAK',
  '2020-01-13'::date,
  'A-413864989453',
  null,
  null,
  'HINDU',
  'BRAHMAN',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '68723b22-fd1c-43ad-b1dd-351154da00d3'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-31-N',
  null,
  null,
  '2024-02-03'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '68723b22-fd1c-43ad-b1dd-351154da00d3'::uuid,
  'father',
  'SHASHIKANT KUMAR',
  'PVT. JOB',
  '8532816443',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '68723b22-fd1c-43ad-b1dd-351154da00d3'::uuid,
  'mother',
  'DIBYANSHU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '68723b22-fd1c-43ad-b1dd-351154da00d3'::uuid,
  'DROPATI NAGAR -27',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '68723b22-fd1c-43ad-b1dd-351154da00d3'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 4, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHANVI", "SURNAME": "PATHAK", "FATHER": "SHASHIKANT KUMAR", "MOTHER": "DIBYANSHU", "DOB": "2020-01-13 00:00:00", "ADM NO.": "24-31-N", "SCH.": "24-31-N", "ADHAR CARD": "A-413864989453", "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BRAHMAN", "CATE.G": "GEN.", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-02-03 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 8532816443, "ADDRESS": "DROPATI NAGAR -27", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 5 [enrolled]: RUDRA RATHORE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  'RUDRA',
  'RATHORE',
  '2021-07-29'::date,
  'A-458626014926',
  '318258377',
  '46064918',
  'HINDU',
  'TELI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-57-N',
  null,
  null,
  '2021-07-29'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  'father',
  'SURAJ',
  'POLICE',
  '8305302560, 7999173465',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  'mother',
  'ALKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  'POLICE LINE B-25',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  'STATE BANK OF INDIA',
  '34089810272',
  'SBIN0007698',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '3356d737-77cf-44fd-86bc-c741c913a399'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 5, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "RUDRA", "SURNAME": "RATHORE", "FATHER": "SURAJ", "MOTHER": "ALKA", "DOB": "29-07-2021", "ADM NO.": "24-57-N", "SCH.": "24-57-N", "ADHAR CARD": "A-458626014926", "SSSMID": 318258377, "FAMILY ID": 46064918, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": 34089810272, "IFSC CODE": "SBIN0007698", "RELIGION": "HINDU", "CASTE": "TELI", "CATE.G": "OBC", "OCCUPATION": "POLICE", "ADMN.DATE": "2021-07-29 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8305302560, 7999173465", "ADDRESS": "POLICE LINE B-25", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 6 [enrolled]: SHORYVEER SINGH TANWAR Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  'SHORYVEER SINGH',
  'TANWAR',
  '2020-01-27'::date,
  'A-331284241495',
  '318339101',
  '39574222',
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-46-N',
  null,
  null,
  '2020-01-17'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  'father',
  'RISHI SINGH',
  'DRIVER',
  '9617706654',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  'mother',
  'MADHUBALA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  'MADHUBAN COLONY. 216',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  'CENTRAL BANK OF INDIA',
  '1467743834',
  'CBIN0280762',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '02372623-a0bf-43c9-953c-ab668ac96043'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 6, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SHORYVEER SINGH", "SURNAME": "TANWAR", "FATHER": "RISHI SINGH", "MOTHER": "MADHUBALA", "DOB": "27-01-2020", "ADM NO.": "24-46-N", "SCH.": "24-46-N", "ADHAR CARD": "A-331284241495", "SSSMID": 318339101, "FAMILY ID": 39574222, "BANK NAME": "CENTRAL BANK OF INDIA", "BANK AC. NO.": 1467743834, "IFSC CODE": "CBIN0280762", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.G": "GEN.", "OCCUPATION": "DRIVER", "ADMN.DATE": "2020-01-17 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 9617706654, "ADDRESS": "MADHUBAN COLONY. 216", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 7 [enrolled]: YATVIK RATHORE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  'YATVIK',
  'RATHORE',
  '2020-09-23'::date,
  'A-923369953771',
  '318539154',
  '20565439',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-40-N',
  null,
  null,
  '2024-05-29'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  'father',
  'VINOD',
  'TEACHER',
  '9669765961',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  'mother',
  'RANU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  'ARJUN NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  'BANK OF INDIA',
  '891510510000735',
  'BKID0008915',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'dac39624-f085-4205-a944-1ab9ae4b94b5'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 7, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "YATVIK", "SURNAME": "RATHORE", "FATHER": "VINOD", "MOTHER": "RANU", "DOB": "2020-09-23 00:00:00", "ADM NO.": "24-40-N", "SCH.": "24-40-N", "ADHAR CARD": "A-923369953771", "SSSMID": 318539154, "FAMILY ID": 20565439, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 891510510000735, "IFSC CODE": "BKID0008915", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.G": "SC", "OCCUPATION": "TEACHER", "ADMN.DATE": "29-05-24", "ADM .CLASS": "NUR", "MOB. NO.": 9669765961, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 8 [enrolled]: KAVYA PUNACHA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '77a76e12-2c30-4046-bec3-953b33b59990'::uuid,
  'KAVYA',
  'PUNACHA',
  '2020-10-26'::date,
  'A-382786587048',
  null,
  '20357836',
  'HINDU',
  'CHAMAR',
  'SC'
);
insert into public.student_academic_registrations (
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
  '77a76e12-2c30-4046-bec3-953b33b59990'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-24-N',
  null,
  null,
  '2024-04-18'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '77a76e12-2c30-4046-bec3-953b33b59990'::uuid,
  'father',
  'ARJUN',
  'ARMY',
  '9424807164, 9098250338',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '77a76e12-2c30-4046-bec3-953b33b59990'::uuid,
  'mother',
  'NARMADA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '77a76e12-2c30-4046-bec3-953b33b59990'::uuid,
  'FATANPUR 32',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '77a76e12-2c30-4046-bec3-953b33b59990'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 8, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "KAVYA", "SURNAME": "PUNACHA", "FATHER": "ARJUN", "MOTHER": "NARMADA", "DOB": "2020-10-26 00:00:00", "ADM NO.": "24-24-N", "SCH.": "24-24-N", "ADHAR CARD": "A-382786587048", "SSSMID": null, "FAMILY ID": 20357836, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.G": "SC", "OCCUPATION": "ARMY", "ADMN.DATE": "2024-04-18 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "9424807164, 9098250338", "ADDRESS": "FATANPUR 32", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 9 [enrolled]: GEETANSH YADAV Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  'GEETANSH',
  'YADAV',
  '2020-10-25'::date,
  'A-738194567298',
  '317968932',
  '38075292',
  'HINDU',
  'GAVLI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-09-N',
  null,
  null,
  '2024-03-18'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  'father',
  'KRISHNA KANT',
  'BUSINESS',
  '8839503092, 96696611117',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  'mother',
  'SONALI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  'LAXMIBAIMARG 120',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  'ANDHRA BANK',
  '274210100066766',
  'ANDB0002742',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c3bc839e-508e-4b52-b34a-86f4a231db7b'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 9, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "GEETANSH", "SURNAME": "YADAV", "FATHER": "KRISHNA KANT", "MOTHER": "SONALI", "DOB": "2020-10-25 00:00:00", "ADM NO.": "24-09-N", "SCH.": "24-09-N", "ADHAR CARD": "A-738194567298", "SSSMID": 317968932, "FAMILY ID": 38075292, "BANK NAME": "ANDHRA BANK", "BANK AC. NO.": 274210100066766, "IFSC CODE": "ANDB0002742", "RELIGION": "HINDU", "CASTE": "GAVLI", "CATE.G": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2024-03-18 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8839503092, 96696611117", "ADDRESS": "LAXMIBAIMARG 120", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 10 [enrolled]: PARINITA KAITHWAS Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  'PARINITA',
  'KAITHWAS',
  '2020-10-16'::date,
  'A-842954159018',
  '318339071',
  '38442223',
  'HINDU',
  'PASI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-72-N',
  null,
  null,
  '2024-06-21'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  'father',
  'VISHAL',
  'BUSINESS',
  '7987893066',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  'mother',
  'REENA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  'DEVSHREE NAGAR -40-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  'STATE BANK OF INDIA',
  '31478108068',
  'SBIN0030007',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '46544ff8-7af2-49f3-9bf1-8fde3db1d224'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 10, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "PARINITA", "SURNAME": "KAITHWAS", "FATHER": "VISHAL", "MOTHER": "REENA", "DOB": "2020-10-16 00:00:00", "ADM NO.": "24-72-N", "SCH.": "24-72-N", "ADHAR CARD": "A-842954159018", "SSSMID": 318339071, "FAMILY ID": 38442223, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": 31478108068, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "PASI", "CATE.G": "SC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2024-06-21 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 7987893066, "ADDRESS": "DEVSHREE NAGAR -40-DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 11 [enrolled]: RUCHIKA DEVDA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'c144b07c-2de9-409e-858c-45f3fb89187a'::uuid,
  'RUCHIKA',
  'DEVDA',
  '2021-05-25'::date,
  'A-454604620021',
  '321456287',
  '34866655',
  'HINDU',
  null,
  'SC'
);
insert into public.student_academic_registrations (
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
  'c144b07c-2de9-409e-858c-45f3fb89187a'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-53-N',
  null,
  null,
  '2024-06-22'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c144b07c-2de9-409e-858c-45f3fb89187a'::uuid,
  'father',
  'SANDEEP',
  'SHOP',
  '8827964510',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c144b07c-2de9-409e-858c-45f3fb89187a'::uuid,
  'mother',
  'NEETU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c144b07c-2de9-409e-858c-45f3fb89187a'::uuid,
  'MADHUBAN COLONI',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'c144b07c-2de9-409e-858c-45f3fb89187a'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 11, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "RUCHIKA", "SURNAME": "DEVDA", "FATHER": "SANDEEP", "MOTHER": "NEETU", "DOB": "2021-05-25 00:00:00", "ADM NO.": "24-53-N", "SCH.": "24-53-N", "ADHAR CARD": "A-454604620021", "SSSMID": 321456287, "FAMILY ID": 34866655, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": null, "CATE.G": "SC", "OCCUPATION": "SHOP", "ADMN.DATE": "22-06-24", "ADM .CLASS": "NUR", "MOB. NO.": 8827964510, "ADDRESS": "MADHUBAN COLONI", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 12 [enrolled]: VEDEHI NAGAR Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  'VEDEHI',
  'NAGAR',
  '2020-02-05'::date,
  'A-775836752344',
  '318290919',
  '47190862',
  'HINDU',
  'DHAKAD',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-58-N',
  null,
  null,
  '2024-06-22'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  'father',
  'RAJENDRA',
  'SERVICE',
  '8305629873, 8889032900',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  'mother',
  'RANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  'MADHUBAN COLONI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  'BANK OF BARODA',
  '7240100042571',
  'BARB0DEWASX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b4b21feb-403b-4300-ba02-71d67feed378'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 12, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "VEDEHI", "SURNAME": "NAGAR", "FATHER": "RAJENDRA", "MOTHER": "RANI", "DOB": "2020-02-05 00:00:00", "ADM NO.": "24-58-N", "SCH.": "24-58-N", "ADHAR CARD": "A-775836752344", "SSSMID": 318290919, "FAMILY ID": 47190862, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 7240100042571, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.G": "OBC", "OCCUPATION": "SERVICE", "ADMN.DATE": "2024-06-22 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8305629873, 8889032900", "ADDRESS": "MADHUBAN COLONI", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 13 [enrolled]: NISHITA RATHOD Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'cc3e5f5b-5488-447b-9e1d-f50e351c16a7'::uuid,
  'NISHITA',
  'RATHOD',
  '2021-02-04'::date,
  null,
  null,
  null,
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  'cc3e5f5b-5488-447b-9e1d-f50e351c16a7'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-65-N',
  null,
  null,
  '2024-06-27'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'cc3e5f5b-5488-447b-9e1d-f50e351c16a7'::uuid,
  'father',
  'RAVINDRA',
  'PVT. JOB',
  '8770582389, 9826998118',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'cc3e5f5b-5488-447b-9e1d-f50e351c16a7'::uuid,
  'mother',
  'RINKU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'cc3e5f5b-5488-447b-9e1d-f50e351c16a7'::uuid,
  'PRANAY NAGAR -11-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'cc3e5f5b-5488-447b-9e1d-f50e351c16a7'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 13, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "NISHITA", "SURNAME": "RATHOD", "FATHER": "RAVINDRA", "MOTHER": "RINKU", "DOB": "2021-02-04 00:00:00", "ADM NO.": "24-65-N", "SCH.": "24-65-N", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.G": "GEN.", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-06-27 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8770582389, 9826998118", "ADDRESS": "PRANAY NAGAR -11-DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 14 [enrolled]: JAY SISODIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  'JAY',
  'SISODIYA',
  '2020-04-10'::date,
  'A-496708814844',
  '318103991',
  '37982250',
  'HINDU',
  'BHILALA',
  'ST'
);
insert into public.student_academic_registrations (
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
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-67-N',
  null,
  null,
  '2024-07-01'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  'father',
  'SHEKHAR',
  'COMPUTER OPR.',
  '9074407801',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  'mother',
  'JYOTI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  'MAHANKAL COLONI -664-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  'SBI',
  '36188000373',
  'SBIN0003864',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '50d56f0a-b522-48b6-8495-544c92fa85e6'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 14, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "JAY", "SURNAME": "SISODIYA", "FATHER": "SHEKHAR", "MOTHER": "JYOTI", "DOB": "2020-04-10 00:00:00", "ADM NO.": "24-67-N", "SCH.": "24-67-N", "ADHAR CARD": "A-496708814844", "SSSMID": 318103991, "FAMILY ID": 37982250, "BANK NAME": "SBI", "BANK AC. NO.": 36188000373, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.G": "ST", "OCCUPATION": "COMPUTER OPR.", "ADMN.DATE": "2024-07-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 9074407801, "ADDRESS": "MAHANKAL COLONI -664-DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 15 [enrolled]: LAVIT RATHOD Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  'LAVIT',
  'RATHOD',
  '2021-05-11'::date,
  'A-739766826611',
  '318829723',
  '38365976',
  'HINDU',
  'KALOTA',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-75-N',
  null,
  null,
  '2024-07-01'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  'father',
  'SHRAVAN',
  'FARMER',
  '7987195813',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  'mother',
  'GAYATRI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  'VIVEK NAGAR -47- DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  'STATE BANK OF INDIA',
  '63042869280',
  'sbin0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '1dc89b3e-fa90-4cf4-a524-a142748e45a0'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 15, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "LAVIT", "SURNAME": "RATHOD", "FATHER": "SHRAVAN", "MOTHER": "GAYATRI", "DOB": "2021-05-11 00:00:00", "ADM NO.": "24-75-N", "SCH.": "24-75-N", "ADHAR CARD": "A-739766826611", "SSSMID": 318829723, "FAMILY ID": 38365976, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": 63042869280, "IFSC CODE": "sbin0030130", "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.G": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2024-07-01 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 7987195813, "ADDRESS": "VIVEK NAGAR -47- DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 16 [enrolled]: MAYANK KALYANE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '0c702d81-4018-44cd-9862-7c449445cf01'::uuid,
  'MAYANK',
  'KALYANE',
  '2019-10-23'::date,
  'A-366399522481',
  '319014018',
  '38277938',
  'HINDU',
  'VALMIKI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '0c702d81-4018-44cd-9862-7c449445cf01'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-78-N',
  null,
  null,
  '2024-07-03'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0c702d81-4018-44cd-9862-7c449445cf01'::uuid,
  'father',
  'DHEERAJ',
  null,
  '8305259955',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0c702d81-4018-44cd-9862-7c449445cf01'::uuid,
  'mother',
  'VINITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0c702d81-4018-44cd-9862-7c449445cf01'::uuid,
  'BHAWANI SAGAR - 35/5-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0c702d81-4018-44cd-9862-7c449445cf01'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 16, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "MAYANK", "SURNAME": "KALYANE", "FATHER": "DHEERAJ", "MOTHER": "VINITA", "DOB": "23-10-2019", "ADM NO.": "24-78-N", "SCH.": "24-78-N", "ADHAR CARD": "A-366399522481", "SSSMID": 319014018, "FAMILY ID": 38277938, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "VALMIKI", "CATE.G": "SC", "OCCUPATION": null, "ADMN.DATE": "2024-07-03 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 8305259955, "ADDRESS": "BHAWANI SAGAR - 35/5-DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 17 [enrolled]: SUYESH SHARMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  'SUYESH',
  'SHARMA',
  '2021-09-04'::date,
  'A-644958776362',
  '312723833',
  '33782780',
  'HINDU',
  'BRAHMAN',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-82-N',
  null,
  null,
  '2024-07-09'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  'father',
  'MANOJ KUMAR',
  'COMPANY EMPLOYER',
  '8435358879, 7773083943',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  'mother',
  'KAVITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  'CHAMUNDAPURI-74/36',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  'CENTRAL BOI-',
  'CBIN3949938913',
  'CBIN0283960',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f15bb755-291c-4b40-a0f5-58bb4a88a96b'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 17, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SUYESH", "SURNAME": "SHARMA", "FATHER": "MANOJ KUMAR", "MOTHER": "KAVITA", "DOB": "2021-09-04 00:00:00", "ADM NO.": "24-82-N", "SCH.": "24-82-N", "ADHAR CARD": "A-644958776362", "SSSMID": 312723833, "FAMILY ID": 33782780, "BANK NAME": "CENTRAL BOI-", "BANK AC. NO.": "CBIN3949938913", "IFSC CODE": "CBIN0283960", "RELIGION": "HINDU", "CASTE": "BRAHMAN", "CATE.G": "GEN.", "OCCUPATION": "COMPANY EMPLOYER", "ADMN.DATE": "2024-07-09 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8435358879, 7773083943", "ADDRESS": "CHAMUNDAPURI-74/36", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 18 [enrolled]: ISHAAN SINGH NO Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  'ISHAAN SINGH',
  'NO',
  '2020-08-09'::date,
  'A-611618167297',
  '321772683',
  '50520205',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-00-N',
  null,
  null,
  '2024-03-07'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  'father',
  'SURENDRA SINGH',
  'JOB',
  '8982141450',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  'mother',
  'KUSUM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  'CHAMUNDAPURI DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  'STATE BANK OF INDIA',
  '30765298785',
  'SBIN000317',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f91890b3-5033-44b6-8cb3-a5c9bfc53a0e'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 18, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "ISHAAN SINGH", "SURNAME": "NO", "FATHER": "SURENDRA SINGH", "MOTHER": "KUSUM", "DOB": "2020-08-09 00:00:00", "ADM NO.": "24-00-N", "SCH.": "24-00-N", "ADHAR CARD": "A-611618167297", "SSSMID": 321772683, "FAMILY ID": 50520205, "BANK NAME": "STATE BANK OF INDIA", "BANK AC. NO.": 30765298785, "IFSC CODE": "SBIN000317", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.G": "SC", "OCCUPATION": "JOB", "ADMN.DATE": "2024-03-07 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 8982141450, "ADDRESS": "CHAMUNDAPURI DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 19 [enrolled]: DIVYANSH JALODIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  'DIVYANSH',
  'JALODIYA',
  '2020-03-25'::date,
  'A-693282505640',
  '316373539',
  '37428278',
  'HINDU',
  'DHOBI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-89-N',
  null,
  null,
  '2024-07-20'::date,
  'NUR',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  'father',
  'AMAR',
  'LAWYER',
  '7999617141',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  'BHOPAL CHOURAHA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  'NO',
  'NO',
  'NO',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'e17f6987-cf9d-4394-a264-f1a005a6b1ba'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 19, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "DIVYANSH", "SURNAME": "JALODIYA", "FATHER": "AMAR", "MOTHER": "POOJA", "DOB": "25-03-2020", "ADM NO.": "24-89-N", "SCH.": "24-89-N", "ADHAR CARD": "A-693282505640", "SSSMID": 316373539, "FAMILY ID": 37428278, "BANK NAME": "NO", "BANK AC. NO.": "NO", "IFSC CODE": "NO", "RELIGION": "HINDU", "CASTE": "DHOBI", "CATE.G": "OBC", "OCCUPATION": "LAWYER", "ADMN.DATE": "20-07-24", "ADM .CLASS": "NUR", "MOB. NO.": 7999617141, "ADDRESS": "BHOPAL CHOURAHA", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 20 [enrolled]: AYANSH RANJAN 2025 GUPTA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  'AYANSH RANJAN 2025',
  'GUPTA',
  '2021-09-27'::date,
  'A-944315630491',
  null,
  null,
  'HINDU',
  'GUPTA',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-34-L',
  null,
  null,
  '2025-06-24'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  'father',
  'RANJAN BHARTI',
  'KV SCHOOL',
  '9863033101',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  'mother',
  'PRIYANKA KUMARI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  'BNP- 3664/DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  'SBI',
  '34997245717',
  'SBIN0018820',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '3c3374e6-c7cb-4c70-9659-84693af8a136'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 20, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "AYANSH RANJAN 2025", "SURNAME": "GUPTA", "FATHER": "RANJAN BHARTI", "MOTHER": "PRIYANKA KUMARI", "DOB": "2021-09-27 00:00:00", "ADM NO.": "25-34-L", "SCH.": "25-34-L", "ADHAR CARD": "A-944315630491", "SSSMID": null, "FAMILY ID": null, "BANK NAME": "SBI", "BANK AC. NO.": 34997245717, "IFSC CODE": "SBIN0018820", "RELIGION": "HINDU", "CASTE": "GUPTA", "CATE.G": "GEN.", "OCCUPATION": "KV SCHOOL", "ADMN.DATE": "24/06/25", "ADM .CLASS": "LKG", "MOB. NO.": 9863033101, "ADDRESS": "BNP- 3664/DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 21 [enrolled]: ISHANVI 2025 SONI Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  'ISHANVI 2025',
  'SONI',
  '2019-10-22'::date,
  'A-630620828992',
  '318538668',
  '38444713',
  'HINDU',
  'SONI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-26-L',
  null,
  null,
  '2025-04-05'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  'father',
  'SUBHASH',
  'PVT. JOB',
  '8878248802',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  'mother',
  'DEEPIKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  'DEVSHREE NAGAR-36/A DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  'BANK OF INDIA',
  '890010110009274',
  'BKID0000900',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '317901cd-aff3-4206-b1aa-145d9c2e8199'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 21, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "ISHANVI 2025", "SURNAME": "SONI", "FATHER": "SUBHASH", "MOTHER": "DEEPIKA", "DOB": "2019-10-22 00:00:00", "ADM NO.": "25-26-L", "SCH.": "25-26-L", "ADHAR CARD": "A-630620828992", "SSSMID": 318538668, "FAMILY ID": 38444713, "BANK NAME": "BANK OF INDIA", "BANK AC. NO.": 890010110009274, "IFSC CODE": "BKID0000900", "RELIGION": "HINDU", "CASTE": "SONI", "CATE.G": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2025-04-05 00:00:00", "ADM .CLASS": "LKG", "MOB. NO.": 8878248802, "ADDRESS": "DEVSHREE NAGAR-36/A DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 22 [enrolled]: UTSAV-2025 JHARBADE Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'fe38cac1-bc32-4cf2-8d1d-53243a895717'::uuid,
  'UTSAV-2025',
  'JHARBADE',
  '2021-06-09'::date,
  'A-461999828676',
  '321233760',
  '49883558',
  'HINDU',
  'MEHRA',
  'SC'
);
insert into public.student_academic_registrations (
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
  'fe38cac1-bc32-4cf2-8d1d-53243a895717'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-57-L',
  null,
  null,
  '2025-06-18'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fe38cac1-bc32-4cf2-8d1d-53243a895717'::uuid,
  'father',
  'ASHISH',
  'M.R.',
  '9754133440',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fe38cac1-bc32-4cf2-8d1d-53243a895717'::uuid,
  'mother',
  'CHANDRAKANTA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'fe38cac1-bc32-4cf2-8d1d-53243a895717'::uuid,
  'ARJUN NAGAR DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'fe38cac1-bc32-4cf2-8d1d-53243a895717'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 22, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "UTSAV-2025", "SURNAME": "JHARBADE", "FATHER": "ASHISH", "MOTHER": "CHANDRAKANTA", "DOB": "2021-06-09 00:00:00", "ADM NO.": "25-57-L", "SCH.": "25-57-L", "ADHAR CARD": "A-461999828676", "SSSMID": 321233760, "FAMILY ID": 49883558, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "MEHRA", "CATE.G": "SC", "OCCUPATION": "M.R.", "ADMN.DATE": "2025-06-18 00:00:00", "ADM .CLASS": "LKG", "MOB. NO.": 9754133440, "ADDRESS": "ARJUN NAGAR DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 23 [enrolled]: YASHVI-2025 VATS Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  'YASHVI-2025',
  'VATS',
  '2020-09-22'::date,
  'A-286413601303',
  null,
  null,
  'HINDU',
  null,
  'GEN.'
);
insert into public.student_academic_registrations (
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
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-51-L',
  null,
  null,
  '2025-01-07'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  'father',
  'ASHISH',
  'RAILWAY',
  '9873282234',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  'mother',
  'NEELAM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  'BNP-2116 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  'PNB',
  '7702000100026610',
  'PUNB 0770200',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'dfb3ba87-05c9-4e04-a179-840355575155'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 23, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "YASHVI-2025", "SURNAME": "VATS", "FATHER": "ASHISH", "MOTHER": "NEELAM", "DOB": "22/09/2020", "ADM NO.": "25-51-L", "SCH.": "25-51-L", "ADHAR CARD": "A-286413601303", "SSSMID": null, "FAMILY ID": null, "BANK NAME": "PNB", "BANK AC. NO.": 7702000100026610, "IFSC CODE": "PUNB 0770200", "RELIGION": "HINDU", "CASTE": null, "CATE.G": "GEN.", "OCCUPATION": "RAILWAY", "ADMN.DATE": "2025-01-07 00:00:00", "ADM .CLASS": "LKG", "MOB. NO.": 9873282234, "ADDRESS": "BNP-2116 DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 24 [enrolled]: ADVIK-2025 JAISWAL Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  'ADVIK-2025',
  'JAISWAL',
  '2021-01-01'::date,
  'A-896314723622',
  '311914959',
  '48376645',
  'HINDU',
  'KALAL',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-02-L',
  null,
  null,
  '2025-04-03'::date,
  'LKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  'father',
  'RAHUL',
  'MP POLICE',
  '8319697961',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  'mother',
  'KHUSHBU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  'PRANAY NAGAR 28-DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  'SBI',
  '63037932885',
  'SBIN0030418',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'e5530dd1-10bc-4f6b-8452-164baa9bb603'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 24, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "ADVIK-2025", "SURNAME": "JAISWAL", "FATHER": "RAHUL", "MOTHER": "KHUSHBU", "DOB": "2021-01-01 00:00:00", "ADM NO.": "25-02-L", "SCH.": "25-02-L", "ADHAR CARD": "A-896314723622", "SSSMID": 311914959, "FAMILY ID": 48376645, "BANK NAME": "SBI", "BANK AC. NO.": 63037932885, "IFSC CODE": "SBIN0030418", "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.G": "OBC", "OCCUPATION": "MP POLICE", "ADMN.DATE": "2025-04-03 00:00:00", "ADM .CLASS": "LKG", "MOB. NO.": 8319697961, "ADDRESS": "PRANAY NAGAR 28-DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 25 [enrolled]: SNEHA 2025 VERMA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  'SNEHA 2025',
  'VERMA',
  '2021-10-16'::date,
  'A-725432346193',
  '314890599',
  '48427312',
  'HINDU',
  'CHAMAR',
  'SC'
);
insert into public.student_academic_registrations (
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
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-20-L',
  null,
  null,
  '2025-06-17'::date,
  'LKG',
  null,
  null,
  'NEW',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  'father',
  'PANKAJ KUMAR SAKET',
  '17-06-2025',
  '9200394450',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  'mother',
  'SHRADDHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  'CHAMUNDA PURI BNP DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  'SBI',
  '41386845422',
  null,
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '7263b97d-18bc-4ef0-a4da-6046e01e732f'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 25, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "SNEHA 2025", "SURNAME": "VERMA", "FATHER": "PANKAJ KUMAR SAKET", "MOTHER": "SHRADDHA", "DOB": "16-10-2021", "ADM NO.": "25-20-L", "SCH.": "25-20-L", "ADHAR CARD": "A-725432346193", "SSSMID": 314890599, "FAMILY ID": 48427312, "BANK NAME": "SBI", "BANK AC. NO.": 41386845422, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.G": "SC", "OCCUPATION": "17-06-2025", "ADMN.DATE": "17/06/25", "ADM .CLASS": "LKG", "MOB. NO.": 9200394450, "ADDRESS": "CHAMUNDA PURI BNP DEWAS", "LAST SCHOOL": "NEW"}}'::jsonb
);

-- UKG row 26 [enrolled]: PRITHVIRAJ SINGH THAKUR Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  'PRITHVIRAJ SINGH',
  'THAKUR',
  '2019-04-17'::date,
  null,
  null,
  '37924590',
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  '2026-27',
  'UKG',
  null,
  '25-79-L',
  null,
  null,
  '2025-04-08'::date,
  'LKG',
  null,
  null,
  'THE',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  'father',
  'PRADEEP SINGH',
  'PVT. JOB',
  '8103179282',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  'mother',
  'NEHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  'BHOUSALE COLONY DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  'HDFC',
  '50100687049130',
  'HDFC0009438',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '65811680-20ba-4eb9-8580-af3ca95ad512'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 26, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "PRITHVIRAJ SINGH", "SURNAME": "THAKUR", "FATHER": "PRADEEP SINGH", "MOTHER": "NEHA", "DOB": "17/04/2019", "ADM NO.": "25-79-L", "SCH.": "25-79-L", "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": 37924590, "BANK NAME": "HDFC", "BANK AC. NO.": 50100687049130, "IFSC CODE": "HDFC0009438", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.G": "GEN.", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2025-04-08 00:00:00", "ADM .CLASS": "LKG", "MOB. NO.": 8103179282, "ADDRESS": "BHOUSALE COLONY DEWAS", "LAST SCHOOL": "THE"}}'::jsonb
);

-- UKG row 27 [enrolled]: KESHAV BAIRAGI
insert into public.students (
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
  'd956d5ab-efbb-4baa-a9d0-987c6faf9f40'::uuid,
  'KESHAV',
  'BAIRAGI',
  '2021-05-07'::date,
  'A-995818738677',
  '318786735',
  '24906718',
  'HINDU',
  'BAIRAGI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  'd956d5ab-efbb-4baa-a9d0-987c6faf9f40'::uuid,
  '2026-27',
  'UKG',
  null,
  '26-18-U',
  null,
  null,
  '2025-04-17'::date,
  'UKG',
  null,
  null,
  'HIMALIYA',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd956d5ab-efbb-4baa-a9d0-987c6faf9f40'::uuid,
  'father',
  'MANISH',
  'PVT. JOB',
  '7828048184',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd956d5ab-efbb-4baa-a9d0-987c6faf9f40'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'd956d5ab-efbb-4baa-a9d0-987c6faf9f40'::uuid,
  'CHAMUNDA PALACE -10',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'd956d5ab-efbb-4baa-a9d0-987c6faf9f40'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 27, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "KESHAV", "SURNAME": "BAIRAGI", "FATHER": "MANISH", "MOTHER": "POOJA", "DOB": "2021-05-07 00:00:00", "ADM NO.": "26-18-U", "SCH.": null, "ADHAR CARD": "A-995818738677", "SSSMID": 318786735, "FAMILY ID": 24906718, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BAIRAGI", "CATE.G": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2025-04-17 00:00:00", "ADM .CLASS": "UKG", "MOB. NO.": 7828048184, "ADDRESS": "CHAMUNDA PALACE -10", "LAST SCHOOL": "HIMALIYA"}}'::jsonb
);

-- UKG row 28 [enrolled]: GARVIT DELTHLIYA Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '0c968189-1a83-46c5-8ae6-4c0caef1bac6'::uuid,
  'GARVIT',
  'DELTHLIYA',
  '2021-02-11'::date,
  'A-7196300166860',
  '313177480',
  '20055570',
  'HINDU',
  'KHATI',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '0c968189-1a83-46c5-8ae6-4c0caef1bac6'::uuid,
  '2026-27',
  'UKG',
  null,
  '26-39-U',
  null,
  null,
  '2026-04-23'::date,
  'UKG',
  null,
  null,
  'YOG INRTNATIONAL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0c968189-1a83-46c5-8ae6-4c0caef1bac6'::uuid,
  'father',
  'AKHILESH',
  'PVT. JOB',
  '9009417245',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0c968189-1a83-46c5-8ae6-4c0caef1bac6'::uuid,
  'mother',
  'POOJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0c968189-1a83-46c5-8ae6-4c0caef1bac6'::uuid,
  'DEVSHREE NAGAR-38 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0c968189-1a83-46c5-8ae6-4c0caef1bac6'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 28, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "GARVIT", "SURNAME": "DELTHLIYA", "FATHER": "AKHILESH", "MOTHER": "POOJA", "DOB": "2021-02-11 00:00:00", "ADM NO.": "26-39-U", "SCH.": "26-39-U", "ADHAR CARD": "A-7196300166860", "SSSMID": 313177480, "FAMILY ID": 20055570, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.G": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-04-23 00:00:00", "ADM .CLASS": "UKG", "MOB. NO.": 9009417245, "ADDRESS": "DEVSHREE NAGAR-38 DEWAS", "LAST SCHOOL": "YOG INRTNATIONAL"}}'::jsonb
);

-- UKG row 29 [enrolled]: AYANSH PANDEY Corrections: Set scholar number to null because source duplicated admission number in SCH. column.
insert into public.students (
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
  '0801a21a-6e49-40c9-b915-d89d6300a565'::uuid,
  'AYANSH',
  'PANDEY',
  '2021-05-06'::date,
  'A- 293274182397',
  null,
  null,
  'HINDU',
  'BHRAMAN',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '0801a21a-6e49-40c9-b915-d89d6300a565'::uuid,
  '2026-27',
  'UKG',
  null,
  '26-09-U',
  null,
  null,
  '2026-04-02'::date,
  'UKG',
  null,
  null,
  null,
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0801a21a-6e49-40c9-b915-d89d6300a565'::uuid,
  'father',
  'SATISH KUMAR',
  'GOVT. JOB',
  '9990971201, 8269583640',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0801a21a-6e49-40c9-b915-d89d6300a565'::uuid,
  'mother',
  'RANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0801a21a-6e49-40c9-b915-d89d6300a565'::uuid,
  'B.N.P COLONY-5121',
  null,
  null,
  null,
  'home'
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0801a21a-6e49-40c9-b915-d89d6300a565'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 29, "section": "enrolled", "corrections": ["Set scholar number to null because source duplicated admission number in SCH. column."], "data": {"MODE": null, "NAME": "AYANSH", "SURNAME": "PANDEY", "FATHER": "SATISH KUMAR", "MOTHER": "RANI", "DOB": "2021-05-06 00:00:00", "ADM NO.": "26-09-U", "SCH.": "26-09-U", "ADHAR CARD": "A- 293274182397", "SSSMID": null, "FAMILY ID": null, "BANK NAME": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BHRAMAN", "CATE.G": "GEN.", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2026-04-02 00:00:00", "ADM .CLASS": "UKG", "MOB. NO.": "9990971201, 8269583640", "ADDRESS": "B.N.P COLONY-5121", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 32 [rte]: TANISHA CHOUHAN
insert into public.students (
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
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  'TANISHA',
  'CHOUHAN',
  '2020-08-25'::date,
  'A-418999256020',
  '314327273',
  '42806239',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-11-N',
  '2245',
  null,
  '2024-03-19'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  'father',
  'RAVI',
  'PVT. JOB',
  '8959695101, 8889948756',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  'mother',
  'BABLI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  'KALU KHRDI -05-',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  'BANK OF BARODA',
  '7240100034592',
  'BARBODEWASX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '7cb01d60-6ff6-4401-a67a-62b71990e5bd'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 32, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "TANISHA", "SURNAME": "CHOUHAN", "FATHER": "RAVI", "MOTHER": "BABLI", "DOB": "2020-08-25 00:00:00", "ADM NO.": "24-11-N", "SCH.": 2245, "ADHAR CARD": "A-418999256020", "SSSMID": 314327273, "FAMILY ID": 42806239, "BANK NAME": "BANK OF BARODA", "BANK AC. NO.": 7240100034592, "IFSC CODE": "BARBODEWASX", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.G": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-19 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8959695101, 8889948756", "ADDRESS": "KALU KHRDI -05-", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 33 [rte]: SHIVANSH PRAJAPATI Corrections: Set duplicate scholar number 2249 to null; first seen at NUR row 23.
insert into public.students (
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
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  'SHIVANSH',
  'PRAJAPATI',
  '2020-06-14'::date,
  'A-890723624390',
  '318443661',
  '37401055',
  'HINDU',
  'KUMHAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-05-N',
  null,
  null,
  '2024-03-16'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  'father',
  'DHARMENDRA',
  'PVT. JOB',
  '8085360778, 9685060778',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  'mother',
  'NEHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  'KALU KHRDI -32-',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  'P-N-B-',
  '1505001700131570',
  'PUNB0150500',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '675bc0a9-bad2-48fe-82f6-a633a5949dcb'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 33, "section": "rte", "corrections": ["Set duplicate scholar number 2249 to null; first seen at NUR row 23."], "data": {"MODE": null, "NAME": "SHIVANSH", "SURNAME": "PRAJAPATI", "FATHER": "DHARMENDRA", "MOTHER": "NEHA", "DOB": "2020-06-14 00:00:00", "ADM NO.": "24-05-N", "SCH.": 2249, "ADHAR CARD": "A-890723624390", "SSSMID": 318443661, "FAMILY ID": 37401055, "BANK NAME": "P-N-B-", "BANK AC. NO.": 1505001700131570, "IFSC CODE": "PUNB0150500", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.G": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-16 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8085360778, 9685060778", "ADDRESS": "KALU KHRDI -32-", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 34 [rte]: PRINCE PRAJAPATI
insert into public.students (
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
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  'PRINCE',
  'PRAJAPATI',
  '2020-07-20'::date,
  'A-323238283646',
  '317860272',
  '29625726',
  'HINDU',
  'KUMHAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-02-N',
  '2252',
  null,
  '2024-03-16'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  'father',
  'SHAILESH',
  'PVT. JOB',
  '8889710025, 8878808819',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  'mother',
  'PRIYANKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  'ARJUN NAGAR40- ITAWa DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  'SBI',
  '35324059130',
  'SBIN0003864',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '948576e8-6285-4f75-8e6d-7384e0ba4b69'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 34, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "PRINCE", "SURNAME": "PRAJAPATI", "FATHER": "SHAILESH", "MOTHER": "PRIYANKA", "DOB": "2020-07-20 00:00:00", "ADM NO.": "24-02-N", "SCH.": 2252, "ADHAR CARD": "A-323238283646", "SSSMID": 317860272, "FAMILY ID": 29625726, "BANK NAME": "SBI", "BANK AC. NO.": 35324059130, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.G": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-16 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "8889710025, 8878808819", "ADDRESS": "ARJUN NAGAR40- ITAWa DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 35 [rte]: PRIYANSH SENIYA
insert into public.students (
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
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  'PRIYANSH',
  'SENIYA',
  '2020-11-13'::date,
  'A-478883447415',
  '318443622',
  '39539873',
  'HINDU',
  'BARGUNDA',
  'SC'
);
insert into public.student_academic_registrations (
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
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-06-N',
  '2248',
  null,
  '2024-03-16'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  'father',
  'AKSHAY',
  'PVT. JOB',
  '7970080254,',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  'mother',
  'KAVITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  'AMBEDKAR NAGAR-32- DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  'SBI',
  '33641105563',
  'SBIN00030012',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '01c41fcc-f5fc-47dc-bcde-7cc59a128edd'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 35, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "PRIYANSH", "SURNAME": "SENIYA", "FATHER": "AKSHAY", "MOTHER": "KAVITA", "DOB": "2020-11-13 00:00:00", "ADM NO.": "24-06-N", "SCH.": 2248, "ADHAR CARD": "A-478883447415", "SSSMID": 318443622, "FAMILY ID": 39539873, "BANK NAME": "SBI", "BANK AC. NO.": 33641105563, "IFSC CODE": "SBIN00030012", "RELIGION": "HINDU", "CASTE": "BARGUNDA", "CATE.G": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-16 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "7970080254,", "ADDRESS": "AMBEDKAR NAGAR-32- DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 36 [rte]: NAKSH SINGH
insert into public.students (
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
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  'NAKSH',
  'SINGH',
  '2020-02-17'::date,
  'A-884374279937',
  '312570446',
  '37389876',
  'HINDU',
  'RAJPUT',
  'GEN.'
);
insert into public.student_academic_registrations (
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
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-03-N',
  '2251',
  null,
  '2024-03-16'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  'father',
  'MAYANK',
  'PVT. JOB',
  '8109430092',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  'mother',
  'RANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  'MAHANLKA COLONI 162/7 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  'BANK OF MAHARASTRA',
  '60389337853',
  'MAHB0000141',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '8f01a8ae-3ed7-45a0-bbd9-eeb2740f3f22'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 36, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "NAKSH", "SURNAME": "SINGH", "FATHER": "MAYANK", "MOTHER": "RANI", "DOB": "2020-02-17 00:00:00", "ADM NO.": "24-03-N", "SCH.": 2251, "ADHAR CARD": "A-884374279937", "SSSMID": 312570446, "FAMILY ID": 37389876, "BANK NAME": "BANK OF MAHARASTRA", "BANK AC. NO.": 60389337853, "IFSC CODE": "MAHB0000141", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.G": "GEN.", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-16 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 8109430092, "ADDRESS": "MAHANLKA COLONI 162/7 DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 37 [rte]: MITANSH PRAJAPAT
insert into public.students (
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
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  'MITANSH',
  'PRAJAPAT',
  '2020-05-02'::date,
  'A-372625304798',
  '314678824',
  '36657714',
  'HINDU',
  'KUMHAR',
  'OBC'
);
insert into public.student_academic_registrations (
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
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-08-N',
  '2247',
  null,
  '2024-03-18'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  'father',
  'JITENDRA',
  'TAILAR',
  '7697766784, 9826316836',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  'mother',
  'CHANCHLA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  'MAHANLKA COLONI- 192/7 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  'UNIYAN BANK',
  '920010040133001',
  'UTIB0002661',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0bc87420-93b8-4441-b9e6-50044e32da9b'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 37, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "MITANSH", "SURNAME": "PRAJAPAT", "FATHER": "JITENDRA", "MOTHER": "CHANCHLA", "DOB": "2020-05-02 00:00:00", "ADM NO.": "24-08-N", "SCH.": 2247, "ADHAR CARD": "A-372625304798", "SSSMID": 314678824, "FAMILY ID": 36657714, "BANK NAME": "UNIYAN BANK", "BANK AC. NO.": 920010040133001, "IFSC CODE": "UTIB0002661", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.G": "OBC", "OCCUPATION": "TAILAR", "ADMN.DATE": "2024-03-18 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": "7697766784, 9826316836", "ADDRESS": "MAHANLKA COLONI- 192/7 DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 38 [rte]: DIVYANSH YADAV
insert into public.students (
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
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  'DIVYANSH',
  'YADAV',
  '2020-09-22'::date,
  'A-651593309656',
  '321127102',
  '34613976',
  'HINDU',
  'BAGRI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-01-N',
  '2253',
  null,
  '2024-03-15'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  'father',
  'DIPAK',
  'PVT. JOB',
  '7999645432',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  'mother',
  'NISHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  'ARINA ROAD RADHA GANJ DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  'SBI',
  '36031594116',
  'SBIN0030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'f89d5061-3362-4bd9-9590-e2d938228bbe'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 38, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "DIVYANSH", "SURNAME": "YADAV", "FATHER": "DIPAK", "MOTHER": "NISHA", "DOB": "2020-09-22 00:00:00", "ADM NO.": "24-01-N", "SCH.": 2253, "ADHAR CARD": "A-651593309656", "SSSMID": 321127102, "FAMILY ID": 34613976, "BANK NAME": "SBI", "BANK AC. NO.": 36031594116, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.G": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-15 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 7999645432, "ADDRESS": "ARINA ROAD RADHA GANJ DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 39 [rte]: ANJALI MALVIYA
insert into public.students (
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
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  'ANJALI',
  'MALVIYA',
  '2020-08-09'::date,
  'A-840654164239',
  '317780276',
  '37997001',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-04-N',
  '2250',
  null,
  '2024-03-16'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  'father',
  'OMPRAKASH',
  'PVT. JOB',
  '8966998344',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  'mother',
  'MAMTA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  'PRATAP NAGAR-118- DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  'SBI-A.B.ROAD DEWAS',
  '32125090917',
  'SBIN0003864',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'bc2eb6e5-fb0b-409b-9468-c42de5e06679'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 39, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "ANJALI", "SURNAME": "MALVIYA", "FATHER": "OMPRAKASH", "MOTHER": "MAMTA", "DOB": "2020-08-09 00:00:00", "ADM NO.": "24-04-N", "SCH.": 2250, "ADHAR CARD": "A-840654164239", "SSSMID": 317780276, "FAMILY ID": 37997001, "BANK NAME": "SBI-A.B.ROAD DEWAS", "BANK AC. NO.": 32125090917, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.G": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-16 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": 8966998344, "ADDRESS": "PRATAP NAGAR-118- DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- UKG row 40 [rte]: ARAV SISODIYA
insert into public.students (
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
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  'ARAV',
  'SISODIYA',
  '2019-10-06'::date,
  'A-472644694256',
  '316145715',
  '48915361',
  'HINDU',
  'BALAI',
  'SC'
);
insert into public.student_academic_registrations (
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
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  '2026-27',
  'UKG',
  null,
  '24-10-N',
  '2246',
  null,
  '2024-03-19'::date,
  'NUR',
  null,
  null,
  null,
  null,
  true,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  'father',
  'KUNDAN',
  'PVT. JOB',
  null,
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  'mother',
  'RITU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  'VISHRAM BAG- 22 DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  'CENTRAL BOI-',
  '3437021321',
  'CBIN0283891',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'ad8cdfc8-ef4f-49b7-b010-1da3a9885861'::uuid,
  '2026-27',
  'UKG',
  'nur-ukg.xlsx',
  'UKG',
  '{"sheet_name": "UKG", "row_number": 40, "section": "rte", "corrections": [], "data": {"MODE": null, "NAME": "ARAV", "SURNAME": "SISODIYA", "FATHER": "KUNDAN", "MOTHER": "RITU", "DOB": "2019-10-06 00:00:00", "ADM NO.": "24-10-N", "SCH.": 2246, "ADHAR CARD": "A-472644694256", "SSSMID": 316145715, "FAMILY ID": 48915361, "BANK NAME": "CENTRAL BOI-", "BANK AC. NO.": 3437021321, "IFSC CODE": "CBIN0283891", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.G": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-03-19 00:00:00", "ADM .CLASS": "NUR", "MOB. NO.": null, "ADDRESS": "VISHRAM BAG- 22 DEWAS", "LAST SCHOOL": null}}'::jsonb
);

commit;
