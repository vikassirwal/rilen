-- RILEN student import for classes 1 through 5
-- Source workbook: 1-5.xlsx
-- Generated records: 181
-- Rules: RTE section => is_rte_student true; LEFT section => is_active false and tc_status LEFT; typo-like dates normalized when unambiguous.

begin;

-- CLASS 1st row 3 [enrolled]: AKSHAT VERMA
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
  'e8bb796d-286c-4562-9ac9-9b51c2282425'::uuid,
  'AKSHAT',
  'VERMA',
  '2020-01-07'::date,
  null,
  '314678859',
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
  'e8bb796d-286c-4562-9ac9-9b51c2282425'::uuid,
  '2026-27',
  '1',
  null,
  '23-70-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  'e8bb796d-286c-4562-9ac9-9b51c2282425'::uuid,
  'father',
  'SANDEEP',
  null,
  'M-7354606551',
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
  'e8bb796d-286c-4562-9ac9-9b51c2282425'::uuid,
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
  'e8bb796d-286c-4562-9ac9-9b51c2282425'::uuid,
  'ARJUN NAGAR',
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
  'e8bb796d-286c-4562-9ac9-9b51c2282425'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "AKSHAT", "SURNAME": "VERMA", "FATHER": "SANDEEP", "MOTHER": "SWATI", "DOB": "07 JAN. 2020", "ADM NO.": "23-70-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "SSSMID": 314678859, "FAMILY ID": 20787341, "MOB. NO.": "M-7354606551", "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 4 [enrolled]: ANAYA DUGGAL
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
  '9a4d3fae-6faa-41ba-94de-d809e937ae64'::uuid,
  'ANAYA',
  'DUGGAL',
  '2020-01-30'::date,
  null,
  null,
  null,
  'HINDU',
  'DHANAK',
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
  '9a4d3fae-6faa-41ba-94de-d809e937ae64'::uuid,
  '2026-27',
  '1',
  null,
  '23-47-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '9a4d3fae-6faa-41ba-94de-d809e937ae64'::uuid,
  'father',
  'HARISH',
  null,
  'M-8755125444',
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
  '9a4d3fae-6faa-41ba-94de-d809e937ae64'::uuid,
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
  '9a4d3fae-6faa-41ba-94de-d809e937ae64'::uuid,
  'BNP COLONY, 3605',
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
  '9a4d3fae-6faa-41ba-94de-d809e937ae64'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "ANAYA", "SURNAME": "DUGGAL", "FATHER": "HARISH", "MOTHER": "JYOTI", "DOB": "30.01.2020", "ADM NO.": "23-47-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "DHANAK", "CATE.": "SC", "SSSMID": null, "FAMILY ID": null, "MOB. NO.": "M-8755125444", "ADDRESS": "BNP COLONY, 3605", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 5 [enrolled]: CHANCHAL CHOUHAN
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
  '6e19270f-527a-46f2-ac48-fbe0e61542c4'::uuid,
  'CHANCHAL',
  'CHOUHAN',
  '2020-06-23'::date,
  null,
  '314316037',
  '22765493',
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
  '6e19270f-527a-46f2-ac48-fbe0e61542c4'::uuid,
  '2026-27',
  '1',
  null,
  '23-50-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '6e19270f-527a-46f2-ac48-fbe0e61542c4'::uuid,
  'father',
  'LAKHAN',
  null,
  'M-7240821011',
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
  '6e19270f-527a-46f2-ac48-fbe0e61542c4'::uuid,
  'mother',
  'PINKY',
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
  '6e19270f-527a-46f2-ac48-fbe0e61542c4'::uuid,
  'MADHUBAN COLONY, 32',
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
  '6e19270f-527a-46f2-ac48-fbe0e61542c4'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "CHANCHAL", "SURNAME": "CHOUHAN", "FATHER": "LAKHAN", "MOTHER": "PINKY", "DOB": "23.06.2020", "ADM NO.": "23-50-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "SSSMID": 314316037, "FAMILY ID": 22765493, "MOB. NO.": "M-7240821011", "ADDRESS": "MADHUBAN COLONY, 32", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 6 [enrolled]: DWITIKA CHOUHAN
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
  '02f4c305-e269-450b-8a39-9fce8aabf30f'::uuid,
  'DWITIKA',
  'CHOUHAN',
  '2020-11-07'::date,
  null,
  '313864189',
  '49849348',
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
  '02f4c305-e269-450b-8a39-9fce8aabf30f'::uuid,
  '2026-27',
  '1',
  null,
  '23-73-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '02f4c305-e269-450b-8a39-9fce8aabf30f'::uuid,
  'father',
  'AKASH',
  null,
  'M-7805064717',
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
  '02f4c305-e269-450b-8a39-9fce8aabf30f'::uuid,
  'mother',
  'RAJNANDINI',
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
  '02f4c305-e269-450b-8a39-9fce8aabf30f'::uuid,
  'CHAMUNADA PALACE, 11',
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
  '02f4c305-e269-450b-8a39-9fce8aabf30f'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DWITIKA", "SURNAME": "CHOUHAN", "FATHER": "AKASH", "MOTHER": "RAJNANDINI", "DOB": "2020-11-07 00:00:00", "ADM NO.": "23-73-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "SSSMID": 313864189, "FAMILY ID": 49849348, "MOB. NO.": "M-7805064717", "ADDRESS": "CHAMUNADA PALACE, 11", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 7 [enrolled]: GARVITA THAKUR
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
  '18bd8b09-41d3-4528-9f2e-274221cbcdfe'::uuid,
  'GARVITA',
  'THAKUR',
  '2020-01-25'::date,
  null,
  '313864199',
  '41659688',
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
  '18bd8b09-41d3-4528-9f2e-274221cbcdfe'::uuid,
  '2026-27',
  '1',
  null,
  '23-38-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '18bd8b09-41d3-4528-9f2e-274221cbcdfe'::uuid,
  'father',
  'KRISHNAPAL',
  null,
  'M-633479360320',
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
  '18bd8b09-41d3-4528-9f2e-274221cbcdfe'::uuid,
  'mother',
  'RASHMI',
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
  '18bd8b09-41d3-4528-9f2e-274221cbcdfe'::uuid,
  'CHAMUNDA PALACE,15',
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
  '18bd8b09-41d3-4528-9f2e-274221cbcdfe'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "GARVITA", "SURNAME": "THAKUR", "FATHER": "KRISHNAPAL", "MOTHER": "RASHMI", "DOB": "25-01-2020", "ADM NO.": "23-38-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "SSSMID": 313864199, "FAMILY ID": 41659688, "MOB. NO.": "M-633479360320", "ADDRESS": "CHAMUNDA PALACE,15", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 8 [enrolled]: HARDIK YADAV
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
  '655e4d42-71b2-4136-b2aa-9a2e56714cd5'::uuid,
  'HARDIK',
  'YADAV',
  '2020-03-06'::date,
  null,
  '313424682',
  '38032082',
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
  '655e4d42-71b2-4136-b2aa-9a2e56714cd5'::uuid,
  '2026-27',
  '1',
  null,
  '23-02-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '655e4d42-71b2-4136-b2aa-9a2e56714cd5'::uuid,
  'father',
  'KUNAL',
  null,
  'M-9907492526',
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
  '655e4d42-71b2-4136-b2aa-9a2e56714cd5'::uuid,
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
  '655e4d42-71b2-4136-b2aa-9a2e56714cd5'::uuid,
  'LAXMIBAI MARG, 120',
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
  '655e4d42-71b2-4136-b2aa-9a2e56714cd5'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "HARDIK", "SURNAME": "YADAV", "FATHER": "KUNAL", "MOTHER": "PRIYA", "DOB": "2020-03-06 00:00:00", "ADM NO.": "23-02-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "GAVLI", "CATE.": "OBC", "SSSMID": 313424682, "FAMILY ID": 38032082, "MOB. NO.": "M-9907492526", "ADDRESS": "LAXMIBAI MARG, 120", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 9 [enrolled]: REYANSH SINGH CHOUHAN
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
  '26cc0dc5-c836-47f4-8b87-67ed6e33dfda'::uuid,
  'REYANSH SINGH',
  'CHOUHAN',
  '2021-01-14'::date,
  null,
  '317969343',
  '49853909',
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
  '26cc0dc5-c836-47f4-8b87-67ed6e33dfda'::uuid,
  '2026-27',
  '1',
  null,
  '23-74-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '26cc0dc5-c836-47f4-8b87-67ed6e33dfda'::uuid,
  'father',
  'ROHIT',
  null,
  'M-8319571643',
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
  '26cc0dc5-c836-47f4-8b87-67ed6e33dfda'::uuid,
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
  '26cc0dc5-c836-47f4-8b87-67ed6e33dfda'::uuid,
  'CHAMUNDA PALACE, 11',
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
  '26cc0dc5-c836-47f4-8b87-67ed6e33dfda'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "REYANSH SINGH", "SURNAME": "CHOUHAN", "FATHER": "ROHIT", "MOTHER": "SAKSHI", "DOB": "14-01-2021", "ADM NO.": "23-74-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "SSSMID": 317969343, "FAMILY ID": 49853909, "MOB. NO.": "M-8319571643", "ADDRESS": "CHAMUNDA PALACE, 11", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 10 [enrolled]: RIDHI SHARMA
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
  '0d445ee6-84a0-441c-9043-a2b569232549'::uuid,
  'RIDHI',
  'SHARMA',
  '2020-08-30'::date,
  null,
  null,
  null,
  'HINDU',
  'BRAHMIN',
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
  '0d445ee6-84a0-441c-9043-a2b569232549'::uuid,
  '2026-27',
  '1',
  null,
  '23-77-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '0d445ee6-84a0-441c-9043-a2b569232549'::uuid,
  'father',
  'SHYAM',
  null,
  'M-7987871270',
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
  '0d445ee6-84a0-441c-9043-a2b569232549'::uuid,
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
  '0d445ee6-84a0-441c-9043-a2b569232549'::uuid,
  'NEW POLICE LINE',
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
  '0d445ee6-84a0-441c-9043-a2b569232549'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "RIDHI", "SURNAME": "SHARMA", "FATHER": "SHYAM", "MOTHER": "JYOTI", "DOB": "30.08.2020", "ADM NO.": "23-77-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "BRAHMIN", "CATE.": "GEN", "SSSMID": null, "FAMILY ID": null, "MOB. NO.": "M-7987871270", "ADDRESS": "NEW POLICE LINE", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 11 [enrolled]: SARTHAK VISHWAKARMA
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
  'f2ea46c2-608f-4d7e-9bff-a8ef297fc094'::uuid,
  'SARTHAK',
  'VISHWAKARMA',
  '2020-05-16'::date,
  null,
  '318053248',
  '34189027',
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
  'f2ea46c2-608f-4d7e-9bff-a8ef297fc094'::uuid,
  '2026-27',
  '1',
  null,
  '23-40-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  'f2ea46c2-608f-4d7e-9bff-a8ef297fc094'::uuid,
  'father',
  'AJAY',
  null,
  'M-9770051692',
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
  'f2ea46c2-608f-4d7e-9bff-a8ef297fc094'::uuid,
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
  'f2ea46c2-608f-4d7e-9bff-a8ef297fc094'::uuid,
  ',ARJUN NAGAR, 133',
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
  'f2ea46c2-608f-4d7e-9bff-a8ef297fc094'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SARTHAK", "SURNAME": "VISHWAKARMA", "FATHER": "AJAY", "MOTHER": "SEEMA", "DOB": "16.05.2020", "ADM NO.": "23-40-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": null, "CATE.": "OBC", "SSSMID": 318053248, "FAMILY ID": 34189027, "MOB. NO.": "M-9770051692", "ADDRESS": ",ARJUN NAGAR, 133", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 12 [enrolled]: SHIVNYA GOSWAMI
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
  'a187af04-e4bc-4a84-bed1-774e6d18a4e6'::uuid,
  'SHIVNYA',
  'GOSWAMI',
  '2019-04-29'::date,
  null,
  '314132597',
  '21960154',
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
  'a187af04-e4bc-4a84-bed1-774e6d18a4e6'::uuid,
  '2026-27',
  '1',
  null,
  '23-54-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  'a187af04-e4bc-4a84-bed1-774e6d18a4e6'::uuid,
  'father',
  'DEVNARAYAN',
  null,
  'M-9827535090',
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
  'a187af04-e4bc-4a84-bed1-774e6d18a4e6'::uuid,
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
  'a187af04-e4bc-4a84-bed1-774e6d18a4e6'::uuid,
  'PRANAY NAGAR RADHAGANJ B.N.P ROAD, 26',
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
  'a187af04-e4bc-4a84-bed1-774e6d18a4e6'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SHIVNYA", "SURNAME": "GOSWAMI", "FATHER": "DEVNARAYAN", "MOTHER": "REENA", "DOB": "29-04-2019", "ADM NO.": "23-54-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "SSSMID": 314132597, "FAMILY ID": 21960154, "MOB. NO.": "M-9827535090", "ADDRESS": "PRANAY NAGAR RADHAGANJ B.N.P ROAD, 26", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 13 [enrolled]: STUTI Choukse
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
  'adecab89-0fd3-453a-8780-3808d4c55582'::uuid,
  'STUTI',
  'Choukse',
  '2020-03-23'::date,
  null,
  '315126712',
  '24921827',
  'HINDU',
  'CHOUKSE',
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
  'adecab89-0fd3-453a-8780-3808d4c55582'::uuid,
  '2026-27',
  '1',
  null,
  '23-13-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  'adecab89-0fd3-453a-8780-3808d4c55582'::uuid,
  'father',
  'Rahul',
  null,
  'M-9770439240',
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
  'adecab89-0fd3-453a-8780-3808d4c55582'::uuid,
  'mother',
  'Surabhi',
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
  'adecab89-0fd3-453a-8780-3808d4c55582'::uuid,
  'CHAMUNDA PALACE, 10/1',
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
  'adecab89-0fd3-453a-8780-3808d4c55582'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "STUTI", "SURNAME": "Choukse", "FATHER": "Rahul", "MOTHER": "Surabhi", "DOB": "23-03-2020", "ADM NO.": "23-13-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "CHOUKSE", "CATE.": "OBC", "SSSMID": 315126712, "FAMILY ID": 24921827, "MOB. NO.": "M-9770439240", "ADDRESS": "CHAMUNDA PALACE, 10/1", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 14 [enrolled]: KESHAV-24 YADAV
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
  '86cc8424-e1b3-48df-a80c-38ba8abc5d48'::uuid,
  'KESHAV-24',
  'YADAV',
  '2019-12-14'::date,
  null,
  '317968927',
  '37865177',
  'HINDU',
  'YADAV',
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
  '86cc8424-e1b3-48df-a80c-38ba8abc5d48'::uuid,
  '2026-27',
  '1',
  null,
  '24-68-L',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '86cc8424-e1b3-48df-a80c-38ba8abc5d48'::uuid,
  'father',
  'ARUN',
  null,
  '8319556774',
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
  '86cc8424-e1b3-48df-a80c-38ba8abc5d48'::uuid,
  'mother',
  'PUSHPA',
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
  '86cc8424-e1b3-48df-a80c-38ba8abc5d48'::uuid,
  '121-LAXMI BAI MARG K.P. COLLEGE DEWAS',
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
  '86cc8424-e1b3-48df-a80c-38ba8abc5d48'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "KESHAV-24", "SURNAME": "YADAV", "FATHER": "ARUN", "MOTHER": "PUSHPA", "DOB": "2019-12-14 00:00:00", "ADM NO.": "24-68-L", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "YADAV", "CATE.": "OBC", "SSSMID": 317968927, "FAMILY ID": 37865177, "MOB. NO.": 8319556774, "ADDRESS": "121-LAXMI BAI MARG K.P. COLLEGE DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 15 [enrolled]: YANIKA SHARMA
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
  '4ef14295-a7ca-48d4-88f9-6b849c4bef14'::uuid,
  'YANIKA',
  'SHARMA',
  '2018-07-25'::date,
  null,
  '312723832',
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
  '4ef14295-a7ca-48d4-88f9-6b849c4bef14'::uuid,
  '2026-27',
  '1',
  null,
  '24-81-L',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '4ef14295-a7ca-48d4-88f9-6b849c4bef14'::uuid,
  'father',
  'MANOJ',
  null,
  '8435358879',
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
  '4ef14295-a7ca-48d4-88f9-6b849c4bef14'::uuid,
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
  '4ef14295-a7ca-48d4-88f9-6b849c4bef14'::uuid,
  '73 CHAMUNDA PURI DEWAS',
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
  '4ef14295-a7ca-48d4-88f9-6b849c4bef14'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "YANIKA", "SURNAME": "SHARMA", "FATHER": "MANOJ", "MOTHER": "KAVITA", "DOB": "2018-07-25 00:00:00", "ADM NO.": "24-81-L", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "BRAHMAN", "CATE.": "GEN.", "SSSMID": 312723832, "FAMILY ID": 33782780, "MOB. NO.": 8435358879, "ADDRESS": "73 CHAMUNDA PURI DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 16 [enrolled]: DEVENDRA SINGH-2025 BAGHEL
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
  '16f78ef7-e6be-475d-9b29-ac54cafc9aa8'::uuid,
  'DEVENDRA SINGH-2025',
  'BAGHEL',
  '2018-09-06'::date,
  null,
  '319032581',
  '24321922',
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
  '16f78ef7-e6be-475d-9b29-ac54cafc9aa8'::uuid,
  '2026-27',
  '1',
  null,
  '25-75-U',
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
  '16f78ef7-e6be-475d-9b29-ac54cafc9aa8'::uuid,
  'father',
  'SANJAY',
  null,
  '6269488348',
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
  '16f78ef7-e6be-475d-9b29-ac54cafc9aa8'::uuid,
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
  '16f78ef7-e6be-475d-9b29-ac54cafc9aa8'::uuid,
  'KHATIKHEDI 145 DEWAS',
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
  '16f78ef7-e6be-475d-9b29-ac54cafc9aa8'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "DEVENDRA SINGH-2025", "SURNAME": "BAGHEL", "FATHER": "SANJAY", "MOTHER": "MANJU", "DOB": "2018-09-06 00:00:00", "ADM NO.": "25-75-U", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "SSSMID": 319032581, "FAMILY ID": 24321922, "MOB. NO.": 6269488348, "ADDRESS": "KHATIKHEDI 145 DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 17 [enrolled]: VARTIKA DHAKAD
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
  '8ac6de60-33b7-4961-910d-5c9a4d6f71d7'::uuid,
  'VARTIKA',
  'DHAKAD',
  '2020-10-07'::date,
  null,
  '321098622',
  '46891475',
  'HINDU',
  'DHANAK',
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
  '8ac6de60-33b7-4961-910d-5c9a4d6f71d7'::uuid,
  '2026-27',
  '1',
  null,
  '24-18-L',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '8ac6de60-33b7-4961-910d-5c9a4d6f71d7'::uuid,
  'father',
  'JITENDRA',
  null,
  'M-9098204684, 9165153008',
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
  '8ac6de60-33b7-4961-910d-5c9a4d6f71d7'::uuid,
  'mother',
  'NAVRATNA',
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
  '8ac6de60-33b7-4961-910d-5c9a4d6f71d7'::uuid,
  '175 SAI DHAM COLONY DEWAS',
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
  '8ac6de60-33b7-4961-910d-5c9a4d6f71d7'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "VARTIKA", "SURNAME": "DHAKAD", "FATHER": "JITENDRA", "MOTHER": "NAVRATNA", "DOB": "2020-10-07 00:00:00", "ADM NO.": "24-18-L", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "DHANAK", "CATE.": "OBC", "SSSMID": 321098622, "FAMILY ID": 46891475, "MOB. NO.": "M-9098204684, 9165153008", "ADDRESS": "175 SAI DHAM COLONY DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 18 [enrolled]: DEVANSH-24 PRAJAPATI
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
  '6d460fe6-6e77-4423-9422-fbea4922df5c'::uuid,
  'DEVANSH-24',
  'PRAJAPATI',
  '2018-11-10'::date,
  null,
  '318538750',
  '37401055',
  'HINDU',
  'KUMAR',
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
  '6d460fe6-6e77-4423-9422-fbea4922df5c'::uuid,
  '2026-27',
  '1',
  null,
  '24-63-U',
  null,
  null,
  null,
  null,
  null,
  'Local',
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
  '6d460fe6-6e77-4423-9422-fbea4922df5c'::uuid,
  'father',
  'DHARMENDRA',
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
  '6d460fe6-6e77-4423-9422-fbea4922df5c'::uuid,
  'mother',
  'NEHA',
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
  '6d460fe6-6e77-4423-9422-fbea4922df5c'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DEVANSH-24", "SURNAME": "PRAJAPATI", "FATHER": "DHARMENDRA", "MOTHER": "NEHA", "DOB": "2018-11-10 00:00:00", "ADM NO.": "24-63-U", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "KUMAR", "CATE.": "OBC", "SSSMID": 318538750, "FAMILY ID": 37401055, "MOB. NO.": null, "ADDRESS": null, "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 19 [enrolled]: AVIRAT SOLANKI
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
  '60872617-05de-4a42-bb40-33f4d1295b04'::uuid,
  'AVIRAT',
  'SOLANKI',
  '2018-05-23'::date,
  null,
  '311989661',
  '45924387',
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
  '60872617-05de-4a42-bb40-33f4d1295b04'::uuid,
  '2026-27',
  '1',
  null,
  '24-93-U',
  null,
  null,
  null,
  null,
  null,
  'LOCAL',
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
  '60872617-05de-4a42-bb40-33f4d1295b04'::uuid,
  'father',
  'VIJAY',
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
  '60872617-05de-4a42-bb40-33f4d1295b04'::uuid,
  'mother',
  'VANDNA',
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
  '60872617-05de-4a42-bb40-33f4d1295b04'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "AVIRAT", "SURNAME": "SOLANKI", "FATHER": "VIJAY", "MOTHER": "VANDNA", "DOB": "23-05-2018", "ADM NO.": "24-93-U", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "SSSMID": 311989661, "FAMILY ID": 45924387, "MOB. NO.": null, "ADDRESS": null, "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 20 [enrolled]: KANIKA MADAME
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
  'f12142a6-1c9f-4176-8e5a-d2a71850db8b'::uuid,
  'KANIKA',
  'MADAME',
  '2019-05-10'::date,
  null,
  '322732801',
  '38367656',
  'HINDU',
  'MAHAR',
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
  'f12142a6-1c9f-4176-8e5a-d2a71850db8b'::uuid,
  '2026-27',
  '1',
  null,
  '26-19-1st',
  '2346',
  null,
  null,
  null,
  null,
  null,
  'SHISHU NIKETAN',
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
  'f12142a6-1c9f-4176-8e5a-d2a71850db8b'::uuid,
  'father',
  'NARENDRA',
  null,
  'M-8989508306',
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
  'f12142a6-1c9f-4176-8e5a-d2a71850db8b'::uuid,
  'mother',
  'NAMRATA',
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
  'f12142a6-1c9f-4176-8e5a-d2a71850db8b'::uuid,
  'VIJAY NAGAR-61',
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
  'f12142a6-1c9f-4176-8e5a-d2a71850db8b'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 20, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "KANIKA", "SURNAME": "MADAME", "FATHER": "NARENDRA", "MOTHER": "NAMRATA", "DOB": "2019-05-10 00:00:00", "ADM NO.": "26-19-1st", "SCHOLAR": 2346, "RELIGION": "HINDU", "CASTE": "MAHAR", "CATE.": "SC", "SSSMID": 322732801, "FAMILY ID": 38367656, "MOB. NO.": "M-8989508306", "ADDRESS": "VIJAY NAGAR-61", "LAST SCHOOL": "SHISHU NIKETAN"}}'::jsonb
);

-- CLASS 1st row 21 [enrolled]: VIHANA MALVIYA
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
  '2b5f5312-c2bd-4b0b-8b68-a8d826965577'::uuid,
  'VIHANA',
  'MALVIYA',
  '2019-06-04'::date,
  null,
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
  '2b5f5312-c2bd-4b0b-8b68-a8d826965577'::uuid,
  '2026-27',
  '1',
  null,
  '26-22-1st',
  '2347',
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
  '2b5f5312-c2bd-4b0b-8b68-a8d826965577'::uuid,
  'father',
  'JITENDRA',
  null,
  'M-9826276649, 9009360352',
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
  '2b5f5312-c2bd-4b0b-8b68-a8d826965577'::uuid,
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
  '2b5f5312-c2bd-4b0b-8b68-a8d826965577'::uuid,
  'VIJAY NAGAR -5',
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
  '2b5f5312-c2bd-4b0b-8b68-a8d826965577'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 21, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "VIHANA", "SURNAME": "MALVIYA", "FATHER": "JITENDRA", "MOTHER": "NISHA", "DOB": "2019-06-04 00:00:00", "ADM NO.": "26-22-1st", "SCHOLAR": 2347, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "SSSMID": null, "FAMILY ID": null, "MOB. NO.": "M-9826276649, 9009360352", "ADDRESS": "VIJAY NAGAR -5", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 22 [enrolled]: ABHIGYA PARMAR
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
  'c073f38f-8b28-4ffa-ae7a-5f6debd16b97'::uuid,
  'ABHIGYA',
  'PARMAR',
  '2020-04-27'::date,
  null,
  '318207011',
  '25308087',
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
  'c073f38f-8b28-4ffa-ae7a-5f6debd16b97'::uuid,
  '2026-27',
  '1',
  null,
  '26-31-1st',
  '2352',
  null,
  null,
  null,
  null,
  null,
  'YOG INTERNATIONAL',
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
  'c073f38f-8b28-4ffa-ae7a-5f6debd16b97'::uuid,
  'father',
  'HEMANT',
  null,
  'M-7803806423, 6262875237',
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
  'c073f38f-8b28-4ffa-ae7a-5f6debd16b97'::uuid,
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
  'c073f38f-8b28-4ffa-ae7a-5f6debd16b97'::uuid,
  'VHAMUNDA PALACE -13',
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
  'c073f38f-8b28-4ffa-ae7a-5f6debd16b97'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 22, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "ABHIGYA", "SURNAME": "PARMAR", "FATHER": "HEMANT", "MOTHER": "MONIKA", "DOB": "2020-04-27 00:00:00", "ADM NO.": "26-31-1st", "SCHOLAR": 2352, "RELIGION": "HINDU", "CASTE": "MALI", "CATE.": "OBC", "SSSMID": 318207011, "FAMILY ID": 25308087, "MOB. NO.": "M-7803806423, 6262875237", "ADDRESS": "VHAMUNDA PALACE -13", "LAST SCHOOL": "YOG INTERNATIONAL"}}'::jsonb
);

-- CLASS 1st row 23 [enrolled]: LITANSHI SINGAN
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
  'bb8d43f2-1c01-490e-8e95-45b9aec1e376'::uuid,
  'LITANSHI',
  'SINGAN',
  '2019-06-27'::date,
  null,
  '314196951',
  '44413778',
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
  'bb8d43f2-1c01-490e-8e95-45b9aec1e376'::uuid,
  '2026-27',
  '1',
  null,
  '26-52-1st',
  '264',
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
  'bb8d43f2-1c01-490e-8e95-45b9aec1e376'::uuid,
  'father',
  'ABHISEK',
  null,
  'M-9131833320, 6263539770',
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
  'bb8d43f2-1c01-490e-8e95-45b9aec1e376'::uuid,
  'mother',
  'ARCHANA',
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
  'bb8d43f2-1c01-490e-8e95-45b9aec1e376'::uuid,
  'VASUDEV PURA - 03',
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
  'bb8d43f2-1c01-490e-8e95-45b9aec1e376'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 23, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "LITANSHI", "SURNAME": "SINGAN", "FATHER": "ABHISEK", "MOTHER": "ARCHANA", "DOB": "2019-06-27 00:00:00", "ADM NO.": "26-52-1st", "SCHOLAR": 264, "RELIGION": "HINDU", "CASTE": "MEHTAR", "CATE.": "SC", "SSSMID": 314196951, "FAMILY ID": 44413778, "MOB. NO.": "M-9131833320, 6263539770", "ADDRESS": "VASUDEV PURA - 03", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 24 [enrolled]: KAVYA AKODIYA
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
  'd2b54ab1-7bf6-4210-86be-ab91c35901ab'::uuid,
  'KAVYA',
  'AKODIYA',
  '2019-11-04'::date,
  null,
  '313855518',
  '44849996',
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
  'd2b54ab1-7bf6-4210-86be-ab91c35901ab'::uuid,
  '2026-27',
  '1',
  null,
  '26-62-1st',
  '2372',
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
  'd2b54ab1-7bf6-4210-86be-ab91c35901ab'::uuid,
  'father',
  'ANIL',
  null,
  'M-9644315465, 9630346665',
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
  'd2b54ab1-7bf6-4210-86be-ab91c35901ab'::uuid,
  'mother',
  'NEELU',
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
  'd2b54ab1-7bf6-4210-86be-ab91c35901ab'::uuid,
  'CHAMUNDAPURI-30',
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
  'd2b54ab1-7bf6-4210-86be-ab91c35901ab'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 24, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "KAVYA", "SURNAME": "AKODIYA", "FATHER": "ANIL", "MOTHER": "NEELU", "DOB": "2019-11-04 00:00:00", "ADM NO.": "26-62-1st", "SCHOLAR": 2372, "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "SSSMID": 313855518, "FAMILY ID": 44849996, "MOB. NO.": "M-9644315465, 9630346665", "ADDRESS": "CHAMUNDAPURI-30", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 27 [rte]: AARUDRA JALKHEDIYA Corrections: Converted date-formatted scholar value 1905-09-22 to 2092.
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
  '956d3b79-e3e1-460a-8a68-4e957d461c94'::uuid,
  'AARUDRA',
  'JALKHEDIYA',
  '2018-11-21'::date,
  null,
  '315485277',
  '22639216',
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
  '956d3b79-e3e1-460a-8a68-4e957d461c94'::uuid,
  '2026-27',
  '1',
  null,
  '23-16-N',
  '2092',
  null,
  null,
  null,
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
  '956d3b79-e3e1-460a-8a68-4e957d461c94'::uuid,
  'father',
  'PRAMOD',
  null,
  'M-7828140477, 7000590601',
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
  '956d3b79-e3e1-460a-8a68-4e957d461c94'::uuid,
  'mother',
  'RACHNA',
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
  '956d3b79-e3e1-460a-8a68-4e957d461c94'::uuid,
  'AMBEDKAR NAGAR',
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
  '956d3b79-e3e1-460a-8a68-4e957d461c94'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 27, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-22 to 2092."], "data": {"MODE": null, "NAME": "AARUDRA", "SURNAME": "JALKHEDIYA", "FATHER": "PRAMOD", "MOTHER": "RACHNA", "DOB": "21.11.2018", "ADM NO.": "23-16-N", "SCHOLAR": "1905-09-22 00:00:00", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "SSSMID": 315485277, "FAMILY ID": 22639216, "MOB. NO.": "M-7828140477, 7000590601", "ADDRESS": "AMBEDKAR NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 28 [rte]: AKSHITA VERMA Corrections: Converted date-formatted scholar value 1905-09-21 to 2091.
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
  'fd43a2a1-f30f-41bb-bfae-e0eb0ad1badb'::uuid,
  'AKSHITA',
  'VERMA',
  '2020-03-07'::date,
  null,
  '316033088',
  '36690177',
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
  'fd43a2a1-f30f-41bb-bfae-e0eb0ad1badb'::uuid,
  '2026-27',
  '1',
  null,
  '23-17-N',
  '2091',
  null,
  null,
  null,
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
  'fd43a2a1-f30f-41bb-bfae-e0eb0ad1badb'::uuid,
  'father',
  'RAJAT',
  null,
  ',M-6263509969, 6263535133',
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
  'fd43a2a1-f30f-41bb-bfae-e0eb0ad1badb'::uuid,
  'mother',
  'RACHNA',
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
  'fd43a2a1-f30f-41bb-bfae-e0eb0ad1badb'::uuid,
  '04 NAI BASTI KALU KHEDI',
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
  'fd43a2a1-f30f-41bb-bfae-e0eb0ad1badb'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 28, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-21 to 2091."], "data": {"MODE": null, "NAME": "AKSHITA", "SURNAME": "VERMA", "FATHER": "RAJAT", "MOTHER": "RACHNA", "DOB": "07.03.2020", "ADM NO.": "23-17-N", "SCHOLAR": "1905-09-21 00:00:00", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "SSSMID": 316033088, "FAMILY ID": 36690177, "MOB. NO.": ",M-6263509969, 6263535133", "ADDRESS": "04 NAI BASTI KALU KHEDI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 29 [rte]: AMOLIKA MALVIYA Corrections: Converted date-formatted scholar value 1905-09-20 to 2090.
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
  '665c7aba-a06d-4452-ade4-f503ee4f4ec4'::uuid,
  'AMOLIKA',
  'MALVIYA',
  '2020-03-07'::date,
  null,
  '318139044',
  '36678872',
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
  '665c7aba-a06d-4452-ade4-f503ee4f4ec4'::uuid,
  '2026-27',
  '1',
  null,
  '23-07-N',
  '2090',
  null,
  null,
  null,
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
  '665c7aba-a06d-4452-ade4-f503ee4f4ec4'::uuid,
  'father',
  'AJAY',
  null,
  'M- 9617257689, 8717938361',
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
  '665c7aba-a06d-4452-ade4-f503ee4f4ec4'::uuid,
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
  '665c7aba-a06d-4452-ade4-f503ee4f4ec4'::uuid,
  '13/1 MAHAKAL COLONY',
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
  '665c7aba-a06d-4452-ade4-f503ee4f4ec4'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 29, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-20 to 2090."], "data": {"MODE": null, "NAME": "AMOLIKA", "SURNAME": "MALVIYA", "FATHER": "AJAY", "MOTHER": "MAMTA", "DOB": "2020-03-07 00:00:00", "ADM NO.": "23-07-N", "SCHOLAR": "1905-09-20 00:00:00", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "SSSMID": 318139044, "FAMILY ID": 36678872, "MOB. NO.": "M- 9617257689, 8717938361", "ADDRESS": "13/1 MAHAKAL COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 30 [rte]: BHUMI KAJALIYA Corrections: Converted date-formatted scholar value 1905-09-23 to 2093.
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
  'b86b3e0b-54f6-4fd7-a955-503dfdd1c84e'::uuid,
  'BHUMI',
  'KAJALIYA',
  '2019-12-26'::date,
  null,
  '318538740',
  '44036369',
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
  'b86b3e0b-54f6-4fd7-a955-503dfdd1c84e'::uuid,
  '2026-27',
  '1',
  null,
  '23-10-N',
  '2093',
  null,
  null,
  null,
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
  'b86b3e0b-54f6-4fd7-a955-503dfdd1c84e'::uuid,
  'father',
  'SURENDRA',
  null,
  'M-8959694895',
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
  'b86b3e0b-54f6-4fd7-a955-503dfdd1c84e'::uuid,
  'mother',
  'PARMILA',
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
  'b86b3e0b-54f6-4fd7-a955-503dfdd1c84e'::uuid,
  '06 ARJUN NAGAR',
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
  'b86b3e0b-54f6-4fd7-a955-503dfdd1c84e'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 30, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-23 to 2093."], "data": {"MODE": null, "NAME": "BHUMI", "SURNAME": "KAJALIYA", "FATHER": "SURENDRA", "MOTHER": "PARMILA", "DOB": "26.12.2019", "ADM NO.": "23-10-N", "SCHOLAR": "1905-09-23 00:00:00", "RELIGION": "HINDU", "CASTE": "KORKU", "CATE.": "ST", "SSSMID": 318538740, "FAMILY ID": 44036369, "MOB. NO.": "M-8959694895", "ADDRESS": "06 ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 31 [rte]: JAYANT MALVIYA Corrections: Converted date-formatted scholar value 1905-09-24 to 2094.
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
  '8690a8bb-13ed-44de-8d00-40fa4d0d568a'::uuid,
  'JAYANT',
  'MALVIYA',
  '2018-10-18'::date,
  null,
  '318411030',
  '46068924',
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
  '8690a8bb-13ed-44de-8d00-40fa4d0d568a'::uuid,
  '2026-27',
  '1',
  null,
  '23-18-N',
  '2094',
  null,
  null,
  null,
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
  '8690a8bb-13ed-44de-8d00-40fa4d0d568a'::uuid,
  'father',
  'JITENDRA',
  null,
  'M-8819999116, 8889099266',
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
  '8690a8bb-13ed-44de-8d00-40fa4d0d568a'::uuid,
  'mother',
  'ASHA',
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
  '8690a8bb-13ed-44de-8d00-40fa4d0d568a'::uuid,
  '15 NAIBASTI KALU KHEDI',
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
  '8690a8bb-13ed-44de-8d00-40fa4d0d568a'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 31, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-24 to 2094."], "data": {"MODE": null, "NAME": "JAYANT", "SURNAME": "MALVIYA", "FATHER": "JITENDRA", "MOTHER": "ASHA", "DOB": "18.10.2018", "ADM NO.": "23-18-N", "SCHOLAR": "1905-09-24 00:00:00", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "SSSMID": 318411030, "FAMILY ID": 46068924, "MOB. NO.": "M-8819999116, 8889099266", "ADDRESS": "15 NAIBASTI KALU KHEDI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 32 [rte]: MANVEER SINGH DODIYA Corrections: Converted date-formatted scholar value 1905-09-26 to 2096.
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
  '4a0174f1-bd3b-40af-b22e-a49bc7a247f7'::uuid,
  'MANVEER SINGH',
  'DODIYA',
  '2020-02-11'::date,
  null,
  '318259469',
  '42892750',
  'HINDU',
  'GRN.',
  'RAJPUT'
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
  '4a0174f1-bd3b-40af-b22e-a49bc7a247f7'::uuid,
  '2026-27',
  '1',
  null,
  '23-11-N',
  '2096',
  null,
  null,
  null,
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
  '4a0174f1-bd3b-40af-b22e-a49bc7a247f7'::uuid,
  'father',
  'HUKUM',
  null,
  'M-9131394200',
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
  '4a0174f1-bd3b-40af-b22e-a49bc7a247f7'::uuid,
  'mother',
  'KRIHNA',
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
  '4a0174f1-bd3b-40af-b22e-a49bc7a247f7'::uuid,
  '31 KANCHANPURA DEWAS',
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
  '4a0174f1-bd3b-40af-b22e-a49bc7a247f7'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 32, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-26 to 2096."], "data": {"MODE": null, "NAME": "MANVEER SINGH", "SURNAME": "DODIYA", "FATHER": "HUKUM", "MOTHER": "KRIHNA", "DOB": "11.02.2020", "ADM NO.": "23-11-N", "SCHOLAR": "1905-09-26 00:00:00", "RELIGION": "HINDU", "CASTE": "GRN.", "CATE.": "RAJPUT", "SSSMID": 318259469, "FAMILY ID": 42892750, "MOB. NO.": "M-9131394200", "ADDRESS": "31 KANCHANPURA DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 33 [rte]: MAYANK MALVIYA Corrections: Converted date-formatted scholar value 1905-09-25 to 2095.
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
  '9d7b797e-c079-4c75-bbe8-e95612e82c27'::uuid,
  'MAYANK',
  'MALVIYA',
  '2019-12-18'::date,
  null,
  '319770948',
  '43561589',
  'HINDU',
  'SC',
  'BALAI'
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
  '9d7b797e-c079-4c75-bbe8-e95612e82c27'::uuid,
  '2026-27',
  '1',
  null,
  '23-08-N',
  '2095',
  null,
  null,
  null,
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
  '9d7b797e-c079-4c75-bbe8-e95612e82c27'::uuid,
  'father',
  'DHIRAJ',
  null,
  'M-7400675315',
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
  '9d7b797e-c079-4c75-bbe8-e95612e82c27'::uuid,
  'mother',
  'SADHNA',
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
  '9d7b797e-c079-4c75-bbe8-e95612e82c27'::uuid,
  '12 MAHAKAL COLONY',
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
  '9d7b797e-c079-4c75-bbe8-e95612e82c27'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 33, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-25 to 2095."], "data": {"MODE": null, "NAME": "MAYANK", "SURNAME": "MALVIYA", "FATHER": "DHIRAJ", "MOTHER": "SADHNA", "DOB": "18.12.2019", "ADM NO.": "23-08-N", "SCHOLAR": "1905-09-25 00:00:00", "RELIGION": "HINDU", "CASTE": "SC", "CATE.": "BALAI", "SSSMID": 319770948, "FAMILY ID": 43561589, "MOB. NO.": "M-7400675315", "ADDRESS": "12 MAHAKAL COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 34 [rte]: NIVYA NAGAR Corrections: Converted date-formatted scholar value 1905-09-27 to 2097.
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
  '54654f85-0252-4021-b921-acdb54686c4e'::uuid,
  'NIVYA',
  'NAGAR',
  '2020-04-11'::date,
  null,
  '314070530',
  '37317229',
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
  '54654f85-0252-4021-b921-acdb54686c4e'::uuid,
  '2026-27',
  '1',
  null,
  '23-12-N',
  '2097',
  null,
  null,
  null,
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
  '54654f85-0252-4021-b921-acdb54686c4e'::uuid,
  'father',
  'JITENDRA',
  null,
  'M-8251984362',
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
  '54654f85-0252-4021-b921-acdb54686c4e'::uuid,
  'mother',
  'SONAMATI',
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
  '54654f85-0252-4021-b921-acdb54686c4e'::uuid,
  'CHAMUNDA NAGAR',
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
  '54654f85-0252-4021-b921-acdb54686c4e'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 34, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-27 to 2097."], "data": {"MODE": null, "NAME": "NIVYA", "SURNAME": "NAGAR", "FATHER": "JITENDRA", "MOTHER": "SONAMATI", "DOB": "11.04.2020", "ADM NO.": "23-12-N", "SCHOLAR": "1905-09-27 00:00:00", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "SSSMID": 314070530, "FAMILY ID": 37317229, "MOB. NO.": "M-8251984362", "ADDRESS": "CHAMUNDA NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 35 [rte]: SAMIKSHA WAGHMARE Corrections: Converted date-formatted scholar value 1905-09-28 to 2098.
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
  'ebc33790-21be-491d-b35b-5ffa751de421'::uuid,
  'SAMIKSHA',
  'WAGHMARE',
  '2019-09-12'::date,
  null,
  '313944850',
  '36602191',
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
  'ebc33790-21be-491d-b35b-5ffa751de421'::uuid,
  '2026-27',
  '1',
  null,
  '23-15-N',
  '2098',
  null,
  null,
  null,
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
  'ebc33790-21be-491d-b35b-5ffa751de421'::uuid,
  'father',
  'VIKAS',
  null,
  'M-9009359476',
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
  'ebc33790-21be-491d-b35b-5ffa751de421'::uuid,
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
  'ebc33790-21be-491d-b35b-5ffa751de421'::uuid,
  'KALUKHEDI - 6/49',
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
  'ebc33790-21be-491d-b35b-5ffa751de421'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 35, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-28 to 2098."], "data": {"MODE": null, "NAME": "SAMIKSHA", "SURNAME": "WAGHMARE", "FATHER": "VIKAS", "MOTHER": "MAYA", "DOB": "12.09.2019", "ADM NO.": "23-15-N", "SCHOLAR": "1905-09-28 00:00:00", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "SSSMID": 313944850, "FAMILY ID": 36602191, "MOB. NO.": "M-9009359476", "ADDRESS": "KALUKHEDI - 6/49", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 36 [rte]: TANISHK KUMAR SHAH Corrections: Converted date-formatted scholar value 1905-09-29 to 2099.
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
  'b3afe2c3-76fa-423b-a971-462afe4e9f48'::uuid,
  'TANISHK KUMAR',
  'SHAH',
  '2019-04-20'::date,
  null,
  '314186344',
  '37942289',
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
  'b3afe2c3-76fa-423b-a971-462afe4e9f48'::uuid,
  '2026-27',
  '1',
  null,
  '236-09-N',
  '2099',
  null,
  null,
  null,
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
  'b3afe2c3-76fa-423b-a971-462afe4e9f48'::uuid,
  'father',
  'VIJAY',
  null,
  'M-8962397710',
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
  'b3afe2c3-76fa-423b-a971-462afe4e9f48'::uuid,
  'mother',
  'SONAMATI',
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
  'b3afe2c3-76fa-423b-a971-462afe4e9f48'::uuid,
  'MAHAKAL COLONY',
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
  'b3afe2c3-76fa-423b-a971-462afe4e9f48'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 36, "section": "rte", "corrections": ["Converted date-formatted scholar value 1905-09-29 to 2099."], "data": {"MODE": null, "NAME": "TANISHK KUMAR", "SURNAME": "SHAH", "FATHER": "VIJAY", "MOTHER": "SONAMATI", "DOB": "2019-04-20 00:00:00", "ADM NO.": "236-09-N", "SCHOLAR": "1905-09-29 00:00:00", "RELIGION": "HINDU", "CASTE": "TELI", "CATE.": "OBC", "SSSMID": 314186344, "FAMILY ID": 37942289, "MOB. NO.": "M-8962397710", "ADDRESS": "MAHAKAL COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 38 [left]: YUG-24 CHAUBEY
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
  '11122148-ce87-406f-978a-0fa601832076'::uuid,
  'YUG-24',
  'CHAUBEY',
  '2020-03-15'::date,
  null,
  '311743161',
  '20188797',
  'HINDU',
  'BRAHMEN',
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
  '11122148-ce87-406f-978a-0fa601832076'::uuid,
  '2026-27',
  '1',
  null,
  '24-42-L',
  '24-42-L',
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  '11122148-ce87-406f-978a-0fa601832076'::uuid,
  'father',
  'UDAY KUMAR',
  null,
  'M-6361665394, 8968512135',
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
  '11122148-ce87-406f-978a-0fa601832076'::uuid,
  'mother',
  'ABHA',
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
  '11122148-ce87-406f-978a-0fa601832076'::uuid,
  'Q.NO. 3611 B.N.P DEWAS',
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
  '11122148-ce87-406f-978a-0fa601832076'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 38, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "YUG-24", "SURNAME": "CHAUBEY", "FATHER": "UDAY KUMAR", "MOTHER": "ABHA", "DOB": "2020-03-15 00:00:00", "ADM NO.": "24-42-L", "SCHOLAR": "24-42-L", "RELIGION": "HINDU", "CASTE": "BRAHMEN", "CATE.": "GEN", "SSSMID": 311743161, "FAMILY ID": 20188797, "MOB. NO.": "M-6361665394, 8968512135", "ADDRESS": "Q.NO. 3611 B.N.P DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 39 [left]: KHUSHRAJ SINGH CHOUHAN
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
  '6877be93-63cf-4353-8f59-2f2f538ba608'::uuid,
  'KHUSHRAJ SINGH',
  'CHOUHAN',
  '2020-01-25'::date,
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
  '6877be93-63cf-4353-8f59-2f2f538ba608'::uuid,
  '2026-27',
  '1',
  null,
  '23-06-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  '6877be93-63cf-4353-8f59-2f2f538ba608'::uuid,
  'father',
  'Mahendra',
  null,
  'M-9993593060',
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
  '6877be93-63cf-4353-8f59-2f2f538ba608'::uuid,
  'mother',
  'Varsha',
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
  '6877be93-63cf-4353-8f59-2f2f538ba608'::uuid,
  'ARJUN NAGAR COLONY, 7',
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
  '6877be93-63cf-4353-8f59-2f2f538ba608'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 39, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "KHUSHRAJ SINGH", "SURNAME": "CHOUHAN", "FATHER": "Mahendra", "MOTHER": "Varsha", "DOB": "25-01-20", "ADM NO.": "23-06-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "SSSMID": null, "FAMILY ID": null, "MOB. NO.": "M-9993593060", "ADDRESS": "ARJUN NAGAR COLONY, 7", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 40 [left]: NITYAM CHOUDHARY
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
  'eaa0e10e-eca9-4f99-952c-e1f12ad76b5f'::uuid,
  'NITYAM',
  'CHOUDHARY',
  '2017-12-18'::date,
  null,
  null,
  null,
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
  'eaa0e10e-eca9-4f99-952c-e1f12ad76b5f'::uuid,
  '2026-27',
  '1',
  null,
  '24-90-L',
  null,
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  'eaa0e10e-eca9-4f99-952c-e1f12ad76b5f'::uuid,
  'father',
  'AJAY',
  null,
  '7974621766',
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
  'eaa0e10e-eca9-4f99-952c-e1f12ad76b5f'::uuid,
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
  'eaa0e10e-eca9-4f99-952c-e1f12ad76b5f'::uuid,
  'RABADIYA DEWAS',
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
  'eaa0e10e-eca9-4f99-952c-e1f12ad76b5f'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 40, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "NITYAM", "SURNAME": "CHOUDHARY", "FATHER": "AJAY", "MOTHER": "MAMTA", "DOB": "18-12-2017", "ADM NO.": "24-90-L", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "SSSMID": null, "FAMILY ID": null, "MOB. NO.": 7974621766, "ADDRESS": "RABADIYA DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 41 [left]: GATIK VASHISHTH SHARMA
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
  '938d1e40-f8d0-404b-b94c-db5fdc7aa281'::uuid,
  'GATIK VASHISHTH',
  'SHARMA',
  '2020-05-14'::date,
  null,
  null,
  null,
  'HINDU',
  'BRAHMIN',
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
  '938d1e40-f8d0-404b-b94c-db5fdc7aa281'::uuid,
  '2026-27',
  '1',
  null,
  '23-03-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  '938d1e40-f8d0-404b-b94c-db5fdc7aa281'::uuid,
  'father',
  'GIRISH',
  null,
  'M-826942728',
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
  '938d1e40-f8d0-404b-b94c-db5fdc7aa281'::uuid,
  'mother',
  'MADHU',
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
  '938d1e40-f8d0-404b-b94c-db5fdc7aa281'::uuid,
  'ARJUN NMAGAR, 18',
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
  '938d1e40-f8d0-404b-b94c-db5fdc7aa281'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 41, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "GATIK VASHISHTH", "SURNAME": "SHARMA", "FATHER": "GIRISH", "MOTHER": "MADHU", "DOB": "14-05-20", "ADM NO.": "23-03-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "BRAHMIN", "CATE.": "GEN", "SSSMID": null, "FAMILY ID": null, "MOB. NO.": "M-826942728", "ADDRESS": "ARJUN NMAGAR, 18", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 42 [left]: LEKHRAJ YADAV
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
  'db86875e-6de7-430a-a63a-6412dd472a05'::uuid,
  'LEKHRAJ',
  'YADAV',
  '2020-05-21'::date,
  null,
  '315187329',
  '25163486',
  'HINDU',
  'YADAV',
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
  'db86875e-6de7-430a-a63a-6412dd472a05'::uuid,
  '2026-27',
  '1',
  null,
  '23-51-N',
  null,
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  'db86875e-6de7-430a-a63a-6412dd472a05'::uuid,
  'father',
  'BASANT KUMAR',
  null,
  'M-9755902055',
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
  'db86875e-6de7-430a-a63a-6412dd472a05'::uuid,
  'mother',
  'RENU',
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
  'db86875e-6de7-430a-a63a-6412dd472a05'::uuid,
  'MADHUBAN COLONY, 123',
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
  'db86875e-6de7-430a-a63a-6412dd472a05'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 42, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "LEKHRAJ", "SURNAME": "YADAV", "FATHER": "BASANT KUMAR", "MOTHER": "RENU", "DOB": "21-05-2020", "ADM NO.": "23-51-N", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "YADAV", "CATE.": "OBC", "SSSMID": 315187329, "FAMILY ID": 25163486, "MOB. NO.": "M-9755902055", "ADDRESS": "MADHUBAN COLONY, 123", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 1st row 43 [left]: ARADHYA-2025 CHOUDHARY
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
  '09ddc15c-3faa-4898-b93d-086b35abac48'::uuid,
  'ARADHYA-2025',
  'CHOUDHARY',
  '2020-02-25'::date,
  null,
  '320193399',
  '13739460',
  'HINDU',
  'GARI',
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
  '09ddc15c-3faa-4898-b93d-086b35abac48'::uuid,
  '2026-27',
  '1',
  null,
  '25-58-U',
  null,
  null,
  null,
  null,
  null,
  null,
  null,
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
  '09ddc15c-3faa-4898-b93d-086b35abac48'::uuid,
  'father',
  'GOPAL',
  null,
  '9827013124',
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
  '09ddc15c-3faa-4898-b93d-086b35abac48'::uuid,
  'mother',
  'VISHANU',
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
  '09ddc15c-3faa-4898-b93d-086b35abac48'::uuid,
  'CHAMUNADA PURI DEWAS',
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
  '09ddc15c-3faa-4898-b93d-086b35abac48'::uuid,
  '2026-27',
  '1',
  '1-5.xlsx',
  'CLASS 1st',
  '{"sheet_name": "CLASS 1st", "row_number": 43, "section": "left", "corrections": [], "data": {"MODE": null, "NAME": "ARADHYA-2025", "SURNAME": "CHOUDHARY", "FATHER": "GOPAL", "MOTHER": "VISHANU", "DOB": "2020-02-25 00:00:00", "ADM NO.": "25-58-U", "SCHOLAR": null, "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "SSSMID": 320193399, "FAMILY ID": 13739460, "MOB. NO.": 9827013124, "ADDRESS": "CHAMUNADA PURI DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 3 [enrolled]: AARVI SENDHAV
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
  'AARVI',
  'SENDHAV',
  '2018-10-23'::date,
  '417267629231',
  '316129435',
  '44874359',
  'HINDU',
  'SENDHAV',
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
  '2026-27',
  '2',
  null,
  '24-83-U',
  '2284',
  null,
  '2024-07-13'::date,
  'UKG',
  null,
  'LOCAL',
  'KIDS PLAY SCHOOL',
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
  'father',
  'AKESINGH',
  'FINENCE',
  '9926970783',
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
  null,
  'SBI-31077389972',
  'SBIN0030485',
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
  'b879448f-2589-4ceb-abf4-0e26e69308bb'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "AARVI", "SURNAME": "SENDHAV", "FATHER": "AKESINGH", "MOTHER": "RANU", "DOB": "23-10-2018", "SCHOLAR": 2284, "ADM NO.": "24-83-U", "ENROLL": null, "ADHAR CARD": 417267629231, "SSSMID": 316129435, "FAMILY ID": 44874359, "BANK AC. NO.": "SBI-31077389972", "IFSC CODE": "SBIN0030485", "RELIGION": "HINDU", "CASTE": "SENDHAV", "CATE.": "GEN", "OCCUPATION": "FINENCE", "ADMN.DATE": "13-07-24", "BOARD R.N.": null, "ADM .CLASS": "UKG", "MOB. NO.": 9926970783, "ADDRESS": "RADHAGANJ DEWAS", "LAST SCHOOL": "KIDS PLAY SCHOOL"}}'::jsonb
);

-- CLASS 2nd row 4 [enrolled]: BALRAJ SINGH THAKUR
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  'BALRAJ SINGH',
  'THAKUR',
  '2014-10-02'::date,
  '231609141307',
  '306720142',
  '38523844',
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  '2026-27',
  '2',
  null,
  '24-92-U',
  '2286',
  null,
  '2024-09-30'::date,
  'UKG',
  null,
  'LOCAL',
  'EMERALD ACADEMY',
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  'father',
  'SURENDRA',
  'BSF',
  '7725013600',
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  'mother',
  'BHAWNA',
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  'D-1/17AWAS NAGAR DEWAS',
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  null,
  'SBI-37983270930',
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
  '4779eeba-a1af-46ed-a293-2b580c782329'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "BALRAJ SINGH", "SURNAME": "THAKUR", "FATHER": "SURENDRA", "MOTHER": "BHAWNA", "DOB": "2014-10-02 00:00:00", "SCHOLAR": 2286, "ADM NO.": "24-92-U", "ENROLL": null, "ADHAR CARD": 231609141307, "SSSMID": 306720142, "FAMILY ID": 38523844, "BANK AC. NO.": "SBI-37983270930", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "BSF", "ADMN.DATE": "30-09-24", "BOARD R.N.": null, "ADM .CLASS": "UKG", "MOB. NO.": 7725013600, "ADDRESS": "D-1/17AWAS NAGAR DEWAS", "LAST SCHOOL": "EMERALD ACADEMY"}}'::jsonb
);

-- CLASS 2nd row 5 [enrolled]: DEVANSHI- DHAKAD
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
  'DEVANSHI-',
  'DHAKAD',
  '2019-01-13'::date,
  'A-790338028458',
  '310459757',
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
  '2026-27',
  '2',
  null,
  '22-49-N',
  '2257',
  null,
  '2022-06-12'::date,
  'NURSERY',
  null,
  'Local',
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
  'father',
  'DEEPAK',
  'I.T',
  'M-8109094358',
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
  'DEVSHREE NAGAR,12',
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
  null,
  'SBI32526926378',
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
  'a33bc503-cbd4-40b7-ba7d-8fe0f4611c91'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DEVANSHI-", "SURNAME": "DHAKAD", "FATHER": "DEEPAK", "MOTHER": "DURGA", "DOB": "13.01.2019", "SCHOLAR": 2257, "ADM NO.": "22-49-N", "ENROLL": null, "ADHAR CARD": "A-790338028458", "SSSMID": 310459757, "FAMILY ID": 38367728, "BANK AC. NO.": "SBI32526926378", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "I.T", "ADMN.DATE": "2022-06-12 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8109094358", "ADDRESS": "DEVSHREE NAGAR,12", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 6 [enrolled]: DEVIK-22 KITODIYA
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
  'DEVIK-22',
  'KITODIYA',
  '2017-08-11'::date,
  'A-678931377779',
  '312201258',
  '42260229',
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
  '2026-27',
  '2',
  null,
  '110-22-N',
  '2258',
  null,
  '2022-08-28'::date,
  'NURSERY',
  null,
  'Local',
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
  'father',
  'RAJENDRA',
  'FARMER',
  'M-9827522464',
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
  'AWAS NAGAR D2/73',
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
  null,
  'GB016210110001610',
  'BKIDONAMRGB',
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
  '9ced734c-f17a-4a85-84ce-d2bb971728d5'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DEVIK-22", "SURNAME": "KITODIYA", "FATHER": "RAJENDRA", "MOTHER": "SEEMA", "DOB": "11.08.2017", "SCHOLAR": 2258, "ADM NO.": "110-22-N", "ENROLL": null, "ADHAR CARD": "A-678931377779", "SSSMID": 312201258, "FAMILY ID": 42260229, "BANK AC. NO.": "GB016210110001610", "IFSC CODE": "BKIDONAMRGB", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "FARMER", "ADMN.DATE": "2022-08-28 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9827522464", "ADDRESS": "AWAS NAGAR D2/73", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 7 [enrolled]: DIVYANKA YADAV
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
  'DIVYANKA',
  'YADAV',
  '2018-11-19'::date,
  'A-553438723238',
  '313237208',
  '24159717',
  'HINDU',
  'GAWLI',
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
  '2026-27',
  '2',
  null,
  '22-11-N',
  '2260',
  null,
  '2022-03-30'::date,
  'NURSERY',
  null,
  'Local',
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
  'father',
  'RAVI',
  'FARMER',
  'M-9669611117',
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
  'LAXMIBAI MARG, 120',
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
  null,
  'POST BANK-027810087682',
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
  '0902edba-3687-430e-90b3-6c3c8e5e06f6'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DIVYANKA", "SURNAME": "YADAV", "FATHER": "RAVI", "MOTHER": "DEEPIKA", "DOB": "19.11.2018", "SCHOLAR": 2260, "ADM NO.": "22-11-N", "ENROLL": null, "ADHAR CARD": "A-553438723238", "SSSMID": 313237208, "FAMILY ID": 24159717, "BANK AC. NO.": "POST BANK-027810087682", "IFSC CODE": "IPOS0000001", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2022-03-30 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9669611117", "ADDRESS": "LAXMIBAI MARG, 120", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 8 [enrolled]: KAVYA-23 PAL
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
  '751282a5-c1ea-43da-87cd-ce88eff2adc8'::uuid,
  'KAVYA-23',
  'PAL',
  '2019-09-04'::date,
  'A-368868440925',
  '322323307',
  '50849946',
  'HINDU',
  'GADARIYA',
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
  '751282a5-c1ea-43da-87cd-ce88eff2adc8'::uuid,
  '2026-27',
  '2',
  null,
  '25-23-L',
  '2264',
  null,
  '2023-04-15'::date,
  'L.K.G',
  null,
  'Local',
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
  '751282a5-c1ea-43da-87cd-ce88eff2adc8'::uuid,
  'father',
  'RAJPAL',
  null,
  'M-7067861039',
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
  '751282a5-c1ea-43da-87cd-ce88eff2adc8'::uuid,
  'mother',
  'SAROJ',
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
  '751282a5-c1ea-43da-87cd-ce88eff2adc8'::uuid,
  'AWAS NAGAR -D1- 77',
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
  '751282a5-c1ea-43da-87cd-ce88eff2adc8'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "KAVYA-23", "SURNAME": "PAL", "FATHER": "RAJPAL", "MOTHER": "SAROJ", "DOB": "04.09.2019", "SCHOLAR": 2264, "ADM NO.": "25-23-L", "ENROLL": null, "ADHAR CARD": "A-368868440925", "SSSMID": 322323307, "FAMILY ID": 50849946, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GADARIYA", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "2023-04-15 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-7067861039", "ADDRESS": "AWAS NAGAR -D1- 77", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 9 [enrolled]: MOHAN RATHORE
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
  'c5cdb072-fab4-448e-9a16-fcb4b1fda437'::uuid,
  'MOHAN',
  'RATHORE',
  '2016-09-02'::date,
  'A-859663483981',
  null,
  null,
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
  'c5cdb072-fab4-448e-9a16-fcb4b1fda437'::uuid,
  '2026-27',
  '2',
  null,
  '22-36-N',
  '2265',
  null,
  '2022-06-06'::date,
  'NURSERY',
  null,
  'Local',
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
  'c5cdb072-fab4-448e-9a16-fcb4b1fda437'::uuid,
  'father',
  'SHANKAR',
  'LOHAR',
  'M-8815954913',
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
  'c5cdb072-fab4-448e-9a16-fcb4b1fda437'::uuid,
  'mother',
  'LALITA',
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
  'c5cdb072-fab4-448e-9a16-fcb4b1fda437'::uuid,
  'SABJI MANDI',
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
  'c5cdb072-fab4-448e-9a16-fcb4b1fda437'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "MOHAN", "SURNAME": "RATHORE", "FATHER": "SHANKAR", "MOTHER": "LALITA", "DOB": "02.09.2016", "SCHOLAR": 2265, "ADM NO.": "22-36-N", "ENROLL": null, "ADHAR CARD": "A-859663483981", "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "LOHAR", "CATE.": "OBC", "OCCUPATION": "LOHAR", "ADMN.DATE": "2022-06-06 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8815954913", "ADDRESS": "SABJI MANDI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 10 [enrolled]: NIHARIKA DEWDA
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  'NIHARIKA',
  'DEWDA',
  '2018-12-07'::date,
  'A-724803719664',
  '306911496',
  '24929555',
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  '2026-27',
  '2',
  null,
  '22-37-N',
  '2266',
  null,
  '2022-06-07'::date,
  'NURSERY',
  null,
  'Local',
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  'father',
  'LAL SINGH',
  'PRIVATE JOB',
  'M-9691859096',
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  'mother',
  'SANTOSHI',
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  'CHAMUNDAPURI - 17/1',
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  null,
  'BOI890010100025053',
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
  '34bf7ed3-2470-4b1e-aca8-8cd1fb62a00e'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "NIHARIKA", "SURNAME": "DEWDA", "FATHER": "LAL SINGH", "MOTHER": "SANTOSHI", "DOB": "07.12.2018", "SCHOLAR": 2266, "ADM NO.": "22-37-N", "ENROLL": null, "ADHAR CARD": "A-724803719664", "SSSMID": 306911496, "FAMILY ID": 24929555, "BANK AC. NO.": "BOI890010100025053", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "KORKU", "CATE.": "ST", "OCCUPATION": "PRIVATE JOB", "ADMN.DATE": "2022-06-07 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9691859096", "ADDRESS": "CHAMUNDAPURI - 17/1", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 11 [enrolled]: PRIYANSHI BHASKAR
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  'PRIYANSHI',
  'BHASKAR',
  '2019-11-22'::date,
  'A-889618393967',
  '315751608',
  '37834020',
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  '2026-27',
  '2',
  null,
  '22-102-N',
  '2268',
  null,
  '2022-07-16'::date,
  'NURSERY',
  null,
  'Local',
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  'father',
  'SUNIL',
  'ELECTRICIAN',
  'M-9977102325',
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  'mother',
  'GITA',
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  'CHAMUNDAPURI',
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  null,
  'IB6423227156',
  'IDIB000D043',
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
  '30b4e4c3-04f7-4079-a782-793e39cf63d4'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "PRIYANSHI", "SURNAME": "BHASKAR", "FATHER": "SUNIL", "MOTHER": "GITA", "DOB": "22.11.2019", "SCHOLAR": 2268, "ADM NO.": "22-102-N", "ENROLL": null, "ADHAR CARD": "A-889618393967", "SSSMID": 315751608, "FAMILY ID": 37834020, "BANK AC. NO.": "IB6423227156", "IFSC CODE": "IDIB000D043", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ELECTRICIAN", "ADMN.DATE": "2022-07-16 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9977102325", "ADDRESS": "CHAMUNDAPURI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 12 [enrolled]: RONIT DETHLIYA
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
  'RONIT',
  'DETHLIYA',
  '2018-05-26'::date,
  'A-700740525622',
  '310384217',
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
  '2026-27',
  '2',
  null,
  '22-88-N',
  '2269',
  null,
  '2022-07-05'::date,
  'NURSERY',
  null,
  'Local',
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
  'father',
  'AKHILESH',
  'PVT.JOB',
  'M-9009417245',
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
  'DEVSHREE NAGAR - 29',
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
  null,
  'SBI37277784199',
  'SBIN0030511',
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
  '66fd3970-23f8-4adf-8437-e96744fc9905'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "RONIT", "SURNAME": "DETHLIYA", "FATHER": "AKHILESH", "MOTHER": "POOJA", "DOB": "26.05.2018", "SCHOLAR": 2269, "ADM NO.": "22-88-N", "ENROLL": null, "ADHAR CARD": "A-700740525622", "SSSMID": 310384217, "FAMILY ID": 20055570, "BANK AC. NO.": "SBI37277784199", "IFSC CODE": "SBIN0030511", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "PVT.JOB", "ADMN.DATE": "2022-07-05 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9009417245", "ADDRESS": "DEVSHREE NAGAR - 29", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 13 [enrolled]: SAMRIDDHI VERMA
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
  'SAMRIDDHI',
  'VERMA',
  '2017-12-08'::date,
  'A-365681777615',
  '311949031',
  '36826223',
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
  '2026-27',
  '2',
  null,
  '22-101-N',
  '2271',
  null,
  '2022-07-27'::date,
  'NURSERY',
  null,
  'Local',
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
  'father',
  'NAKUL',
  'SERVICE',
  'M-8770137114',
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
  'CHAMUNDA PALACE - 39',
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
  null,
  'NARM-011310110003631',
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
  '3f226957-f579-469d-80d9-ee80a9b88abd'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SAMRIDDHI", "SURNAME": "VERMA", "FATHER": "NAKUL", "MOTHER": "POOJA", "DOB": "08.12.2017", "SCHOLAR": 2271, "ADM NO.": "22-101-N", "ENROLL": null, "ADHAR CARD": "A-365681777615", "SSSMID": 311949031, "FAMILY ID": 36826223, "BANK AC. NO.": "NARM-011310110003631", "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "SERVICE", "ADMN.DATE": "2022-07-27 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8770137114", "ADDRESS": "CHAMUNDA PALACE - 39", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 14 [enrolled]: SHIVANSH MALVIYA
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  'SHIVANSH',
  'MALVIYA',
  '2018-09-08'::date,
  'A-836248778662',
  '317706284',
  '45386352',
  'HINDU',
  'MALVIYA',
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  '2026-27',
  '2',
  null,
  '22-89-N',
  '2275',
  null,
  '2022-07-05'::date,
  'NURSERY',
  null,
  'Local',
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  'father',
  'PRAVIN',
  'DRIVER',
  'M-9424490032',
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  'mother',
  'NEETA',
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  'LAXMI NAGAR - 101',
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  null,
  'IDBI0227104000209847',
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
  'c833b812-fbe0-4a3e-93ae-8dee70dc26fc'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SHIVANSH", "SURNAME": "MALVIYA", "FATHER": "PRAVIN", "MOTHER": "NEETA", "DOB": "08.09.2018", "SCHOLAR": 2275, "ADM NO.": "22-89-N", "ENROLL": null, "ADHAR CARD": "A-836248778662", "SSSMID": 317706284, "FAMILY ID": 45386352, "BANK AC. NO.": "IDBI0227104000209847", "IFSC CODE": "IBKL0000227", "RELIGION": "HINDU", "CASTE": "MALVIYA", "CATE.": "SC", "OCCUPATION": "DRIVER", "ADMN.DATE": "2022-07-05 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9424490032", "ADDRESS": "LAXMI NAGAR - 101", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 15 [enrolled]: UDAY THORAT
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  'UDAY',
  'THORAT',
  '2017-12-03'::date,
  'A-953285559772',
  '314920760',
  '21273153',
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  '2026-27',
  '2',
  null,
  '22-18-N',
  '2277',
  null,
  '2022-04-06'::date,
  'NURSERY',
  null,
  'Local',
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  'father',
  'ANIL',
  'TRAVELS',
  'M-9754981504',
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  'mother',
  'KHUSBHOO',
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  'PRATAP NAGAR - 67',
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  null,
  'ICICI024101525887',
  'ICIC0000241',
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
  '2bcee831-5349-4c92-bc88-8270e73153c8'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "UDAY", "SURNAME": "THORAT", "FATHER": "ANIL", "MOTHER": "KHUSBHOO", "DOB": "03.12.2017", "SCHOLAR": 2277, "ADM NO.": "22-18-N", "ENROLL": null, "ADHAR CARD": "A-953285559772", "SSSMID": 314920760, "FAMILY ID": 21273153, "BANK AC. NO.": "ICICI024101525887", "IFSC CODE": "ICIC0000241", "RELIGION": "HINDU", "CASTE": "LOHAR", "CATE.": "OBC", "OCCUPATION": "TRAVELS", "ADMN.DATE": "2022-04-06 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9754981504", "ADDRESS": "PRATAP NAGAR - 67", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 16 [enrolled]: UPASNA SONI
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
  '61766601-20c5-43b4-98dc-33d6e22f8858'::uuid,
  'UPASNA',
  'SONI',
  '2018-10-27'::date,
  'A-701195599698',
  '309816807',
  '45196434',
  'HINDU',
  'SUNAR',
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
  '61766601-20c5-43b4-98dc-33d6e22f8858'::uuid,
  '2026-27',
  '2',
  null,
  '22-22-N',
  '2278',
  null,
  '2022-04-13'::date,
  'NURSERY',
  null,
  'Local',
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
  '61766601-20c5-43b4-98dc-33d6e22f8858'::uuid,
  'father',
  'GOVIND KRISHNA',
  'PVT .JOB',
  'M-9074782846',
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
  '61766601-20c5-43b4-98dc-33d6e22f8858'::uuid,
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
  '61766601-20c5-43b4-98dc-33d6e22f8858'::uuid,
  'RAMRAHIM NAGAR - 32',
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
  '61766601-20c5-43b4-98dc-33d6e22f8858'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "UPASNA", "SURNAME": "SONI", "FATHER": "GOVIND KRISHNA", "MOTHER": "PRIYANKA", "DOB": "27.10.2018", "SCHOLAR": 2278, "ADM NO.": "22-22-N", "ENROLL": null, "ADHAR CARD": "A-701195599698", "SSSMID": 309816807, "FAMILY ID": 45196434, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "SUNAR", "CATE.": "OBC", "OCCUPATION": "PVT .JOB", "ADMN.DATE": "2022-04-13 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9074782846", "ADDRESS": "RAMRAHIM NAGAR - 32", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 17 [enrolled]: PIHU-24 DELMIYA-24
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
  'PIHU-24',
  'DELMIYA-24',
  '2018-07-08'::date,
  'A-798362469317',
  '314364832',
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
  '2026-27',
  '2',
  null,
  'U-27-2024',
  '2254',
  null,
  '2024-04-25'::date,
  'U.K.G',
  null,
  'Local',
  'UNIVERSAL PUB. SCHOOL',
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
  'father',
  'PRAMOD KUMAR',
  'BUSSINESS',
  'M-7697713045',
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
  '32 CHAMUNDA PURI',
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
  null,
  'SBI-33084754014',
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
  '5d715866-c667-4c37-acf5-1aa3e755a34e'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "PIHU-24", "SURNAME": "DELMIYA-24", "FATHER": "PRAMOD KUMAR", "MOTHER": "ARUNA", "DOB": "2018-07-08 00:00:00", "SCHOLAR": 2254, "ADM NO.": "U-27-2024", "ENROLL": null, "ADHAR CARD": "A-798362469317", "SSSMID": 314364832, "FAMILY ID": 49838838, "BANK AC. NO.": "SBI-33084754014", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "BUSSINESS", "ADMN.DATE": "2024-04-25 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-7697713045", "ADDRESS": "32 CHAMUNDA PURI", "LAST SCHOOL": "UNIVERSAL PUB. SCHOOL"}}'::jsonb
);

-- CLASS 2nd row 18 [enrolled]: SOMIL-24 MALVIYA
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  'SOMIL-24',
  'MALVIYA',
  '2019-01-16'::date,
  'A-400587878607',
  '312603829',
  '48943081',
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  '2026-27',
  '2',
  null,
  'U-15-2024',
  '2281',
  null,
  '2024-04-01'::date,
  'U.K.G',
  null,
  'Local',
  'KERALA PUBLIC',
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  'father',
  'SUNIL',
  'ACCOUNTANT',
  'M-6232111374',
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  'mother',
  'RANJANA',
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  '11/1 GAYATRI NAGAR DEWAS',
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  null,
  'BKID890010110009932',
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
  'd5b6e698-8c8e-42b4-93d5-476e435b9829'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SOMIL-24", "SURNAME": "MALVIYA", "FATHER": "SUNIL", "MOTHER": "RANJANA", "DOB": "2019-01-16 00:00:00", "SCHOLAR": 2281, "ADM NO.": "U-15-2024", "ENROLL": null, "ADHAR CARD": "A-400587878607", "SSSMID": 312603829, "FAMILY ID": 48943081, "BANK AC. NO.": "BKID890010110009932", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ACCOUNTANT", "ADMN.DATE": "2024-04-01 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-6232111374", "ADDRESS": "11/1 GAYATRI NAGAR DEWAS", "LAST SCHOOL": "KERALA PUBLIC"}}'::jsonb
);

-- CLASS 2nd row 19 [enrolled]: PRIYANSHI-2025 DHULIYE
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
  'd64cab1c-4141-4248-b094-e1046d193743'::uuid,
  'PRIYANSHI-2025',
  'DHULIYE',
  '2018-11-05'::date,
  'A-803314967659',
  '318894864',
  '49580435',
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
  'd64cab1c-4141-4248-b094-e1046d193743'::uuid,
  '2026-27',
  '2',
  null,
  '25-16-1st',
  '2255',
  null,
  '2025-12-06'::date,
  '1st',
  null,
  null,
  'SHISHU NIKETAN DEWAS',
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
  'd64cab1c-4141-4248-b094-e1046d193743'::uuid,
  'father',
  'RAVI',
  'GOVT. JOB',
  'M-6262229881',
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
  'd64cab1c-4141-4248-b094-e1046d193743'::uuid,
  'mother',
  'ANKITA',
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
  'd64cab1c-4141-4248-b094-e1046d193743'::uuid,
  'VIJAY NAGAR-39 DEWAS',
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
  'd64cab1c-4141-4248-b094-e1046d193743'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "PRIYANSHI-2025", "SURNAME": "DHULIYE", "FATHER": "RAVI", "MOTHER": "ANKITA", "DOB": "2018-11-05 00:00:00", "SCHOLAR": 2255, "ADM NO.": "25-16-1st", "ENROLL": null, "ADHAR CARD": "A-803314967659", "SSSMID": 318894864, "FAMILY ID": 49580435, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "MEHTAR", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2025-12-06 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-6262229881", "ADDRESS": "VIJAY NAGAR-39 DEWAS", "LAST SCHOOL": "SHISHU NIKETAN DEWAS"}}'::jsonb
);

-- CLASS 2nd row 20 [enrolled]: SHRESHTHA-2025 MUNIYA
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
  '21b3bed4-044a-4286-8fb9-0836dfc5210a'::uuid,
  'SHRESHTHA-2025',
  'MUNIYA',
  '2019-05-27'::date,
  'A-989997956116',
  '319532946',
  '44475688',
  'HINDU',
  'BHIL',
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
  '21b3bed4-044a-4286-8fb9-0836dfc5210a'::uuid,
  '2026-27',
  '2',
  null,
  '25-50-1st',
  '2295',
  null,
  '2025-07-01'::date,
  '1st',
  null,
  null,
  'SHISHU NIKETAN',
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
  '21b3bed4-044a-4286-8fb9-0836dfc5210a'::uuid,
  'father',
  'RAMESH',
  'POLICE',
  'M-8224913183',
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
  '21b3bed4-044a-4286-8fb9-0836dfc5210a'::uuid,
  'mother',
  'KRISHNA',
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
  '21b3bed4-044a-4286-8fb9-0836dfc5210a'::uuid,
  'POLICE LINE DEWAS',
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
  '21b3bed4-044a-4286-8fb9-0836dfc5210a'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 20, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SHRESHTHA-2025", "SURNAME": "MUNIYA", "FATHER": "RAMESH", "MOTHER": "KRISHNA", "DOB": "2019-05-27 00:00:00", "SCHOLAR": 2295, "ADM NO.": "25-50-1st", "ENROLL": null, "ADHAR CARD": "A-989997956116", "SSSMID": 319532946, "FAMILY ID": 44475688, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BHIL", "CATE.": "ST", "OCCUPATION": "POLICE", "ADMN.DATE": "2025-07-01 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-8224913183", "ADDRESS": "POLICE LINE DEWAS", "LAST SCHOOL": "SHISHU NIKETAN"}}'::jsonb
);

-- CLASS 2nd row 21 [enrolled]: RONAK SINGH 2025 RATHOD
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
  'RONAK SINGH 2025',
  'RATHOD',
  '2019-06-13'::date,
  'A-766994771682',
  '317969470',
  '44618713',
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
  '2026-27',
  '2',
  null,
  '25-48-1st',
  '2294',
  null,
  '2025-06-20'::date,
  '1st',
  null,
  null,
  'SHREE BALRAJ ACADEMY KANNOD',
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
  'father',
  'RAVINDRA',
  'PVT. JOB',
  'M-9826235559',
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
  '8770582389',
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
  null,
  'PNB-1150101700023656',
  'PUNB0115010',
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
  '12a8d239-fb01-4d7a-aad9-2cce62c2e2df'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 21, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "RONAK SINGH 2025", "SURNAME": "RATHOD", "FATHER": "RAVINDRA", "MOTHER": "RINKU", "DOB": "13/06/2019", "SCHOLAR": 2294, "ADM NO.": "25-48-1st", "ENROLL": null, "ADHAR CARD": "A-766994771682", "SSSMID": 317969470, "FAMILY ID": 44618713, "BANK AC. NO.": "PNB-1150101700023656", "IFSC CODE": "PUNB0115010", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "20-06-2025", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-9826235559", "ADDRESS": 8770582389, "LAST SCHOOL": "SHREE BALRAJ ACADEMY KANNOD"}}'::jsonb
);

-- CLASS 2nd row 22 [enrolled]: BHAVYA YADAV
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
  'bc83b6d4-a1c8-4a88-a61c-fb1885f7642e'::uuid,
  'BHAVYA',
  'YADAV',
  '2018-08-20'::date,
  'A-578888909810',
  '315248270',
  '45934291',
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
  'bc83b6d4-a1c8-4a88-a61c-fb1885f7642e'::uuid,
  '2026-27',
  '2',
  null,
  '26-46-2nd',
  '2361',
  null,
  '2026-03-30'::date,
  '2nd',
  null,
  null,
  'SAN THOME ACADEMY',
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
  'bc83b6d4-a1c8-4a88-a61c-fb1885f7642e'::uuid,
  'father',
  'MANISH',
  'GOVT. JOB',
  'M-7803051720',
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
  'bc83b6d4-a1c8-4a88-a61c-fb1885f7642e'::uuid,
  'mother',
  'SONALI',
  null,
  null,
  null
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'bc83b6d4-a1c8-4a88-a61c-fb1885f7642e'::uuid,
  null,
  'A/C-890010110013345',
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
  'bc83b6d4-a1c8-4a88-a61c-fb1885f7642e'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 22, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "BHAVYA", "SURNAME": "YADAV", "FATHER": "MANISH", "MOTHER": "SONALI", "DOB": "2018-08-20 00:00:00", "SCHOLAR": 2361, "ADM NO.": "26-46-2nd", "ENROLL": null, "ADHAR CARD": "A-578888909810", "SSSMID": 315248270, "FAMILY ID": 45934291, "BANK AC. NO.": "A/C-890010110013345", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "GAVLI", "CATE.": "OBC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2026-03-30 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "2nd", "MOB. NO.": "M-7803051720", "ADDRESS": null, "LAST SCHOOL": "SAN THOME ACADEMY"}}'::jsonb
);

-- CLASS 2nd row 25 [rte]: AKSHATA PARIHAR
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  'AKSHATA',
  'PARIHAR',
  '2017-12-24'::date,
  'A-958085965777',
  '312149733',
  '45224323',
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  '2026-27',
  '2',
  null,
  'R-N-8-22',
  '2083',
  null,
  '2022-07-19'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  'father',
  'DILIP',
  'TAILOR',
  '9009049943',
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  'mother',
  'LAXMI',
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  '65-B CHAMUNDAPURI DEWAS',
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  null,
  'SBI-34535663865',
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
  'dd997d57-d88f-4311-9815-ac63ad128058'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 25, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "AKSHATA", "SURNAME": "PARIHAR", "FATHER": "DILIP", "MOTHER": "LAXMI", "DOB": "24.12.2017", "SCHOLAR": 2083, "ADM NO.": "R-N-8-22", "ENROLL": null, "ADHAR CARD": "A-958085965777", "SSSMID": 312149733, "FAMILY ID": 45224323, "BANK AC. NO.": "SBI-34535663865", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "TAILOR", "ADMN.DATE": "19-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9009049943, "ADDRESS": "65-B CHAMUNDAPURI DEWAS", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 27 [rte]: ARADHYA PRAJAPITA
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
  'ARADHYA',
  'PRAJAPITA',
  '2018-10-25'::date,
  'A-403042617556',
  '312895505',
  '20827562',
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
  '2026-27',
  '2',
  null,
  '22-9-N',
  '2085',
  null,
  '2022-07-23'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
  'father',
  'ARJUN',
  null,
  '9713611796',
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
  'mother',
  'SAPNA',
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
  null,
  'BANK OF BARODA-68058100001604',
  'BARB0VJDEW',
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
  '072b1b91-e9e8-4836-a417-f2331300b843'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 27, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ARADHYA", "SURNAME": "PRAJAPITA", "FATHER": "ARJUN", "MOTHER": "SAPNA", "DOB": "25.10.2018", "SCHOLAR": 2085, "ADM NO.": "22-9-N", "ENROLL": null, "ADHAR CARD": "A-403042617556", "SSSMID": 312895505, "FAMILY ID": 20827562, "BANK AC. NO.": "BANK OF BARODA-68058100001604", "IFSC CODE": "BARB0VJDEW", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "23-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9713611796, "ADDRESS": "KALUKHEDI", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 28 [rte]: MEGHA VIRPARA
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
  'MEGHA',
  'VIRPARA',
  '2018-11-14'::date,
  'A-684042664331',
  '315044505',
  '36542809',
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
  '2026-27',
  '2',
  null,
  '22-4-N',
  '2080',
  null,
  '2022-07-16'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
  'father',
  'DHARMENDRA',
  'PRI',
  '8817576703',
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
  null,
  'SBI-20042046594',
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
  '782a846f-7cfd-4e68-83d8-c45d62d94d42'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 28, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "MEGHA", "SURNAME": "VIRPARA", "FATHER": "DHARMENDRA", "MOTHER": "POOJA", "DOB": "14.11.2018", "SCHOLAR": 2080, "ADM NO.": "22-4-N", "ENROLL": null, "ADHAR CARD": "A-684042664331", "SSSMID": 315044505, "FAMILY ID": 36542809, "BANK AC. NO.": "SBI-20042046594", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PRI", "ADMN.DATE": "16-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 8817576703, "ADDRESS": "KALUKHEDI", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 29 [rte]: POORVI AKODIYA
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
  'POORVI',
  'AKODIYA',
  '2018-03-03'::date,
  'A-567034146091',
  '311046075',
  '20006265',
  'HINDU',
  'BHIL',
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
  '2026-27',
  '2',
  null,
  '22-2-N',
  '2078',
  null,
  '2022-07-16'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
  'father',
  'MAHENDRA',
  'FARMER',
  '9399379477',
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
  '30/CHAMUNDAPURI DEWAS',
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
  null,
  'BANK OF INDIA 892016710000027',
  'BKID0008920',
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
  'ecbdf2b6-5e60-490e-88d0-804a9cbaefca'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 29, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "POORVI", "SURNAME": "AKODIYA", "FATHER": "MAHENDRA", "MOTHER": "MANISHA", "DOB": "03.03.2018", "SCHOLAR": 2078, "ADM NO.": "22-2-N", "ENROLL": null, "ADHAR CARD": "A-567034146091", "SSSMID": 311046075, "FAMILY ID": 20006265, "BANK AC. NO.": "BANK OF INDIA 892016710000027", "IFSC CODE": "BKID0008920", "RELIGION": "HINDU", "CASTE": "BHIL", "CATE.": "ST", "OCCUPATION": "FARMER", "ADMN.DATE": "16-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9399379477, "ADDRESS": "30/CHAMUNDAPURI DEWAS", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 30 [rte]: RAJAT DABI
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
  'RAJAT',
  'DABI',
  '2019-03-23'::date,
  'A-521459013088',
  '314742348',
  '36675904',
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
  '2026-27',
  '2',
  null,
  '22-10-N',
  '2084',
  null,
  '2022-07-23'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
  'father',
  'JITENDRA',
  'PRI',
  '9754478127',
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
  null,
  'SBI-33872401642',
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
  '5937b4e2-6c81-4f3e-98e5-8875b34b7bf5'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 30, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "RAJAT", "SURNAME": "DABI", "FATHER": "JITENDRA", "MOTHER": "ALKA", "DOB": "23.03.2019", "SCHOLAR": 2084, "ADM NO.": "22-10-N", "ENROLL": null, "ADHAR CARD": "A-521459013088", "SSSMID": 314742348, "FAMILY ID": 36675904, "BANK AC. NO.": "SBI-33872401642", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PRI", "ADMN.DATE": "23-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9754478127, "ADDRESS": "MAHANKAL COLONY DEWAS", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 31 [rte]: SHAGUN SISODIYA
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
  'SHAGUN',
  'SISODIYA',
  '2017-12-03'::date,
  'A-8986789174578',
  '315402600',
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
  '2026-27',
  '2',
  null,
  '22-5-N',
  '2081',
  null,
  '2022-07-18'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
  'father',
  'SHEKHAR',
  'PRI',
  '8871978182',
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
  '4/MAHANKAL COLONY DEWAS',
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
  null,
  'SBI-36188000373',
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
  '244a6dbb-d27e-4439-bf04-0f9f764636f6'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 31, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "SHAGUN", "SURNAME": "SISODIYA", "FATHER": "SHEKHAR", "MOTHER": "JYOTI", "DOB": "03.12.2017", "SCHOLAR": 2081, "ADM NO.": "22-5-N", "ENROLL": null, "ADHAR CARD": "A-8986789174578", "SSSMID": 315402600, "FAMILY ID": 37982250, "BANK AC. NO.": "SBI-36188000373", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "PRI", "ADMN.DATE": "18-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 8871978182, "ADDRESS": "4/MAHANKAL COLONY DEWAS", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 32 [rte]: URVASHI SISODIYA
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
  '9b91aae5-91fc-49de-9acd-4b646e231e58'::uuid,
  'URVASHI',
  'SISODIYA',
  '2018-09-19'::date,
  'A-374533675889',
  '312341031',
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
  '9b91aae5-91fc-49de-9acd-4b646e231e58'::uuid,
  '2026-27',
  '2',
  null,
  '22-1-N',
  '2077',
  null,
  '2022-07-16'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  '9b91aae5-91fc-49de-9acd-4b646e231e58'::uuid,
  'father',
  'NILESH',
  'PRI',
  '8349046244',
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
  '9b91aae5-91fc-49de-9acd-4b646e231e58'::uuid,
  'mother',
  'KALPANA',
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
  '9b91aae5-91fc-49de-9acd-4b646e231e58'::uuid,
  'AMBEDKAR NAGAR DEWAS',
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
  '9b91aae5-91fc-49de-9acd-4b646e231e58'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 32, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "URVASHI", "SURNAME": "SISODIYA", "FATHER": "NILESH", "MOTHER": "KALPANA", "DOB": "19.09.2018", "SCHOLAR": 2077, "ADM NO.": "22-1-N", "ENROLL": null, "ADHAR CARD": "A-374533675889", "SSSMID": 312341031, "FAMILY ID": 39581566, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BARGUNDA", "CATE.": "SC", "OCCUPATION": "PRI", "ADMN.DATE": "16-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 8349046244, "ADDRESS": "AMBEDKAR NAGAR DEWAS", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 33 [rte]: VANSH BODANA
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  'VANSH',
  'BODANA',
  '2018-10-23'::date,
  'A-648687336687',
  '315165787',
  '37255878',
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  '2026-27',
  '2',
  null,
  '22-3-N',
  '2079',
  null,
  '2022-07-16'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  'father',
  'SATISH',
  'FINENCE',
  '9630992668',
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  'mother',
  'BHURI',
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  '114/KALUKHEDI DEWAS',
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  null,
  'PUNB1505000100307404',
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
  '12be00fe-46a2-45a5-a802-0692b9b8483e'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 33, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "VANSH", "SURNAME": "BODANA", "FATHER": "SATISH", "MOTHER": "BHURI", "DOB": "23.10.2018", "SCHOLAR": 2079, "ADM NO.": "22-3-N", "ENROLL": null, "ADHAR CARD": "A-648687336687", "SSSMID": 315165787, "FAMILY ID": 37255878, "BANK AC. NO.": "PUNB1505000100307404", "IFSC CODE": "PUNB0150500", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "FINENCE", "ADMN.DATE": "16-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9630992668, "ADDRESS": "114/KALUKHEDI DEWAS", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 34 [rte]: YUVRAJ CHOUHAN
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
  'YUVRAJ',
  'CHOUHAN',
  '2018-08-17'::date,
  'A-620285396549',
  '312895436',
  '37961297',
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
  '2026-27',
  '2',
  null,
  '22-6-N',
  '2082',
  null,
  '2022-07-19'::date,
  'NURSERY',
  null,
  'Local',
  'NEW ADMN',
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
  'father',
  'SHUBHAM',
  null,
  '7974591686',
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
  null,
  'UNION BANK 698002120000793',
  'UBIN0569801',
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
  'ce5ec8e8-40dc-469c-862a-085dab95a5cd'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 34, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "YUVRAJ", "SURNAME": "CHOUHAN", "FATHER": "SHUBHAM", "MOTHER": "KOMAL", "DOB": 17.082018, "SCHOLAR": 2082, "ADM NO.": "22-6-N", "ENROLL": null, "ADHAR CARD": "A-620285396549", "SSSMID": 312895436, "FAMILY ID": 37961297, "BANK AC. NO.": "UNION BANK 698002120000793", "IFSC CODE": "UBIN0569801", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": "19-07-22", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 7974591686, "ADDRESS": "KALUKHEDI", "LAST SCHOOL": "NEW ADMN"}}'::jsonb
);

-- CLASS 2nd row 38 [left]: SHIVANSH-2025 TAMOLIYTA
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
  'SHIVANSH-2025',
  'TAMOLIYTA',
  '2018-05-14'::date,
  'A-499998215164',
  '315391931',
  '24904877',
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
  '2026-27',
  '2',
  null,
  '25-6-1st',
  '2307',
  null,
  '2025-04-29'::date,
  '1st',
  null,
  null,
  'SHISHU NIKETAN DEWAS',
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
  'father',
  'BIRBAL',
  'PUIN',
  'M-7247286564',
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
  'CHAMUNDA PURI -2-DEWAS',
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
  null,
  '60303379984',
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
  '0e51f816-c02c-4664-a936-a60af744ef4b'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 38, "section": "left", "corrections": [], "data": {"MODE": null, "NAME": "SHIVANSH-2025", "SURNAME": "TAMOLIYTA", "FATHER": "BIRBAL", "MOTHER": "KIRAN", "DOB": "2018-05-14 00:00:00", "SCHOLAR": 2307, "ADM NO.": "25-6-1st", "ENROLL": null, "ADHAR CARD": "A-499998215164", "SSSMID": 315391931, "FAMILY ID": 24904877, "BANK AC. NO.": 60303379984, "IFSC CODE": "MAHB0000141", "RELIGION": "HINDU", "CASTE": "MEHTAR", "CATE.": "SC", "OCCUPATION": "PUIN", "ADMN.DATE": "2025-04-29 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-7247286564", "ADDRESS": "CHAMUNDA PURI -2-DEWAS", "LAST SCHOOL": "SHISHU NIKETAN DEWAS"}}'::jsonb
);

-- CLASS 2nd row 39 [left]: SAMAR MALVIYA
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
  'a968933e-8c39-42c6-8d8a-5af8afd1467a'::uuid,
  'SAMAR',
  'MALVIYA',
  '2018-11-16'::date,
  'A-992397422600',
  '316145723',
  '47556993',
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
  'a968933e-8c39-42c6-8d8a-5af8afd1467a'::uuid,
  '2026-27',
  '2',
  null,
  '22-33-N',
  '2270',
  null,
  '2022-05-27'::date,
  'NURSERY',
  null,
  'Local',
  null,
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
  'a968933e-8c39-42c6-8d8a-5af8afd1467a'::uuid,
  'father',
  'JITENDRA',
  'FARMER',
  'M-9926464853',
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
  'a968933e-8c39-42c6-8d8a-5af8afd1467a'::uuid,
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
  'a968933e-8c39-42c6-8d8a-5af8afd1467a'::uuid,
  'ARJUN NAGAR - 20',
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
  'a968933e-8c39-42c6-8d8a-5af8afd1467a'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 39, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "SAMAR", "SURNAME": "MALVIYA", "FATHER": "JITENDRA", "MOTHER": "KAVITA", "DOB": "16.11.2018", "SCHOLAR": 2270, "ADM NO.": "22-33-N", "ENROLL": null, "ADHAR CARD": "A-992397422600", "SSSMID": 316145723, "FAMILY ID": 47556993, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "FARMER", "ADMN.DATE": "2022-05-27 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9926464853", "ADDRESS": "ARJUN NAGAR - 20", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 40 [left]: VANSH RAJ-23
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  'VANSH RAJ-23',
  null,
  '2019-05-12'::date,
  'A-920903636189',
  null,
  null,
  'HINDU',
  'PRAJAPATI',
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  '2026-27',
  '2',
  null,
  '101-23-L',
  '2279',
  null,
  '2023-07-03'::date,
  'L.K.G',
  null,
  'Local',
  null,
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  'father',
  'VIKRAM KUMAR',
  'GOVT. JOB',
  'M-8780789529',
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  'mother',
  'SONY KUMARI',
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  'DROPADI NAGAR - 29',
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  null,
  'SBI30265458603',
  'SBIN0003315',
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
  '0a5bfc09-465d-4bad-a608-4470ddb34513'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 40, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "VANSH RAJ-23", "SURNAME": null, "FATHER": "VIKRAM KUMAR", "MOTHER": "SONY KUMARI", "DOB": "12.05.2019", "SCHOLAR": 2279, "ADM NO.": "101-23-L", "ENROLL": null, "ADHAR CARD": "A-920903636189", "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": "SBI30265458603", "IFSC CODE": "SBIN0003315", "RELIGION": "HINDU", "CASTE": "PRAJAPATI", "CATE.": "OBC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "03-07-02023", "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-8780789529", "ADDRESS": "DROPADI NAGAR - 29", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 2nd row 41 [left]: SANAYA SINGH
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
  '3cfc8d29-fee2-4498-ba2e-701f678ed68f'::uuid,
  'SANAYA',
  'SINGH',
  '2019-01-11'::date,
  'A-920107443084',
  '309937133',
  '23299604',
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
  '3cfc8d29-fee2-4498-ba2e-701f678ed68f'::uuid,
  '2026-27',
  '2',
  null,
  '22-30-N',
  '2272',
  null,
  '2022-05-18'::date,
  'NURSERY',
  null,
  'Local',
  null,
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
  '3cfc8d29-fee2-4498-ba2e-701f678ed68f'::uuid,
  'father',
  'SURENDRA',
  'CENT.WARE HOUSE',
  'M-8982141450',
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
  '3cfc8d29-fee2-4498-ba2e-701f678ed68f'::uuid,
  'mother',
  'KUSUM MALVIYA',
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
  '3cfc8d29-fee2-4498-ba2e-701f678ed68f'::uuid,
  'CHAMUNDAPURI - 87',
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
  '3cfc8d29-fee2-4498-ba2e-701f678ed68f'::uuid,
  '2026-27',
  '2',
  '1-5.xlsx',
  'CLASS 2nd',
  '{"sheet_name": "CLASS 2nd", "row_number": 41, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "SANAYA", "SURNAME": "SINGH", "FATHER": "SURENDRA", "MOTHER": "KUSUM MALVIYA", "DOB": "11.01.2019", "SCHOLAR": 2272, "ADM NO.": "22-30-N", "ENROLL": null, "ADHAR CARD": "A-920107443084", "SSSMID": 309937133, "FAMILY ID": 23299604, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "CENT.WARE HOUSE", "ADMN.DATE": "2022-05-18 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8982141450", "ADDRESS": "CHAMUNDAPURI - 87", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 3 [enrolled]: ANSHUL VISHWAKARMA
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  'ANSHUL',
  'VISHWAKARMA',
  '2018-07-07'::date,
  'A-478577376390',
  '316093960',
  '38444180',
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  '2026-27',
  '3',
  null,
  '22-64-L',
  '2188',
  null,
  '2022-06-24'::date,
  'L.K.G',
  null,
  'Local',
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  'father',
  'DEEPAK',
  'STUDIO',
  'M-9926895795',
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  'mother',
  'RUPALI',
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  'ARJUN NAGAR - 22',
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  null,
  'SBI-32322914274',
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
  'd47b9d02-4196-4a40-ab25-bc527535cef7'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "ANSHUL", "SURNAME": "VISHWAKARMA", "FATHER": "DEEPAK", "MOTHER": "RUPALI", "DOB": "07.07.18", "SCH. NO.": 2188, "ADM NO.": "22-64-L", "ADHAR CARD": "A-478577376390", "SSSMID": 316093960, "FAMILY ID": 38444180, "BANK AC. NO.": "SBI-32322914274", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "OCCUPATION": "STUDIO", "ADMN.DATE": "2022-06-24 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-9926895795", "ADDRESS": "ARJUN NAGAR - 22", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 4 [enrolled]: DISHA PAWAR
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  'DISHA',
  'PAWAR',
  '2018-03-12'::date,
  'A-835680754549',
  '315901608',
  '38444980',
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  '2026-27',
  '3',
  null,
  '22-57-L',
  '2190',
  null,
  '2022-06-20'::date,
  'L.K.G',
  null,
  'Local',
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  'father',
  'LOKENDRA',
  'PVT. JOB',
  'M-9301522108',
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  'mother',
  'BABITA',
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  'CHAMUNDA PALACE - 18/3',
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  null,
  'PNB-1505001700155662',
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
  '370dff53-b57e-4680-bc43-8500ef4e86c5'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DISHA", "SURNAME": "PAWAR", "FATHER": "LOKENDRA", "MOTHER": "BABITA", "DOB": "12.03.18", "SCH. NO.": 2190, "ADM NO.": "22-57-L", "ADHAR CARD": "A-835680754549", "SSSMID": 315901608, "FAMILY ID": 38444980, "BANK AC. NO.": "PNB-1505001700155662", "IFSC CODE": "PUNB0150500", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2022-06-20 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-9301522108", "ADDRESS": "CHAMUNDA PALACE - 18/3", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 5 [enrolled]: HARSHIT THORAT
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  'HARSHIT',
  'THORAT',
  '2017-01-12'::date,
  'A-581874282879',
  '315476122',
  '21273153',
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  '2026-27',
  '3',
  null,
  '22-09-L',
  '2193',
  null,
  '2022-03-24'::date,
  'L.K.G',
  null,
  'Local',
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  'father',
  'YOGESH',
  'SHOP',
  'M-9179810546',
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  'mother',
  'KHUSHBOO',
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  'PRATAP NAGAR - 67',
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  null,
  'UBIN-274210100005604',
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
  '96d92ea6-7d2b-43ef-bc86-4914e5366787'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "HARSHIT", "SURNAME": "THORAT", "FATHER": "YOGESH", "MOTHER": "KHUSHBOO", "DOB": "12.01.2017", "SCH. NO.": 2193, "ADM NO.": "22-09-L", "ADHAR CARD": "A-581874282879", "SSSMID": 315476122, "FAMILY ID": 21273153, "BANK AC. NO.": "UBIN-274210100005604", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "LOHAR", "CATE.": "OBC", "OCCUPATION": "SHOP", "ADMN.DATE": "2022-03-24 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-9179810546", "ADDRESS": "PRATAP NAGAR - 67", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 6 [enrolled]: KANHAJI VISHWAKARMA
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
  'KANHAJI',
  'VISHWAKARMA',
  '2017-08-15'::date,
  'A-594322831531',
  '318538684',
  '49849271',
  'HINDU',
  'VISHWAKARMA',
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
  '2026-27',
  '3',
  null,
  '22-85-L',
  '2194',
  null,
  '2022-07-02'::date,
  'L.K.G',
  null,
  'Local',
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
  'father',
  'DHANANJAY',
  'BUSNISS',
  'M-8719823626',
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
  null,
  'FEDERAL-16130100041166',
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
  'c29d29b2-7284-47d0-8550-c394478db10c'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "KANHAJI", "SURNAME": "VISHWAKARMA", "FATHER": "DHANANJAY", "MOTHER": "POOJA", "DOB": "15.08.2017", "SCH. NO.": 2194, "ADM NO.": "22-85-L", "ADHAR CARD": "A-594322831531", "SSSMID": 318538684, "FAMILY ID": 49849271, "BANK AC. NO.": "FEDERAL-16130100041166", "IFSC CODE": "FDRL0001613", "RELIGION": "HINDU", "CASTE": "VISHWAKARMA", "CATE.": "OBC", "OCCUPATION": "BUSNISS", "ADMN.DATE": "2022-07-02 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-8719823626", "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 7 [enrolled]: KAVYANSH GIRI GOSWAMI
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  'KAVYANSH GIRI',
  'GOSWAMI',
  '2018-03-24'::date,
  'A-836835755845',
  '315014547',
  '47859195',
  'HINDU',
  'GOSWAMI',
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  '2026-27',
  '3',
  null,
  '21-12-N',
  '2195',
  null,
  '2021-07-05'::date,
  'NURSERY',
  null,
  'Local',
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  'father',
  'LT.ANUBHAV',
  'BANKING',
  'M-7879966094',
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  'mother',
  'MEENU',
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  'BHOUSLE COLONY - 35',
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  null,
  'YS020203130021943',
  'YESB0SAMTA1',
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
  'be0b084e-9035-4a9c-bf9f-a316bba4275e'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "KAVYANSH GIRI", "SURNAME": "GOSWAMI", "FATHER": "LT.ANUBHAV", "MOTHER": "MEENU", "DOB": "24.03.2018", "SCH. NO.": 2195, "ADM NO.": "21-12-N", "ADHAR CARD": "A-836835755845", "SSSMID": 315014547, "FAMILY ID": 47859195, "BANK AC. NO.": "YS020203130021943", "IFSC CODE": "YESB0SAMTA1", "RELIGION": "HINDU", "CASTE": "GOSWAMI", "CATE.": "OBC", "OCCUPATION": "BANKING", "ADMN.DATE": "2021-07-05 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7879966094", "ADDRESS": "BHOUSLE COLONY - 35", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 8 [enrolled]: SHIWANGI KUMAWAT
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
  'SHIWANGI',
  'KUMAWAT',
  '2018-07-21'::date,
  'A-592253963812',
  '313855494',
  '43088409',
  'HINDU',
  'KUMAWAT',
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
  '2026-27',
  '3',
  null,
  '21-73-N',
  '2199',
  null,
  '2023-11-23'::date,
  'NURSERY',
  null,
  'Local',
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
  'father',
  'SUBHASH',
  'HOTAL',
  'M-7067096104',
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
  'MADHUBAN COLONY - 1',
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
  null,
  'BOI-890218210011902',
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
  '17bec75c-0ce1-434d-b31a-9c73389e120f'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SHIWANGI", "SURNAME": "KUMAWAT", "FATHER": "SUBHASH", "MOTHER": "POOJA", "DOB": "21.07.2018", "SCH. NO.": 2199, "ADM NO.": "21-73-N", "ADHAR CARD": "A-592253963812", "SSSMID": 313855494, "FAMILY ID": 43088409, "BANK AC. NO.": "BOI-890218210011902", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "KUMAWAT", "CATE.": "OBC", "OCCUPATION": "HOTAL", "ADMN.DATE": "2023-11-23 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7067096104", "ADDRESS": "MADHUBAN COLONY - 1", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 9 [enrolled]: MANAS-24 VARMA
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  'MANAS-24',
  'VARMA',
  '2017-06-29'::date,
  'A-285608903087',
  '311417305',
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  '2026-27',
  '3',
  null,
  '24-38-1st',
  '2204',
  null,
  '2024-05-28'::date,
  '1st',
  null,
  'Local',
  'OSHAN INTERNAT.',
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  'father',
  'MANOJ',
  'BOOK SAL.',
  '9826657355',
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  'mother',
  'LATA',
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  '14 CHAMUNDA PURI',
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  null,
  'SBI-30219722131',
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
  'd062bce3-ba0c-4f49-bf7f-f7224d2f634c'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "MANAS-24", "SURNAME": "VARMA", "FATHER": "MANOJ", "MOTHER": "LATA", "DOB": "29.06.2017", "SCH. NO.": 2204, "ADM NO.": "24-38-1st", "ADHAR CARD": "A-285608903087", "SSSMID": 311417305, "FAMILY ID": 36826953, "BANK AC. NO.": "SBI-30219722131", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "BOOK SAL.", "ADMN.DATE": "28-05-24", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": 9826657355, "ADDRESS": "14 CHAMUNDA PURI", "LAST SCHOOL": "OSHAN INTERNAT."}}'::jsonb
);

-- CLASS 3rd row 10 [enrolled]: PRINCE-24 CHAWDA
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
  'PRINCE-24',
  'CHAWDA',
  '2018-09-10'::date,
  'A-520369233192',
  '313689577',
  '49901016',
  'HINDU',
  'DARJI',
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
  '2026-27',
  '3',
  null,
  '24-37-1st',
  '2214',
  null,
  '2024-05-15'::date,
  '1st',
  null,
  null,
  'KINDER KIDS',
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
  'father',
  'MANISH',
  null,
  'M.7804075050',
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
  '56-VISHRAM BAG',
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
  null,
  'BOI-890110110016919',
  'BKID0008901',
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
  '42dc0c35-cdea-4990-ac19-5792d2344344'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "PRINCE-24", "SURNAME": "CHAWDA", "FATHER": "MANISH", "MOTHER": "NEHA", "DOB": "10.09.2018", "SCH. NO.": 2214, "ADM NO.": "24-37-1st", "ADHAR CARD": "A-520369233192", "SSSMID": 313689577, "FAMILY ID": 49901016, "BANK AC. NO.": "BOI-890110110016919", "IFSC CODE": "BKID0008901", "RELIGION": "HINDU", "CASTE": "DARJI", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "15.05.24", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M.7804075050", "ADDRESS": "56-VISHRAM BAG", "LAST SCHOOL": "KINDER KIDS"}}'::jsonb
);

-- CLASS 3rd row 11 [enrolled]: LAKSHITA-24 PARMAR
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  'LAKSHITA-24',
  'PARMAR',
  '2017-10-07'::date,
  'A-750860571047',
  '311405389',
  '24232544',
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  '2026-27',
  '3',
  null,
  '24-43-1st',
  '2220',
  null,
  '2024-05-31'::date,
  '1st',
  null,
  null,
  'NEW MALVANCHAL',
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  'father',
  'ARUN',
  'ELECTRICIAN',
  'M-9009732932',
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  'mother',
  'LADKUNVAR',
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  'KHATIKHEDI',
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  null,
  'BOI-912118110007318',
  'BKID0009121',
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
  '2e2072c2-8b08-4665-8970-92a5fa207edb'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "LAKSHITA-24", "SURNAME": "PARMAR", "FATHER": "ARUN", "MOTHER": "LADKUNVAR", "DOB": "07.10.2017", "SCH. NO.": 2220, "ADM NO.": "24-43-1st", "ADHAR CARD": "A-750860571047", "SSSMID": 311405389, "FAMILY ID": 24232544, "BANK AC. NO.": "BOI-912118110007318", "IFSC CODE": "BKID0009121", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ELECTRICIAN", "ADMN.DATE": "31-05-24", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-9009732932", "ADDRESS": "KHATIKHEDI", "LAST SCHOOL": "NEW MALVANCHAL"}}'::jsonb
);

-- CLASS 3rd row 12 [enrolled]: KUMKUM-24 PARMAR
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  'KUMKUM-24',
  'PARMAR',
  '2017-06-24'::date,
  '695403461688',
  '306093968',
  '24236405',
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  '2026-27',
  '3',
  null,
  '24-45-1st',
  '2219',
  null,
  '2024-05-31'::date,
  '1st',
  null,
  null,
  'NEW MALVANCHAL',
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  'father',
  'BHARAT',
  'FARMER',
  'M.9009732932',
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  'mother',
  'SUNITA',
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  'KHATIKHEDI',
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  null,
  '912118110005739',
  'BKID0009121',
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
  '4f9ac676-47db-4dd3-be97-6b2466d32315'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "KUMKUM-24", "SURNAME": "PARMAR", "FATHER": "BHARAT", "MOTHER": "SUNITA", "DOB": "24.06.2017", "SCH. NO.": 2219, "ADM NO.": "24-45-1st", "ADHAR CARD": 695403461688, "SSSMID": 306093968, "FAMILY ID": 24236405, "BANK AC. NO.": 912118110005739, "IFSC CODE": "BKID0009121", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "FARMER", "ADMN.DATE": "2024-05-31 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M.9009732932", "ADDRESS": "KHATIKHEDI", "LAST SCHOOL": "NEW MALVANCHAL"}}'::jsonb
);

-- CLASS 3rd row 13 [enrolled]: ROHIT-24 BHATI
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
  'ROHIT-24',
  'BHATI',
  '2015-02-10'::date,
  'A-974282654063',
  '309215951',
  '20626175',
  'HINDU',
  'NAYAK',
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
  '2026-27',
  '3',
  null,
  '24-71-1st',
  '2229',
  null,
  '2024-07-02'::date,
  '1st',
  null,
  null,
  'GOVT',
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
  'father',
  'GOVIND',
  'FARMER',
  'M.9977225484',
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
  null,
  'C.B.O.I.-3636018119',
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
  'ca86a533-024a-42e2-beb8-e875148ddbfa'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "ROHIT-24", "SURNAME": "BHATI", "FATHER": "GOVIND", "MOTHER": "KUSUM", "DOB": "2015-02-10 00:00:00", "SCH. NO.": 2229, "ADM NO.": "24-71-1st", "ADHAR CARD": "A-974282654063", "SSSMID": 309215951, "FAMILY ID": 20626175, "BANK AC. NO.": "C.B.O.I.-3636018119", "IFSC CODE": "CBIN0282162", "RELIGION": "HINDU", "CASTE": "NAYAK", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2024-07-02 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M.9977225484", "ADDRESS": "KALUKHEDI", "LAST SCHOOL": "GOVT"}}'::jsonb
);

-- CLASS 3rd row 14 [enrolled]: PRADHYANSH AMODIYA
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
  'PRADHYANSH',
  'AMODIYA',
  '2017-12-11'::date,
  'A-510957268649',
  '314891511',
  '38365893',
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
  '2026-27',
  '3',
  null,
  '24-60-1st',
  '2233',
  null,
  '2024-06-28'::date,
  '1st',
  null,
  null,
  'GYAN SANCHAY',
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
  'father',
  'YASHWANT',
  'PVT. JOB',
  'M-9669492769',
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
  '24-CHAMUNDA PURI DEWAS',
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
  null,
  'DENA BANK-059210026173',
  'AXTPA0059M',
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
  '889784fc-dedf-4fe0-a4a5-de0e3a1395cf'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "PRADHYANSH", "SURNAME": "AMODIYA", "FATHER": "YASHWANT", "MOTHER": "RANI", "DOB": "2017-12-11 00:00:00", "SCH. NO.": 2233, "ADM NO.": "24-60-1st", "ADHAR CARD": "A-510957268649", "SSSMID": 314891511, "FAMILY ID": 38365893, "BANK AC. NO.": "DENA BANK-059210026173", "IFSC CODE": "AXTPA0059M", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-06-28 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-9669492769", "ADDRESS": "24-CHAMUNDA PURI DEWAS", "LAST SCHOOL": "GYAN SANCHAY"}}'::jsonb
);

-- CLASS 3rd row 15 [enrolled]: BULBUL-23 SOLANKI
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
  'BULBUL-23',
  'SOLANKI',
  '2018-09-13'::date,
  'A-754544500479',
  '321080233',
  '45947587',
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
  '2026-27',
  '3',
  null,
  '34-23-1',
  '2152',
  null,
  '2023-05-26'::date,
  '1st',
  null,
  null,
  'CENTRAL ACADEMY',
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
  'father',
  'DHARMENDRA',
  'PVT.TEACHER',
  'M-9691338553',
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
  'RADHACHANDRA NAGAR - 144',
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
  null,
  'SBI32364700239',
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
  '150af173-d13f-48c6-b69b-ad98787c1a13'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "BULBUL-23", "SURNAME": "SOLANKI", "FATHER": "DHARMENDRA", "MOTHER": "REENA", "DOB": "13.09.2018", "SCH. NO.": 2152, "ADM NO.": "34-23-1", "ADHAR CARD": "A-754544500479", "SSSMID": 321080233, "FAMILY ID": 45947587, "BANK AC. NO.": "SBI32364700239", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT.TEACHER", "ADMN.DATE": "26-05-23", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-9691338553", "ADDRESS": "RADHACHANDRA NAGAR - 144", "LAST SCHOOL": "CENTRAL ACADEMY"}}'::jsonb
);

-- CLASS 3rd row 16 [enrolled]: YOGITA AHIRWAR
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
  'e7859f3b-0f23-4a19-94dc-b6c05125d349'::uuid,
  'YOGITA',
  'AHIRWAR',
  '2018-02-10'::date,
  'A-26562372194',
  '315872598',
  '49653227',
  'HINDU',
  'AHIRWAR',
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
  'e7859f3b-0f23-4a19-94dc-b6c05125d349'::uuid,
  '2026-27',
  '3',
  null,
  '26-29-3rd',
  '2351',
  null,
  '2023-06-13'::date,
  '3rd',
  null,
  null,
  'GLOBAL RISE INTTERNATIONAL',
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
  'e7859f3b-0f23-4a19-94dc-b6c05125d349'::uuid,
  'father',
  'DURGESH',
  'GOVT. JOB',
  'M-9685437580',
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
  'e7859f3b-0f23-4a19-94dc-b6c05125d349'::uuid,
  'mother',
  'RANJANA',
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
  'e7859f3b-0f23-4a19-94dc-b6c05125d349'::uuid,
  'CHAMUNDA PURI-03',
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
  'e7859f3b-0f23-4a19-94dc-b6c05125d349'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "YOGITA", "SURNAME": "AHIRWAR", "FATHER": "DURGESH", "MOTHER": "RANJANA", "DOB": "10.02.2018", "SCH. NO.": 2351, "ADM NO.": "26-29-3rd", "ADHAR CARD": "A-26562372194", "SSSMID": 315872598, "FAMILY ID": 49653227, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "AHIRWAR", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "13-06-23", "BOARD R.N.": null, "ADM .CLASS": "3rd", "MOB. NO.": "M-9685437580", "ADDRESS": "CHAMUNDA PURI-03", "LAST SCHOOL": "GLOBAL RISE INTTERNATIONAL"}}'::jsonb
);

-- CLASS 3rd row 17 [enrolled]: YASHSVI BOURASI
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  'YASHSVI',
  'BOURASI',
  '2018-10-24'::date,
  'A- 427026092310',
  '310301549',
  '47944336',
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  '2026-27',
  '3',
  null,
  '26-57-3rd',
  '2369',
  null,
  '2026-05-11'::date,
  '3rd',
  null,
  null,
  'JUPITER INTERNATIONAL ACDEMY',
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  'father',
  'GANESH',
  'GOVT. JOB',
  'M-9009876004',
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  'mother',
  'SUMAN',
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  'GREEN VELLI-126',
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  null,
  'A/C- 881510110010419',
  'BKID0008815',
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
  '493fddf4-a812-4f7c-8483-e624b29513b2'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "YASHSVI", "SURNAME": "BOURASI", "FATHER": "GANESH", "MOTHER": "SUMAN", "DOB": "2018-10-24 00:00:00", "SCH. NO.": 2369, "ADM NO.": "26-57-3rd", "ADHAR CARD": "A- 427026092310", "SSSMID": 310301549, "FAMILY ID": 47944336, "BANK AC. NO.": "A/C- 881510110010419", "IFSC CODE": "BKID0008815", "RELIGION": "HINDU", "CASTE": "PASI", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2026-05-11 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "3rd", "MOB. NO.": "M-9009876004", "ADDRESS": "GREEN VELLI-126", "LAST SCHOOL": "JUPITER INTERNATIONAL ACDEMY"}}'::jsonb
);

-- CLASS 3rd row 20 [rte]: ADESH R T E MALVIYA
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
  'ADESH R T E',
  'MALVIYA',
  '2017-05-04'::date,
  'A-864257095852',
  '309184574',
  '36673906',
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
  '2026-27',
  '3',
  null,
  '21-16-N',
  '1935',
  null,
  '2021-07-17'::date,
  'NURSERY',
  null,
  'Local',
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
  'father',
  'RAHUL',
  'PVT. JOB',
  'M-8719955244',
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
  'PRATAP NAGAR - 20-B',
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
  null,
  'SBI32121268782',
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
  'bc8554e7-37c8-4a07-a16a-d48693b1ca40'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 20, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ADESH R T E", "SURNAME": "MALVIYA", "FATHER": "RAHUL", "MOTHER": "KOMAL", "DOB": "04.05.2017", "SCH. NO.": 1935, "ENROLL": "21-16-N", "ADHAR CARD": "A-864257095852", "SSSMID": 309184574, "FAMILY ID": 36673906, "BANK AC. NO.": "SBI32121268782", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2021-07-17 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8719955244", "ADDRESS": "PRATAP NAGAR - 20-B", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 21 [rte]: ARPITA R T E VERMA
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  'ARPITA R T E',
  'VERMA',
  '2017-06-04'::date,
  'A-678705694162',
  '311541875',
  '38359793',
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  '2026-27',
  '3',
  null,
  '21-17-N',
  '1936',
  null,
  '2021-07-19'::date,
  'NURSERY',
  null,
  'Local',
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  'father',
  'RAJESH',
  'PVT. JOB',
  'M-9753728275',
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  'mother',
  'SANGITA',
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  'CHAMUNDAPURI - 15',
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  null,
  'SBI-53010719098',
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
  '884eeb15-aadb-436b-aad4-1919959405d6'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 21, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ARPITA R T E", "SURNAME": "VERMA", "FATHER": "RAJESH", "MOTHER": "SANGITA", "DOB": "04.06.2017", "SCH. NO.": 1936, "ENROLL": "21-17-N", "ADHAR CARD": "A-678705694162", "SSSMID": 311541875, "FAMILY ID": 38359793, "BANK AC. NO.": "SBI-53010719098", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2021-07-19 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9753728275", "ADDRESS": "CHAMUNDAPURI - 15", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 22 [rte]: AAROHI PATEL
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  'AAROHI',
  'PATEL',
  '2016-07-11'::date,
  'A-767469984228',
  '308652167',
  '45656900',
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  '2026-27',
  '3',
  null,
  '21-27-N',
  '1941',
  null,
  '2021-07-07'::date,
  'NURSERY',
  null,
  'Local',
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  'father',
  'NAVIN',
  null,
  'M-9584062851',
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  'mother',
  'ANJU',
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  'CHAMUNDA PALACE',
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  null,
  'BOI890018210016407',
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
  'e4fab7b3-20c5-4e4c-a5b0-1f7ce6e7202a'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 22, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "AAROHI", "SURNAME": "PATEL", "FATHER": "NAVIN", "MOTHER": "ANJU", "DOB": "11.07.2016", "SCH. NO.": 1941, "ENROLL": "21-27-N", "ADHAR CARD": "A-767469984228", "SSSMID": 308652167, "FAMILY ID": 45656900, "BANK AC. NO.": "BOI890018210016407", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": "2021-07-07 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9584062851", "ADDRESS": "CHAMUNDA PALACE", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 23 [rte]: ARUSHI R T E
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  'ARUSHI R T E',
  null,
  '2017-09-10'::date,
  'A-477975372284',
  '310150794',
  '45288376',
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  '2026-27',
  '3',
  null,
  '21-20-N',
  '1938',
  null,
  '2021-07-19'::date,
  'NURSERY',
  null,
  'Local',
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  'father',
  'DEEPAK',
  'LABOUR',
  'M-9009006275',
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  'mother',
  'PAVITRA',
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  'MAHAKAL COLONY - 143',
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  null,
  'BOM60225138368',
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
  '88e10de0-e273-4ba4-9791-8571d681ab2c'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 23, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ARUSHI R T E", "SURNAME": null, "FATHER": "DEEPAK", "MOTHER": "PAVITRA", "DOB": "10.09.2017", "SCH. NO.": 1938, "ENROLL": "21-20-N", "ADHAR CARD": "A-477975372284", "SSSMID": 310150794, "FAMILY ID": 45288376, "BANK AC. NO.": "BOM60225138368", "IFSC CODE": "MAHB0000141", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "LABOUR", "ADMN.DATE": "2021-07-19 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9009006275", "ADDRESS": "MAHAKAL COLONY - 143", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 24 [rte]: BHAVYA R T E MALVIYA
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  'BHAVYA R T E',
  'MALVIYA',
  '2017-06-13'::date,
  'A-639982989687',
  '310610707',
  '34492680',
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  '2026-27',
  '3',
  null,
  '21-55-N',
  '1940',
  null,
  '2021-07-20'::date,
  'NURSERY',
  null,
  'Local',
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  'father',
  'JITENDRA',
  'MARKETING',
  'M-9993356741',
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  'mother',
  'PAVITRA',
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  'ARJUN NAGAR - 8',
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  null,
  'CAN78312010020233',
  'CNRV0017831',
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
  'bc5b220f-bcc8-4c3b-8f6d-b2d5afd25d7e'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 24, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "BHAVYA R T E", "SURNAME": "MALVIYA", "FATHER": "JITENDRA", "MOTHER": "PAVITRA", "DOB": "13.06.2017", "SCH. NO.": 1940, "ENROLL": "21-55-N", "ADHAR CARD": "A-639982989687", "SSSMID": 310610707, "FAMILY ID": 34492680, "BANK AC. NO.": "CAN78312010020233", "IFSC CODE": "CNRV0017831", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "MARKETING", "ADMN.DATE": "2021-07-20 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9993356741", "ADDRESS": "ARJUN NAGAR - 8", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 25 [rte]: NETRIKA R T E MALVIYA
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
  'NETRIKA R T E',
  'MALVIYA',
  '2017-06-07'::date,
  'A-975019157242',
  '312056926',
  '36679298',
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
  '2026-27',
  '3',
  null,
  '21-28-N',
  '1942',
  null,
  '2021-07-26'::date,
  'NURSERY',
  null,
  'Local',
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
  'father',
  'AJAY',
  'ELECTRICIAN',
  'M-8717938361',
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
  'MAHAKAL COLONY - 12/1',
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
  null,
  'PNB6594000100051434',
  'PUNB0659400',
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
  '94382815-3ba0-4504-b248-a66d356e2338'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 25, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "NETRIKA R T E", "SURNAME": "MALVIYA", "FATHER": "AJAY", "MOTHER": "MAMTA", "DOB": "07.06.2017", "SCH. NO.": 1942, "ENROLL": "21-28-N", "ADHAR CARD": "A-975019157242", "SSSMID": 312056926, "FAMILY ID": 36679298, "BANK AC. NO.": "PNB6594000100051434", "IFSC CODE": "PUNB0659400", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ELECTRICIAN", "ADMN.DATE": "2021-07-26 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8717938361", "ADDRESS": "MAHAKAL COLONY - 12/1", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 26 [rte]: PRATYANSH R T E SOLANKI
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
  'PRATYANSH R T E',
  'SOLANKI',
  '2017-09-23'::date,
  'A-344760350137',
  '305355788',
  '45271067',
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
  '2026-27',
  '3',
  null,
  '21-18-N',
  '1937',
  null,
  '2021-07-19'::date,
  'NURSERY',
  null,
  'Local',
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
  'father',
  'ROHIT',
  'PVT. JOB',
  'M-9827364049',
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
  'PRANAY NAGAR - 23',
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
  null,
  'SBI33269389744',
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
  '9281f108-b6df-4060-baec-382c6f9eddd5'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 26, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "PRATYANSH R T E", "SURNAME": "SOLANKI", "FATHER": "ROHIT", "MOTHER": "RITU", "DOB": "23.09.2017", "SCH. NO.": 1937, "ENROLL": "21-18-N", "ADHAR CARD": "A-344760350137", "SSSMID": 305355788, "FAMILY ID": 45271067, "BANK AC. NO.": "SBI33269389744", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2021-07-19 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9827364049", "ADDRESS": "PRANAY NAGAR - 23", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 27 [rte]: TRASHA R T E JAISWAL
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
  'TRASHA R T E',
  'JAISWAL',
  '2016-12-23'::date,
  'A-819184126698',
  '311949026',
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
  '2026-27',
  '3',
  null,
  '21-32-N',
  '1943',
  null,
  '2021-07-28'::date,
  'NURSERY',
  null,
  'Local',
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
  'father',
  'ROHIT',
  'LABOUR',
  'M-9893267675',
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
  'VISHAL NAGAR ITAWA - 40',
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
  null,
  'KOTAK BANK-0246656597',
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
  'f7a00b6d-a7b1-44d7-ac54-bb6832d58192'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 27, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "TRASHA R T E", "SURNAME": "JAISWAL", "FATHER": "ROHIT", "MOTHER": "TULJA", "DOB": "23.12.2016", "SCH. NO.": 1943, "ENROLL": "21-32-N", "ADHAR CARD": "A-819184126698", "SSSMID": 311949026, "FAMILY ID": 21288713, "BANK AC. NO.": "KOTAK BANK-0246656597", "IFSC CODE": "KKBK0005958", "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "OCCUPATION": "LABOUR", "ADMN.DATE": "2021-07-28 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9893267675", "ADDRESS": "VISHAL NAGAR ITAWA - 40", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 28 [rte]: YASHIKA KETHWAS
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
  'YASHIKA',
  'KETHWAS',
  '2016-11-30'::date,
  'A-781313605601',
  '309464295',
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
  '2026-27',
  '3',
  null,
  '21-37-N',
  '1962',
  null,
  '2021-08-25'::date,
  'NURSERY',
  null,
  'Local',
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
  'father',
  'VISHAL',
  'PVT. JOB',
  'M-7987893066',
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
  'DEVSHREE NAGAR - 30-40',
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
  null,
  'SBI31478108068',
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
  'a04a1fd5-2ffc-4bc7-9e98-608ad2ced6f7'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 28, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "YASHIKA", "SURNAME": "KETHWAS", "FATHER": "VISHAL", "MOTHER": "REENA", "DOB": "30.11.2016", "SCH. NO.": 1962, "ENROLL": "21-37-N", "ADHAR CARD": "A-781313605601", "SSSMID": 309464295, "FAMILY ID": 38442223, "BANK AC. NO.": "SBI31478108068", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "PASI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2021-08-25 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7987893066", "ADDRESS": "DEVSHREE NAGAR - 30-40", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 29 [rte]: AVNI R T E CHOUHAN
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
  'AVNI R T E',
  'CHOUHAN',
  '2017-07-18'::date,
  'A-901125135044',
  '311193857',
  '37875430',
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
  '2026-27',
  '3',
  null,
  '21-24-N',
  '1939',
  null,
  null,
  'NURSERY',
  null,
  'Local',
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
  'father',
  'SURENDRA',
  null,
  'M -9926019612, 9893017848',
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
  'CHAMUNDA PURI',
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
  null,
  'SBI20330284442',
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
  '8480ba18-5e01-4be2-8b00-0eebac33b526'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 29, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "AVNI R T E", "SURNAME": "CHOUHAN", "FATHER": "SURENDRA", "MOTHER": "PRIYANKA", "DOB": "18.07.2017", "SCH. NO.": 1939, "ENROLL": "21-24-N", "ADHAR CARD": "A-901125135044", "SSSMID": 311193857, "FAMILY ID": 37875430, "BANK AC. NO.": "SBI20330284442", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": "M-9893017848", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M -9926019612, 9893017848", "ADDRESS": "CHAMUNDA PURI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 31 [left]: CHANDANI 23 KUMARI
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  'CHANDANI 23',
  'KUMARI',
  '2018-03-07'::date,
  'A-428009259706',
  '320145923',
  '45370716',
  'HINDU',
  'KUMAR',
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  '2026-27',
  '3',
  null,
  null,
  '2087',
  '27-23-1',
  '2023-04-19'::date,
  '1st',
  null,
  null,
  'DSR MILLENNIUM',
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  'father',
  'SUMIT',
  'PVT. JOB',
  'M-7489716316',
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  'mother',
  'NAVITA',
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  'CHAMUNDAPURI',
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  null,
  'PNB-1505000409021294',
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
  '3c28e760-fec3-454b-8726-857f545ee2aa'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 31, "section": "left", "corrections": [], "data": {"MODE": null, "NAME": "CHANDANI 23", "SURNAME": "KUMARI", "FATHER": "SUMIT", "MOTHER": "NAVITA", "DOB": "2018-03-07 00:00:00", "SCH. NO.": 2087, "ENROLL": "27-23-1", "ADHAR CARD": "A-428009259706", "SSSMID": 320145923, "FAMILY ID": 45370716, "BANK AC. NO.": "PNB-1505000409021294", "IFSC CODE": "PUNB0150500", "RELIGION": "HINDU", "CASTE": "KUMAR", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "19-04-23", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": "M-7489716316", "ADDRESS": "CHAMUNDAPURI", "LAST SCHOOL": "DSR MILLENNIUM"}}'::jsonb
);

-- CLASS 3rd row 32 [left]: ANUJ BAMNIYA
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
  'ANUJ',
  'BAMNIYA',
  '2017-06-13'::date,
  'A-311110686242',
  '310799433',
  '44965279',
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
  '2026-27',
  '3',
  null,
  '23-58-U',
  '2189',
  null,
  '2023-07-10'::date,
  'U.K.G',
  null,
  'BUS-1',
  'NEW MALVANCHAL',
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
  'father',
  'RUPSINGH',
  'PVT. JOB',
  'M-9522458226',
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
  'FATANPUR - 43',
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
  null,
  'SBI20310698560',
  'SBIN0030320',
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
  'fbeb7a75-eddd-4c3b-bebb-f37344772c43'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 32, "section": "left", "corrections": [], "data": {"MODE": "BUS-1", "NAME": "ANUJ", "SURNAME": "BAMNIYA", "FATHER": "RUPSINGH", "MOTHER": "URMILA", "DOB": "13.06.2017", "SCH. NO.": 2189, "ENROLL": "23-58-U", "ADHAR CARD": "A-311110686242", "SSSMID": 310799433, "FAMILY ID": 44965279, "BANK AC. NO.": "SBI20310698560", "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2023-07-10 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-9522458226", "ADDRESS": "FATANPUR - 43", "LAST SCHOOL": "NEW MALVANCHAL"}}'::jsonb
);

-- CLASS 3rd row 33 [left]: VIRAJ BAMNIYA
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
  'VIRAJ',
  'BAMNIYA',
  '2017-09-16'::date,
  'A-894009503912',
  '310799367',
  '24103006',
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
  '2026-27',
  '3',
  null,
  '23-59-U',
  '2202',
  null,
  '2023-06-17'::date,
  'U.K.G',
  null,
  'BUS-1',
  null,
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
  'father',
  'SANTOSH',
  'ARMY',
  'M-9522458226',
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
  'FATANPUR - 43',
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
  null,
  'SBI-31016083037',
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
  '2d054e85-18c7-4a29-a4f3-a6b41b98e8df'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 33, "section": "left", "corrections": [], "data": {"MODE": "BUS-1", "NAME": "VIRAJ", "SURNAME": "BAMNIYA", "FATHER": "SANTOSH", "MOTHER": "KAVITA", "DOB": "16.09.2017", "SCH. NO.": 2202, "ENROLL": "23-59-U", "ADHAR CARD": "A-894009503912", "SSSMID": 310799367, "FAMILY ID": 24103006, "BANK AC. NO.": "SBI-31016083037", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "ARMY", "ADMN.DATE": "2023-06-17 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-9522458226", "ADDRESS": "FATANPUR - 43", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 3rd row 34 [left]: PIYUSH YADAV
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
  'PIYUSH',
  'YADAV',
  '2017-06-04'::date,
  'A-687277610187',
  '307153287',
  '39780917',
  'HINDU',
  'GAWLI',
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
  '2026-27',
  '3',
  null,
  '23-84-U',
  '2198',
  null,
  '2023-07-04'::date,
  'U.K.G',
  null,
  'Local',
  null,
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
  'father',
  'RAMMILAN',
  'PVT. JOB',
  'M-9981135298',
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
  'mother',
  'NEELU',
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
  null,
  'AX918010072736509',
  'UTIB0003152',
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
  '85e838be-0626-447d-bfc7-82f9c00bf5b3'::uuid,
  '2026-27',
  '3',
  '1-5.xlsx',
  'CLASS 3rd',
  '{"sheet_name": "CLASS 3rd", "row_number": 34, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "PIYUSH", "SURNAME": "YADAV", "FATHER": "RAMMILAN", "MOTHER": "NEELU", "DOB": "04.06.2017", "SCH. NO.": 2198, "ENROLL": "23-84-U", "ADHAR CARD": "A-687277610187", "SSSMID": 307153287, "FAMILY ID": 39780917, "BANK AC. NO.": "AX918010072736509", "IFSC CODE": "UTIB0003152", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2023-07-04 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-9981135298", "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 4th row 3 [enrolled]: ATHARVRAJ SINGH CHOUHAN
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  'ATHARVRAJ SINGH',
  'CHOUHAN',
  '2017-03-12'::date,
  'A-716358488551',
  '310329197',
  '21125289',
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  '2026-27',
  '4',
  null,
  '20-04-N',
  '2133',
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  'father',
  'SHIVPAL',
  'SELF EMPLOY',
  'M-9399736334',
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  'mother',
  'RADHA',
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  'MANGAL MURTI NAGAR - 24',
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  null,
  'UN373502010026433',
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
  'f83454fd-6185-4e10-8fe6-a12154d94554'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2133, "NAME": "ATHARVRAJ SINGH", "SURNAME": "CHOUHAN", "FATHER": "SHIVPAL", "MOTHER": "RADHA", "DOB": "12.03.2017", "ADM NO.": "20-04-N", "ADHAR CARD": "A-716358488551", "SSSMID": 310329197, "FAMILY ID": 21125289, "BANK AC. NO.": "UN373502010026433", "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "SELF EMPLOY", "MOB. NO.": "M-9399736334", "ADDRESS": "MANGAL MURTI NAGAR - 24"}}'::jsonb
);

-- CLASS 4th row 4 [enrolled]: AVIKA BHATI
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  'AVIKA',
  'BHATI',
  '2017-02-16'::date,
  'A-949726206110',
  '313864175',
  '48283708',
  'HINDU',
  'BHATI',
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  '2026-27',
  '4',
  null,
  '22-79-U',
  '2135',
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  'father',
  'ARVIND',
  'POLICE LINE',
  'M-9770142563',
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  'mother',
  'ANJALI',
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  'POLICE LINE -C/47',
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  null,
  'UTIB916010000026065',
  'UTIB0000456',
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
  'aadd2de1-0796-4784-80dc-4e105a679f22'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2135, "NAME": "AVIKA", "SURNAME": "BHATI", "FATHER": "ARVIND", "MOTHER": "ANJALI", "DOB": "16.02.2017", "ADM NO.": "22-79-U", "ADHAR CARD": "A-949726206110", "SSSMID": 313864175, "FAMILY ID": 48283708, "BANK AC. NO.": "UTIB916010000026065", "IFSC CODE": "UTIB0000456", "RELIGION": "HINDU", "CASTE": "BHATI", "CATE.": "GEN", "OCCUPATION": "POLICE LINE", "MOB. NO.": "M-9770142563", "ADDRESS": "POLICE LINE -C/47"}}'::jsonb
);

-- CLASS 4th row 5 [enrolled]: HIMANI 23 CHODHARI
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  'HIMANI 23',
  'CHODHARI',
  '2017-05-02'::date,
  'A-989036992491',
  '316081754',
  '38392900',
  'HINDU',
  'GARI',
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  '2026-27',
  '4',
  null,
  '98-23-1',
  '2120',
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  'father',
  'AJAY SINGH',
  'PROPERTY DEALER',
  'M-8319480001',
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  'mother',
  'LAKSHMI',
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  'CHAMUNDA PURI - 02',
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  null,
  'UN274212010000166',
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
  '7f9d1c8c-d4ac-46c0-bdad-6c2be83adfa8'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2120, "NAME": "HIMANI 23", "SURNAME": "CHODHARI", "FATHER": "AJAY SINGH", "MOTHER": "LAKSHMI", "DOB": "2017-05-02 00:00:00", "ADM NO.": "98-23-1", "ADHAR CARD": "A-989036992491", "SSSMID": 316081754, "FAMILY ID": 38392900, "BANK AC. NO.": "UN274212010000166", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "OCCUPATION": "PROPERTY DEALER", "MOB. NO.": "M-8319480001", "ADDRESS": "CHAMUNDA PURI - 02"}}'::jsonb
);

-- CLASS 4th row 6 [enrolled]: HIMANSHI 23 CHOUDHARY
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
  'HIMANSHI 23',
  'CHOUDHARY',
  '2017-08-19'::date,
  'A-724697373014',
  '314252482',
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
  '2026-27',
  '4',
  null,
  '53-23-1',
  '2106',
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
  'father',
  'SHEKHAR',
  'FINANCE COMP.',
  'M-9713097153',
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
  'ARJUN NAGAR - 05',
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
  null,
  'UTI-915010043017407',
  'UTIB000456',
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
  '71f777a8-3ac7-4e5f-bec4-4a04d4a3b354'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2106, "NAME": "HIMANSHI 23", "SURNAME": "CHOUDHARY", "FATHER": "SHEKHAR", "MOTHER": "TEENA", "DOB": "19-08-2017", "ADM NO.": "53-23-1", "ADHAR CARD": "A-724697373014", "SSSMID": 314252482, "FAMILY ID": 38543951, "BANK AC. NO.": "UTI-915010043017407", "IFSC CODE": "UTIB000456", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FINANCE COMP.", "MOB. NO.": "M-9713097153", "ADDRESS": "ARJUN NAGAR - 05"}}'::jsonb
);

-- CLASS 4th row 7 [enrolled]: KARTIK PATEL
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  'KARTIK',
  'PATEL',
  '2016-11-13'::date,
  'A-834808688832',
  '305414140',
  '45849673',
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  '2026-27',
  '4',
  null,
  '69-19-N',
  '2139',
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  'father',
  'DEEPAK',
  'FARMER',
  'M-9907961906',
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  'mother',
  'BASKANYA',
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  'NAWDA',
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  null,
  'HDFC50100188040335',
  'HDFC0000887',
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
  'db0a8768-0e6b-4e71-bcdf-e939b2d57226'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2139, "NAME": "KARTIK", "SURNAME": "PATEL", "FATHER": "DEEPAK", "MOTHER": "BASKANYA", "DOB": "13.11.2016", "ADM NO.": "69-19-N", "ADHAR CARD": "A-834808688832", "SSSMID": 305414140, "FAMILY ID": 45849673, "BANK AC. NO.": "HDFC50100188040335", "IFSC CODE": "HDFC0000887", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMER", "MOB. NO.": "M-9907961906", "ADDRESS": "NAWDA"}}'::jsonb
);

-- CLASS 4th row 8 [enrolled]: MADHVENDRA SINGH 23 CHOUDHARY
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
  'MADHVENDRA SINGH 23',
  'CHOUDHARY',
  '2016-06-11'::date,
  'A-457236355219',
  '320752649',
  '38386811',
  'HINDU',
  'GARI',
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
  '2026-27',
  '4',
  null,
  '97-23-1',
  '2119',
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
  'father',
  'PAWAN',
  'FARMER',
  'M-7974835553',
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
  'CHAMUNDAPURI - 02',
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
  null,
  'CBI3574842646',
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
  '3f7d14a6-82f9-46e8-89a9-f63f1e3aebe4'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2119, "NAME": "MADHVENDRA SINGH 23", "SURNAME": "CHOUDHARY", "FATHER": "PAWAN", "MOTHER": "REENA", "DOB": "2016-06-11 00:00:00", "ADM NO.": "97-23-1", "ADHAR CARD": "A-457236355219", "SSSMID": 320752649, "FAMILY ID": 38386811, "BANK AC. NO.": "CBI3574842646", "IFSC CODE": "CBIN0283891", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "OCCUPATION": "FARMER", "MOB. NO.": "M-7974835553", "ADDRESS": "CHAMUNDAPURI - 02"}}'::jsonb
);

-- CLASS 4th row 9 [enrolled]: PRITHAVI SINGH TANWAR
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
  'PRITHAVI SINGH',
  'TANWAR',
  '2015-07-21'::date,
  'A-538353458121',
  '309030900',
  '39574222',
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
  '2026-27',
  '4',
  null,
  '22-34-U',
  '2143',
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
  'father',
  'RISHI SINGH',
  'DRIVER',
  'M-9617706654',
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
  'MADHUBAN COLONY - 216',
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
  null,
  'CBI3358420948',
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
  '2087beb3-a8d6-4123-acd1-0016a5d63689'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2143, "NAME": "PRITHAVI SINGH", "SURNAME": "TANWAR", "FATHER": "RISHI SINGH", "MOTHER": "MADHUBALA", "DOB": "21.07.2015", "ADM NO.": "22-34-U", "ADHAR CARD": "A-538353458121", "SSSMID": 309030900, "FAMILY ID": 39574222, "BANK AC. NO.": "CBI3358420948", "IFSC CODE": "CBIN0280762", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "DRIVER", "MOB. NO.": "M-9617706654", "ADDRESS": "MADHUBAN COLONY - 216"}}'::jsonb
);

-- CLASS 4th row 10 [enrolled]: RAGHAV PARMAR
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
  'RAGHAV',
  'PARMAR',
  '2017-02-12'::date,
  'A-292902395471',
  '310651321',
  '45534746',
  'HINDU',
  'NATH',
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
  '2026-27',
  '4',
  null,
  '20-19-N',
  '2102',
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
  'father',
  'SUNIL',
  'PVT. JOB',
  'M-8839535537',
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
  'MADHUBAN COLONY',
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
  null,
  'BOI890010110002567',
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
  '25dcc12c-959f-4aff-b4ba-15c9c1de6835'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2102, "NAME": "RAGHAV", "SURNAME": "PARMAR", "FATHER": "SUNIL", "MOTHER": "SONAM", "DOB": "12.02.2017", "ADM NO.": "20-19-N", "ADHAR CARD": "A-292902395471", "SSSMID": 310651321, "FAMILY ID": 45534746, "BANK AC. NO.": "BOI890010110002567", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-8839535537", "ADDRESS": "MADHUBAN COLONY"}}'::jsonb
);

-- CLASS 4th row 11 [enrolled]: SAMARTH SINGH RAJPUT
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
  'SAMARTH SINGH',
  'RAJPUT',
  '2017-04-22'::date,
  'A-357905659141',
  '321363776',
  '38671305',
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
  '2026-27',
  '4',
  null,
  '22-74-U',
  '2146',
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
  'father',
  'PRADIP',
  'PVT. JOB',
  '9617297281',
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
  'CHAMUNDAPURI',
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
  null,
  'UNION-274212010001413',
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
  '68bb7075-05dc-4340-80e1-b924fa424fbe'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2146, "NAME": "SAMARTH SINGH", "SURNAME": "RAJPUT", "FATHER": "PRADIP", "MOTHER": "REKHA", "DOB": "22.04.2017", "ADM NO.": "22-74-U", "ADHAR CARD": "A-357905659141", "SSSMID": 321363776, "FAMILY ID": 38671305, "BANK AC. NO.": "UNION-274212010001413", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "MOB. NO.": 9617297281, "ADDRESS": "CHAMUNDAPURI"}}'::jsonb
);

-- CLASS 4th row 12 [enrolled]: SAMRIDHI SISODIYA
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  'SAMRIDHI',
  'SISODIYA',
  '2016-12-15'::date,
  'A-382593055422',
  '311123596',
  '48153822',
  'HINDU',
  'THAKUR',
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  '2026-27',
  '4',
  null,
  '21-49-N',
  '2147',
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  'father',
  'HARIOM',
  'PVT. JOB',
  'M-7049604481',
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  'mother',
  'ANAMIKA',
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  'ARJUN NAGAR - 43',
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  null,
  'UBIN373502010025995',
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
  'a4f1d248-850b-4be8-88e1-f17c76eeb90a'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2147, "NAME": "SAMRIDHI", "SURNAME": "SISODIYA", "FATHER": "HARIOM", "MOTHER": "ANAMIKA", "DOB": "15.12.2016", "ADM NO.": "21-49-N", "ADHAR CARD": "A-382593055422", "SSSMID": 311123596, "FAMILY ID": 48153822, "BANK AC. NO.": "UBIN373502010025995", "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "THAKUR", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-7049604481", "ADDRESS": "ARJUN NAGAR - 43"}}'::jsonb
);

-- CLASS 4th row 13 [enrolled]: SHIVA MALVIYA
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  'SHIVA',
  'MALVIYA',
  '2016-11-12'::date,
  'A-711384388643',
  '303875986',
  '23161384',
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  '2026-27',
  '4',
  null,
  '22-86-U',
  '2148',
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  'father',
  'NILESH',
  'PVT. JOB',
  'M-8889836505',
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  'mother',
  'LAXMI',
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  'NEW DEWAS',
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  null,
  'BOI890010510000257',
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
  '8d425c3a-d1c3-4e06-a001-e12514c16fc6'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2148, "NAME": "SHIVA", "SURNAME": "MALVIYA", "FATHER": "NILESH", "MOTHER": "LAXMI", "DOB": "12.11.2016", "ADM NO.": "22-86-U", "ADHAR CARD": "A-711384388643", "SSSMID": 303875986, "FAMILY ID": 23161384, "BANK AC. NO.": "BOI890010510000257", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-8889836505", "ADDRESS": "NEW DEWAS"}}'::jsonb
);

-- CLASS 4th row 14 [enrolled]: SHREYA BHATI
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  'SHREYA',
  'BHATI',
  '2016-08-11'::date,
  'A-417552669949',
  '312175064',
  '48283708',
  'HINDU',
  'SENDHAV',
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  '2026-27',
  '4',
  null,
  '21-1-L',
  '2149',
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  'father',
  'HAMENDRA',
  'PVT. JOB',
  'M-9340537897',
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  'mother',
  'SUPRIYA',
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  'ARJUN NAGAR - 23',
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  null,
  'BOB07240100030518',
  'BARD0DEWASX',
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
  'd4dc57ef-87e1-4833-aaef-866fc46498c5'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2149, "NAME": "SHREYA", "SURNAME": "BHATI", "FATHER": "HAMENDRA", "MOTHER": "SUPRIYA", "DOB": "11.08.2016", "ADM NO.": "21-1-L", "ADHAR CARD": "A-417552669949", "SSSMID": 312175064, "FAMILY ID": 48283708, "BANK AC. NO.": "BOB07240100030518", "IFSC CODE": "BARD0DEWASX", "RELIGION": "HINDU", "CASTE": "SENDHAV", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9340537897", "ADDRESS": "ARJUN NAGAR - 23"}}'::jsonb
);

-- CLASS 4th row 15 [enrolled]: JIGAR-24 PUNACHA
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
  'JIGAR-24',
  'PUNACHA',
  '2017-06-14'::date,
  'A-212083288809',
  '312120856',
  '45188663',
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
  '2026-27',
  '4',
  null,
  '24-21-2',
  '2209',
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
  'father',
  'SINIL',
  'PVT. JOB',
  'M-9098250338',
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
  '32 FATANPUR',
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
  null,
  'BKID-892618210007442',
  'BKID0008626',
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
  'e55414a6-72d9-40d6-9fb0-a36310ce1e02'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2209, "NAME": "JIGAR-24", "SURNAME": "PUNACHA", "FATHER": "SINIL", "MOTHER": "RANI", "DOB": "14.06.2017", "ADM NO.": "24-21-2", "ADHAR CARD": "A-212083288809", "SSSMID": 312120856, "FAMILY ID": 45188663, "BANK AC. NO.": "BKID-892618210007442", "IFSC CODE": "BKID0008626", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9098250338", "ADDRESS": "32 FATANPUR"}}'::jsonb
);

-- CLASS 4th row 16 [enrolled]: NAMAN-24 MALVIYA
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  'NAMAN-24',
  'MALVIYA',
  '2016-08-11'::date,
  'A-7537403735848',
  '307007998',
  '48943081',
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  '2026-27',
  '4',
  null,
  '24-19-2',
  '2215',
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  'father',
  'SUNIL',
  'ACCOUNTANT',
  'M-6232111374',
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  'mother',
  'RANJANA',
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  '11/1 GAYATRI NAGAR',
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  null,
  'BKID890010110009932',
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
  '696236e8-73f7-46d3-b8e4-7e6e4082226b'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2215, "NAME": "NAMAN-24", "SURNAME": "MALVIYA", "FATHER": "SUNIL", "MOTHER": "RANJANA", "DOB": 42593, "ADM NO.": "24-19-2", "ADHAR CARD": "A-7537403735848", "SSSMID": 307007998, "FAMILY ID": 48943081, "BANK AC. NO.": "BKID890010110009932", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ACCOUNTANT", "MOB. NO.": "M-6232111374", "ADDRESS": "11/1 GAYATRI NAGAR"}}'::jsonb
);

-- CLASS 4th row 17 [enrolled]: HANIKA-24 AMODIYA
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
  'a3fa5f00-6051-42de-a5e5-45ef57678a17'::uuid,
  'HANIKA-24',
  'AMODIYA',
  '2016-08-31'::date,
  'A-635892228993',
  '312291417',
  '38365893',
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
  'a3fa5f00-6051-42de-a5e5-45ef57678a17'::uuid,
  '2026-27',
  '4',
  null,
  '24-62-2nd',
  '2231',
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
  'a3fa5f00-6051-42de-a5e5-45ef57678a17'::uuid,
  'father',
  'YASHWANT',
  'PVT. JOB',
  'M-9669492769',
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
  'a3fa5f00-6051-42de-a5e5-45ef57678a17'::uuid,
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
  'a3fa5f00-6051-42de-a5e5-45ef57678a17'::uuid,
  '24-CHAMUNDA PURI DEWAS',
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
  'a3fa5f00-6051-42de-a5e5-45ef57678a17'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2231, "NAME": "HANIKA-24", "SURNAME": "AMODIYA", "FATHER": "YASHWANT", "MOTHER": "RANI", "DOB": "31-08-2016", "ADM NO.": "24-62-2nd", "ADHAR CARD": "A-635892228993", "SSSMID": 312291417, "FAMILY ID": 38365893, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9669492769", "ADDRESS": "24-CHAMUNDA PURI DEWAS"}}'::jsonb
);

-- CLASS 4th row 18 [enrolled]: VAIBHAV-2025 PRAJPATI
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  'VAIBHAV-2025',
  'PRAJPATI',
  '2017-06-21'::date,
  'A-885416409601',
  '314442139',
  null,
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  '2026-27',
  '4',
  null,
  '25-25-3rd',
  '2287',
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  'father',
  'OMPRAKASH',
  'PVT. JOB',
  'M-9009786944',
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  'mother',
  'USHA',
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  'NEW DEWAS-282-LIG',
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  null,
  'BANK OF INDIA-890310110009986',
  'BKID0000903',
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
  'c2831f52-d363-466c-a7b8-f2c83e283d3d'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2287, "NAME": "VAIBHAV-2025", "SURNAME": "PRAJPATI", "FATHER": "OMPRAKASH", "MOTHER": "USHA", "DOB": "21-06-2017", "ADM NO.": "25-25-3rd", "ADHAR CARD": "A-885416409601", "SSSMID": 314442139, "FAMILY ID": null, "BANK AC. NO.": "BANK OF INDIA-890310110009986", "IFSC CODE": "BKID0000903", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9009786944", "ADDRESS": "NEW DEWAS-282-LIG"}}'::jsonb
);

-- CLASS 4th row 19 [enrolled]: VINAY RAJ-2025 CHOUDHARY
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  'VINAY RAJ-2025',
  'CHOUDHARY',
  '2016-07-22'::date,
  'A-482326292189',
  '320193397',
  '23739460',
  'HINDU',
  'GARY',
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  '2026-27',
  '4',
  null,
  '25-59-3rd',
  '2311',
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  'father',
  'GOPAL',
  'POLICE',
  'M-9827013124',
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  'mother',
  'VISHNU',
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  'CHAMUNDA PURI 78-DEWAS',
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  null,
  'SBI-37751727867',
  'SBIN00013652',
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
  'ca336f32-0193-422a-9ca7-38e4d94100b2'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2311, "NAME": "VINAY RAJ-2025", "SURNAME": "CHOUDHARY", "FATHER": "GOPAL", "MOTHER": "VISHNU", "DOB": "2016-07-22 00:00:00", "ADM NO.": "25-59-3rd", "ADHAR CARD": "A-482326292189", "SSSMID": 320193397, "FAMILY ID": 23739460, "BANK AC. NO.": "SBI-37751727867", "IFSC CODE": "SBIN00013652", "RELIGION": "HINDU", "CASTE": "GARY", "CATE.": "OBC", "OCCUPATION": "POLICE", "MOB. NO.": "M-9827013124", "ADDRESS": "CHAMUNDA PURI 78-DEWAS"}}'::jsonb
);

-- CLASS 4th row 20 [enrolled]: SINIKET 2025 RAHANGDALE
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  'SINIKET 2025',
  'RAHANGDALE',
  '2017-01-03'::date,
  'A-474635671097',
  '303699023',
  '28460851',
  'HINDU',
  'PANWAR',
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  '2026-27',
  '4',
  null,
  '25-44-3rd',
  '2290',
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  'father',
  'TEJPRAKASH',
  'MPBE',
  'M-6265813973',
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  'mother',
  'PARMESWARI',
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  'NEWERA SCHOOL DEWAS',
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  null,
  'CENTRAL BANK OF INDIA-3538583614',
  'CBIN0282024',
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
  'c3eb8f3b-6022-40a3-a9ed-0fe2c54061f1'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 20, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2290, "NAME": "SINIKET 2025", "SURNAME": "RAHANGDALE", "FATHER": "TEJPRAKASH", "MOTHER": "PARMESWARI", "DOB": "2017-01-03 00:00:00", "ADM NO.": "25-44-3rd", "ADHAR CARD": "A-474635671097", "SSSMID": 303699023, "FAMILY ID": 28460851, "BANK AC. NO.": "CENTRAL BANK OF INDIA-3538583614", "IFSC CODE": "CBIN0282024", "RELIGION": "HINDU", "CASTE": "PANWAR", "CATE.": "OBC", "OCCUPATION": "MPBE", "MOB. NO.": "M-6265813973", "ADDRESS": "NEWERA SCHOOL DEWAS"}}'::jsonb
);

-- CLASS 4th row 21 [enrolled]: HANVITA-24 AMODIYA
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
  'HANVITA-24',
  'AMODIYA',
  '2016-08-31'::date,
  'A-522930943315',
  '312291416',
  '38365893',
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
  '2026-27',
  '4',
  null,
  '24-61-2nd',
  '2232',
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
  'father',
  'YASHWANT',
  'PVT. JOB',
  'M-9669492769',
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
  '24-CHAMUNDA PURI DEWAS',
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
  null,
  'DENA BANK-059210026173',
  'AXTPA0059M',
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
  '6dc0cc2f-e9a7-43c8-b856-b66408379d81'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 21, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2232, "NAME": "HANVITA-24", "SURNAME": "AMODIYA", "FATHER": "YASHWANT", "MOTHER": "RANI", "DOB": "2016-08-31 00:00:00", "ADM NO.": "24-61-2nd", "ADHAR CARD": "A-522930943315", "SSSMID": 312291416, "FAMILY ID": 38365893, "BANK AC. NO.": "DENA BANK-059210026173", "IFSC CODE": "AXTPA0059M", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9669492769", "ADDRESS": "24-CHAMUNDA PURI DEWAS"}}'::jsonb
);

-- CLASS 4th row 22 [enrolled]: KRISHNA-2024 PAL
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
  'KRISHNA-2024',
  'PAL',
  '2015-07-01'::date,
  'A-452972692871',
  '323480102',
  '51223472',
  null,
  'GADRIYA',
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
  '2026-27',
  '4',
  null,
  '24-88-3rd',
  '2312',
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
  'father',
  'NANDU',
  'PVT. JOB',
  'M.7067861039',
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
  'AWAS NAGAR DEWAS',
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
  null,
  'AWAS NAGAR DEWAS',
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
  'c38181f2-b1c0-46c2-862c-0be098de4e7b'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 22, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2312, "NAME": "KRISHNA-2024", "SURNAME": "PAL", "FATHER": "NANDU", "MOTHER": "KIRAN", "DOB": "2015-07-01 00:00:00", "ADM NO.": "24-88-3rd", "ADHAR CARD": "A-452972692871", "SSSMID": 323480102, "FAMILY ID": 51223472, "BANK AC. NO.": "AWAS NAGAR DEWAS", "IFSC CODE": null, "RELIGION": null, "CASTE": "GADRIYA", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M.7067861039", "ADDRESS": "AWAS NAGAR DEWAS"}}'::jsonb
);

-- CLASS 4th row 23 [enrolled]: ARYAN -26 CHOUHAN
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
  'ARYAN -26',
  'CHOUHAN',
  '2014-10-23'::date,
  'A-',
  '306331916',
  '49129307',
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
  '2026-27',
  '4',
  null,
  '26-24-4th',
  '2348',
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
  'father',
  'RAHUL',
  'MAJDURI',
  'M-8815573759',
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
  'mother',
  'BABITA',
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
  null,
  'RADHAGANJ',
  'SBIN0030259',
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
  'b52ffee6-d720-4c35-bf6c-c1370038efbb'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 23, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2348, "NAME": "ARYAN -26", "SURNAME": "CHOUHAN", "FATHER": "RAHUL", "MOTHER": "BABITA", "DOB": "2014-10-23 00:00:00", "ADM NO.": "26-24-4th", "ADHAR CARD": "A-", "SSSMID": 306331916, "FAMILY ID": 49129307, "BANK AC. NO.": "RADHAGANJ", "IFSC CODE": "SBIN0030259", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "MAJDURI", "MOB. NO.": "M-8815573759", "ADDRESS": "RADHAGANJ"}}'::jsonb
);

-- CLASS 4th row 24 [enrolled]: ATHARV BORASI
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  'ATHARV',
  'BORASI',
  null,
  'A-264762472440',
  '310173716',
  '47944336',
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  '2026-27',
  '4',
  null,
  '26-59-4th',
  '2371',
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  'father',
  'GANESH',
  'GOVT. JOB',
  'M-9009876004, 9340272330',
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  'mother',
  'SUMAN',
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  'GREEN VELLI -126',
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  null,
  'BANK OF INDIA',
  'BKID0008815',
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
  'a7ebb724-26c5-429e-bf37-2ecc2cb68bfc'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 24, "section": "enrolled", "corrections": [], "data": {"SCH.NO.": 2371, "NAME": "ATHARV", "SURNAME": "BORASI", "FATHER": "GANESH", "MOTHER": "SUMAN", "DOB": null, "ADM NO.": "26-59-4th", "ADHAR CARD": "A-264762472440", "SSSMID": 310173716, "FAMILY ID": 47944336, "BANK AC. NO.": "BANK OF INDIA", "IFSC CODE": "BKID0008815", "RELIGION": "HINDU", "CASTE": "PASI", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "MOB. NO.": "M-9009876004, 9340272330", "ADDRESS": "GREEN VELLI -126"}}'::jsonb
);

-- CLASS 4th row 26 [rte]: ANUSHREE R T E AKODIYA
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
  'ANUSHREE R T E',
  'AKODIYA',
  '2016-02-26'::date,
  'A-952127883136',
  '302177039',
  '20006265',
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
  '2026-27',
  '4',
  null,
  '21-64-N',
  '1971',
  null,
  null,
  null,
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
  'father',
  'MAHENDRA',
  null,
  'M-7580868952',
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
  'CHAMUNDAPURI - 30',
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
  null,
  'BOI892010410002466',
  'BKID0008920',
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
  'cf5808fc-65f7-47fe-b2d1-86465987f05c'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 26, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1971, "NAME": "ANUSHREE R T E", "SURNAME": "AKODIYA", "FATHER": "MAHENDRA", "MOTHER": "MANISHA", "DOB": "26.02.2016", "ADM NO.": "21-64-N", "ADHAR CARD": "A-952127883136", "SSSMID": 302177039, "FAMILY ID": 20006265, "BANK AC. NO.": "BOI892010410002466", "IFSC CODE": "BKID0008920", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": null, "MOB. NO.": "M-7580868952", "ADDRESS": "CHAMUNDAPURI - 30"}}'::jsonb
);

-- CLASS 4th row 27 [rte]: BHAGYASHREE RTE CHOUHAN
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
  'BHAGYASHREE RTE',
  'CHOUHAN',
  '2016-08-16'::date,
  'A-421641460820',
  '312291438',
  '20458855',
  'HINDU',
  'HARIJAN',
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
  '2026-27',
  '4',
  null,
  '21-59-N',
  '1965',
  null,
  null,
  null,
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
  'father',
  'ASHOK',
  null,
  'M-9753434635',
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
  'MAHAKL COLONY 117/5',
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
  null,
  'SBI34685152452',
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
  'c0717e9e-d1c8-4774-9400-15aa6e9053fa'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 27, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1965, "NAME": "BHAGYASHREE RTE", "SURNAME": "CHOUHAN", "FATHER": "ASHOK", "MOTHER": "POOJA", "DOB": "16.08.2016", "ADM NO.": "21-59-N", "ADHAR CARD": "A-421641460820", "SSSMID": 312291438, "FAMILY ID": 20458855, "BANK AC. NO.": "SBI34685152452", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "HARIJAN", "CATE.": "SC", "OCCUPATION": null, "MOB. NO.": "M-9753434635", "ADDRESS": "MAHAKL COLONY 117/5"}}'::jsonb
);

-- CLASS 4th row 28 [rte]: JAYESH R T E MALVIYA
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  'JAYESH R T E',
  'MALVIYA',
  '2017-03-23'::date,
  'A-412147348344',
  '312136581',
  '47482982',
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  '2026-27',
  '4',
  null,
  '21-62-N',
  '1969',
  null,
  null,
  null,
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  'father',
  'GOPAL',
  'BHMS/JOB',
  'M-9131483706',
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  'mother',
  'SANDHIYA',
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  'ARJUN NAGAR - 41',
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  null,
  'SBI53013023907',
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
  '257e63d8-944b-43b1-9dce-998e3413450a'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 28, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1969, "NAME": "JAYESH R T E", "SURNAME": "MALVIYA", "FATHER": "GOPAL", "MOTHER": "SANDHIYA", "DOB": "23.03.2017", "ADM NO.": "21-62-N", "ADHAR CARD": "A-412147348344", "SSSMID": 312136581, "FAMILY ID": 47482982, "BANK AC. NO.": "SBI53013023907", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "BHMS/JOB", "MOB. NO.": "M-9131483706", "ADDRESS": "ARJUN NAGAR - 41"}}'::jsonb
);

-- CLASS 4th row 29 [rte]: NENIKA R T E RAIKWAR
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
  'NENIKA R T E',
  'RAIKWAR',
  '2016-11-01'::date,
  'A-248522149847',
  '310253451',
  '43942688',
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
  '2026-27',
  '4',
  null,
  '21-65-N',
  '1973',
  null,
  null,
  null,
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
  'father',
  'BHARAT',
  null,
  'M-8319332383',
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
  'CHAMUNDAPURI - 425',
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
  null,
  'SBI36736943034',
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
  'b76ae909-840d-4025-9fc8-98682dfb2050'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 29, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1973, "NAME": "NENIKA R T E", "SURNAME": "RAIKWAR", "FATHER": "BHARAT", "MOTHER": "POOJA", "DOB": "01.11.2016", "ADM NO.": "21-65-N", "ADHAR CARD": "A-248522149847", "SSSMID": 310253451, "FAMILY ID": 43942688, "BANK AC. NO.": "SBI36736943034", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": null, "CATE.": null, "OCCUPATION": null, "MOB. NO.": "M-8319332383", "ADDRESS": "CHAMUNDAPURI - 425"}}'::jsonb
);

-- CLASS 4th row 30 [rte]: PARINITA R T E MALVIYA
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
  'PARINITA R T E',
  'MALVIYA',
  '2016-10-01'::date,
  'A-638310404491',
  '310553966',
  '34492680',
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
  '2026-27',
  '4',
  null,
  '21-61-N',
  '1966',
  null,
  null,
  null,
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
  'father',
  'SUBHASH',
  'PVT. JOB',
  'M-9827055210',
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
  'JAI SHIV COLONY',
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
  null,
  'SBI36167208877',
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
  '85a9e3c6-6f69-4e61-a1d5-d43b35f703ae'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 30, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1966, "NAME": "PARINITA R T E", "SURNAME": "MALVIYA", "FATHER": "SUBHASH", "MOTHER": "KAVITA", "DOB": "01.10.2016", "ADM NO.": "21-61-N", "ADHAR CARD": "A-638310404491", "SSSMID": 310553966, "FAMILY ID": 34492680, "BANK AC. NO.": "SBI36167208877", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9827055210", "ADDRESS": "JAI SHIV COLONY"}}'::jsonb
);

-- CLASS 4th row 31 [rte]: PRATIK KETHWAS
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  'PRATIK',
  'KETHWAS',
  '2016-04-20'::date,
  'A-666255774952',
  '307974951',
  '20461380',
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  '2026-27',
  '4',
  null,
  '21-57-N',
  '1963',
  null,
  null,
  null,
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  'father',
  'KAPIL',
  'DRIVER',
  'M-8962321518',
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  'mother',
  'SHARDA',
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  'MAHAKAL COLONY',
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  null,
  'SBI33211263570',
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
  '1f94c777-1af1-48e0-84f2-7db4f04b0539'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 31, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1963, "NAME": "PRATIK", "SURNAME": "KETHWAS", "FATHER": "KAPIL", "MOTHER": "SHARDA", "DOB": "20.04.2016", "ADM NO.": "21-57-N", "ADHAR CARD": "A-666255774952", "SSSMID": 307974951, "FAMILY ID": 20461380, "BANK AC. NO.": "SBI33211263570", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "PASI", "CATE.": "SC", "OCCUPATION": "DRIVER", "MOB. NO.": "M-8962321518", "ADDRESS": "MAHAKAL COLONY"}}'::jsonb
);

-- CLASS 4th row 32 [rte]: RISHABH KUMAR R T E MALVIYA
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
  'RISHABH KUMAR R T E',
  'MALVIYA',
  '2016-09-06'::date,
  'A-541311356942',
  '308424654',
  '43994285',
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
  '2026-27',
  '4',
  null,
  '21-66-N',
  '1974',
  null,
  null,
  null,
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
  'father',
  'DEEPAK',
  null,
  'M-8109184850',
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
  'MAHAKAL COLONY - 205',
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
  null,
  'AX911010010544135',
  'UTIB0000456',
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
  '5a85bfec-e321-4c47-b04e-cec5a130ccba'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 32, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1974, "NAME": "RISHABH KUMAR R T E", "SURNAME": "MALVIYA", "FATHER": "DEEPAK", "MOTHER": "SEEMA", "DOB": "06.09.2016", "ADM NO.": "21-66-N", "ADHAR CARD": "A-541311356942", "SSSMID": 308424654, "FAMILY ID": 43994285, "BANK AC. NO.": "AX911010010544135", "IFSC CODE": "UTIB0000456", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": null, "MOB. NO.": "M-8109184850", "ADDRESS": "MAHAKAL COLONY - 205"}}'::jsonb
);

-- CLASS 4th row 33 [rte]: RUDRA R T E AKODIYA
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  'RUDRA R T E',
  'AKODIYA',
  '2016-12-03'::date,
  'A-892705027670',
  '306058216',
  '47479160',
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  '2026-27',
  '4',
  null,
  '21-63-N',
  '1970',
  null,
  null,
  null,
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  'father',
  'BHARAT',
  null,
  'M-9009634307',
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  'mother',
  'SANGITA',
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  'CHAMUNDAPURI - 30',
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  null,
  'BOI892010110004163',
  'BKID0008920',
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
  'e30fa751-489b-4de8-976e-e7feaa3d6a96'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 33, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1970, "NAME": "RUDRA R T E", "SURNAME": "AKODIYA", "FATHER": "BHARAT", "MOTHER": "SANGITA", "DOB": "03.12.2016", "ADM NO.": "21-63-N", "ADHAR CARD": "A-892705027670", "SSSMID": 306058216, "FAMILY ID": 47479160, "BANK AC. NO.": "BOI892010110004163", "IFSC CODE": "BKID0008920", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": null, "MOB. NO.": "M-9009634307", "ADDRESS": "CHAMUNDAPURI - 30"}}'::jsonb
);

-- CLASS 4th row 34 [rte]: RISHABHA R T E VERMA
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  'RISHABHA R T E',
  'VERMA',
  '2017-03-17'::date,
  'A-786503667982',
  '311417306',
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  '2026-27',
  '4',
  null,
  '21-60-N',
  '1968',
  null,
  null,
  null,
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  'father',
  'VINOD',
  'PVT. JOB',
  'M-9111052221',
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  'mother',
  'SANDHIYA',
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  'CHAMUNDA PALACE - 14',
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  null,
  'BOI890010110010062',
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
  'd6944e2e-d99a-4d91-a6b8-18819c003b1c'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 34, "section": "rte", "corrections": [], "data": {"SCH.NO.": 1968, "NAME": "RISHABHA R T E", "SURNAME": "VERMA", "FATHER": "VINOD", "MOTHER": "SANDHIYA", "DOB": "17.03.2017", "ADM NO.": "21-60-N", "ADHAR CARD": "A-786503667982", "SSSMID": 311417306, "FAMILY ID": 36826953, "BANK AC. NO.": "BOI890010110010062", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "MOB. NO.": "M-9111052221", "ADDRESS": "CHAMUNDA PALACE - 14"}}'::jsonb
);

-- CLASS 4th row 36 [left]: DHAIRYA VERMA
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  'DHAIRYA',
  'VERMA',
  '2016-05-10'::date,
  'A-242039239407',
  '307170794',
  '22740596',
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  '2026-27',
  '4',
  null,
  '21-38-L',
  '2138',
  null,
  null,
  null,
  null,
  null,
  null,
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  'father',
  'NITIN',
  'DRIVER',
  'M-8889072723',
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  'mother',
  'HEMLATA',
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  'CHAMUNDA PALACE - 11',
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  null,
  'BOB68058100002046',
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
  '6142acc0-ba8a-4414-9b2e-51d897d388ae'::uuid,
  '2026-27',
  '4',
  '1-5.xlsx',
  'CLASS 4th',
  '{"sheet_name": "CLASS 4th", "row_number": 36, "section": "left", "corrections": [], "data": {"SCH.NO.": 2138, "NAME": "DHAIRYA", "SURNAME": "VERMA", "FATHER": "NITIN", "MOTHER": "HEMLATA", "DOB": "10.05.2016", "ADM NO.": "21-38-L", "ADHAR CARD": "A-242039239407", "SSSMID": 307170794, "FAMILY ID": 22740596, "BANK AC. NO.": "BOB68058100002046", "IFSC CODE": "BARB0VJDEWA", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "OCCUPATION": "DRIVER", "MOB. NO.": "M-8889072723", "ADDRESS": "CHAMUNDA PALACE - 11"}}'::jsonb
);

-- CLASS 5th row 3 [enrolled]: AARADHYA-23 PARIHAR
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  'AARADHYA-23',
  'PARIHAR',
  '2016-09-12'::date,
  'A-595449920604',
  '310471998',
  '24847100',
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2154',
  null,
  null,
  null,
  null,
  'BUS',
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  'father',
  'VINOD',
  null,
  'M-7869776959',
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  'mother',
  'SADHNA',
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  'NIPANIYA',
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  null,
  'SBI40287384456',
  'SBIN0030198',
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
  '1908b58e-d5d6-407d-bc1a-39bbb76bcec8'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "AARADHYA-23", "SURNAME": "PARIHAR", "FATHER": "VINOD", "MOTHER": "SADHNA", "DOB": "12.09.2016", "SCH. NO.": 2154, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-7869776959", "ADHAR CARD": "A-595449920604", "SSSMID": 310471998, "FAMILY ID": 24847100, "BANK AC. NO.": "SBI40287384456", "IFSC CODE": "SBIN0030198", "ADDRESS": "NIPANIYA"}}'::jsonb
);

-- CLASS 5th row 4 [enrolled]: ANMOL GOSWAMI
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
  'ANMOL',
  'GOSWAMI',
  '2016-02-24'::date,
  'A-935925179028',
  '316642731',
  '48036171',
  'HINDU',
  'GOSAI',
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2045',
  null,
  null,
  null,
  null,
  '38',
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
  'father',
  'PALASH',
  null,
  'M-8349999228',
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
  'BHOSLE COLONY',
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
  null,
  'IPOS027810081696',
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
  '6c64f7dc-7874-4b85-97da-e2f331e7cee0'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"MODE": 38, "NAME": "ANMOL", "SURNAME": "GOSWAMI", "FATHER": "PALASH", "MOTHER": "ARUNA", "DOB": "24.02.2016", "SCH. NO.": 2045, "RELIGION": "HINDU", "CASTE": "GOSAI", "CATE.": "OBC", "MOB. NO.": "M-8349999228", "ADHAR CARD": "A-935925179028", "SSSMID": 316642731, "FAMILY ID": 48036171, "BANK AC. NO.": "IPOS027810081696", "IFSC CODE": "IPOS0000001", "ADDRESS": "BHOSLE COLONY"}}'::jsonb
);

-- CLASS 5th row 5 [enrolled]: ANSH GANAWA
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
  'ANSH',
  'GANAWA',
  '2016-09-19'::date,
  'A-411068311960',
  '311968062',
  '38360716',
  'HINDU',
  'BHIL',
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2048',
  null,
  null,
  null,
  null,
  'Local',
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
  'father',
  'MANISH',
  null,
  'M-9754358858',
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
  'RAM RAHIM NAGAR - 35,',
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
  null,
  'SBI63007130717',
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
  '85a6b3c2-1d1e-41cd-8dc5-845de0819066'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "ANSH", "SURNAME": "GANAWA", "FATHER": "MANISH", "MOTHER": "MANISHA", "DOB": "19.09.2016", "SCH. NO.": 2048, "RELIGION": "HINDU", "CASTE": "BHIL", "CATE.": "ST", "MOB. NO.": "M-9754358858", "ADHAR CARD": "A-411068311960", "SSSMID": 311968062, "FAMILY ID": 38360716, "BANK AC. NO.": "SBI63007130717", "IFSC CODE": "SBIN0030130", "ADDRESS": "RAM RAHIM NAGAR - 35,"}}'::jsonb
);

-- CLASS 5th row 6 [enrolled]: DAKSH PATEL
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
  'DAKSH',
  'PATEL',
  '2015-07-07'::date,
  'A-434370035054',
  '305414128',
  '45849673',
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2050',
  null,
  null,
  null,
  null,
  'BUS',
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
  'father',
  'PANKAJ',
  null,
  'M-9907961906',
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
  'NAWDA',
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
  null,
  'HDFC50100188040335',
  'HDFC0000887',
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
  'd11755d4-1d57-4805-9390-e18dd8e6b75a'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "DAKSH", "SURNAME": "PATEL", "FATHER": "PANKAJ", "MOTHER": "POOJA", "DOB": "07.07.2015", "SCH. NO.": 2050, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": "M-9907961906", "ADHAR CARD": "A-434370035054", "SSSMID": 305414128, "FAMILY ID": 45849673, "BANK AC. NO.": "HDFC50100188040335", "IFSC CODE": "HDFC0000887", "ADDRESS": "NAWDA"}}'::jsonb
);

-- CLASS 5th row 7 [enrolled]: DIVYA PARMAR
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
  'DIVYA',
  'PARMAR',
  '2015-12-19'::date,
  'A-893027980001',
  '308748051',
  '38675021',
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1999',
  null,
  null,
  null,
  null,
  'Local',
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
  'father',
  'PRADEEP SINGH',
  null,
  'M-8435906229',
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
  'ARJUN NAGAR,C/7',
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
  null,
  'SBI33750031961',
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
  '652d4560-a02b-4d57-9450-b6f5503f02e7'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "DIVYA", "SURNAME": "PARMAR", "FATHER": "PRADEEP SINGH", "MOTHER": "SEEMA", "DOB": "19.12.2015", "SCH. NO.": 1999, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-8435906229", "ADHAR CARD": "A-893027980001", "SSSMID": 308748051, "FAMILY ID": 38675021, "BANK AC. NO.": "SBI33750031961", "IFSC CODE": "SBIN0030130", "ADDRESS": "ARJUN NAGAR,C/7"}}'::jsonb
);

-- CLASS 5th row 8 [enrolled]: HANSHIKA AMBULKAR
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
  'HANSHIKA',
  'AMBULKAR',
  '2016-11-20'::date,
  'A-678896155620',
  '312175423',
  '43922917',
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2052',
  null,
  null,
  null,
  null,
  'Local',
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
  'father',
  'SANJAY',
  null,
  'M-9111147471',
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
  'CHAMUNDAPURI,13',
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
  null,
  'SBI20062333993',
  'SBIN0012291',
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
  'c585630e-797f-47a6-b5d6-cfbb32de700e'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "HANSHIKA", "SURNAME": "AMBULKAR", "FATHER": "SANJAY", "MOTHER": "ARUNA", "DOB": "20.11.2016", "SCH. NO.": 2052, "RELIGION": "HINDU", "CASTE": "MEHRA", "CATE.": "SC", "MOB. NO.": "M-9111147471", "ADHAR CARD": "A-678896155620", "SSSMID": 312175423, "FAMILY ID": 43922917, "BANK AC. NO.": "SBI20062333993", "IFSC CODE": "SBIN0012291", "ADDRESS": "CHAMUNDAPURI,13"}}'::jsonb
);

-- CLASS 5th row 9 [enrolled]: HARDIK CARPENTER
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
  'HARDIK',
  'CARPENTER',
  '2017-02-09'::date,
  'A-454351499974',
  '316385768',
  '40374706',
  'HINDU',
  'CARPENTER',
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2000',
  null,
  null,
  null,
  null,
  'BUS',
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
  'father',
  'SANJAY',
  null,
  'M-9926719335',
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
  'BAJRANGBALI NAGAR 29',
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
  null,
  'SBI20289759729',
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
  'e3408e9d-067f-4f9a-92f0-749f128dcf4c'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "HARDIK", "SURNAME": "CARPENTER", "FATHER": "SANJAY", "MOTHER": "SADHANA", "DOB": "09.02.2017", "SCH. NO.": 2000, "RELIGION": "HINDU", "CASTE": "CARPENTER", "CATE.": "OBC", "MOB. NO.": "M-9926719335", "ADHAR CARD": "A-454351499974", "SSSMID": 316385768, "FAMILY ID": 40374706, "BANK AC. NO.": "SBI20289759729", "IFSC CODE": "SBIN0030130", "ADDRESS": "BAJRANGBALI NAGAR 29"}}'::jsonb
);

-- CLASS 5th row 10 [enrolled]: KARTIK-23 DEVDA
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  'KARTIK-23',
  'DEVDA',
  '2015-11-28'::date,
  'A-657040108383',
  '318983832',
  '34866655',
  'HINDU',
  'BALAI',
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2155',
  null,
  null,
  null,
  null,
  'BUS',
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  'father',
  'DEEPAK',
  null,
  'M-7049320768',
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  'mother',
  'VIDHYA',
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  'NIPANIYA',
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  null,
  'IOBA241401000005120',
  'IOBA0002414',
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
  '6f27773d-7d87-4846-b1f7-88acd496b7b6'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "KARTIK-23", "SURNAME": "DEVDA", "FATHER": "DEEPAK", "MOTHER": "VIDHYA", "DOB": "28.11.2015", "SCH. NO.": 2155, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "OBC", "MOB. NO.": "M-7049320768", "ADHAR CARD": "A-657040108383", "SSSMID": 318983832, "FAMILY ID": 34866655, "BANK AC. NO.": "IOBA241401000005120", "IFSC CODE": "IOBA0002414", "ADDRESS": "NIPANIYA"}}'::jsonb
);

-- CLASS 5th row 11 [enrolled]: LAKSHYA - 22 BHASKAR
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  'LAKSHYA - 22',
  'BHASKAR',
  '2016-05-06'::date,
  'A-864407179959',
  '307992723',
  '37834020',
  'HINDU',
  'BALAI',
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2070',
  null,
  null,
  null,
  null,
  'Local',
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  'father',
  'SUNIL',
  null,
  'M-9977102325',
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  'mother',
  'GEETA',
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  'CHAMUNDAPIURI',
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  null,
  'IDIB6423227156',
  'IDIB000D043',
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
  '807e3000-1da9-47b2-8991-a878c86e4790'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "LAKSHYA - 22", "SURNAME": "BHASKAR", "FATHER": "SUNIL", "MOTHER": "GEETA", "DOB": "06.05.2016", "SCH. NO.": 2070, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "OBC", "MOB. NO.": "M-9977102325", "ADHAR CARD": "A-864407179959", "SSSMID": 307992723, "FAMILY ID": 37834020, "BANK AC. NO.": "IDIB6423227156", "IFSC CODE": "IDIB000D043", "ADDRESS": "CHAMUNDAPIURI"}}'::jsonb
);

-- CLASS 5th row 12 [enrolled]: MAHAK MANDLOI
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  'MAHAK',
  'MANDLOI',
  '2015-11-05'::date,
  'A-817777100991',
  '300371229',
  '20621677',
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2058',
  null,
  null,
  null,
  null,
  'Local',
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  'father',
  'HARPAL',
  null,
  'M-9752680331',
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  'mother',
  'SARITA',
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  'ARJUN NAGAR 21',
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  null,
  'UN373502010009030',
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
  'b4ac7f26-ff75-4372-9cf0-27cdcf22645a'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "MAHAK", "SURNAME": "MANDLOI", "FATHER": "HARPAL", "MOTHER": "SARITA", "DOB": "05.11.2015", "SCH. NO.": 2058, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": "M-9752680331", "ADHAR CARD": "A-817777100991", "SSSMID": 300371229, "FAMILY ID": 20621677, "BANK AC. NO.": "UN373502010009030", "IFSC CODE": "UBIN0537357", "ADDRESS": "ARJUN NAGAR 21"}}'::jsonb
);

-- CLASS 5th row 13 [enrolled]: PRAPTI - 22 THAKUR
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  'PRAPTI - 22',
  'THAKUR',
  '2014-11-19'::date,
  'A-648610881748',
  '302583806',
  '38458090',
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2071',
  null,
  null,
  null,
  null,
  'Local',
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  'father',
  'PRADEEP',
  null,
  'M-9713545454',
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  'mother',
  'RENUKA',
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  'CHAMUNDAPURI',
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  null,
  'BKID017610110000726',
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
  '1bc8ef22-21b4-49c2-93a7-0ef0fc4153d5'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "PRAPTI - 22", "SURNAME": "THAKUR", "FATHER": "PRADEEP", "MOTHER": "RENUKA", "DOB": "19.11.2014", "SCH. NO.": 2071, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-9713545454", "ADHAR CARD": "A-648610881748", "SSSMID": 302583806, "FAMILY ID": 38458090, "BANK AC. NO.": "BKID017610110000726", "IFSC CODE": "BKID0NAMRGB", "ADDRESS": "CHAMUNDAPURI"}}'::jsonb
);

-- CLASS 5th row 14 [enrolled]: PRATIMA CHALTHIYA
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  'PRATIMA',
  'CHALTHIYA',
  '2015-11-30'::date,
  'A-275693107205',
  '198373553',
  '29764640',
  'HINDU',
  'BHARIYA',
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2062',
  null,
  null,
  null,
  null,
  'Local',
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  'father',
  'PHOOL SINGH',
  null,
  'M-9589584530',
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  'mother',
  'SANTOSH',
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  'RADHAGANJ,2/6',
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  null,
  'SBI30023680611',
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
  '7f7da2e9-3733-49a3-b66e-addf7039a4d0'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "PRATIMA", "SURNAME": "CHALTHIYA", "FATHER": "PHOOL SINGH", "MOTHER": "SANTOSH", "DOB": "30.11.2015", "SCH. NO.": 2062, "RELIGION": "HINDU", "CASTE": "BHARIYA", "CATE.": "ST", "MOB. NO.": "M-9589584530", "ADHAR CARD": "A-275693107205", "SSSMID": 198373553, "FAMILY ID": 29764640, "BANK AC. NO.": "SBI30023680611", "IFSC CODE": "SBIN0030007", "ADDRESS": "RADHAGANJ,2/6"}}'::jsonb
);

-- CLASS 5th row 15 [enrolled]: RIDHAM KUMAWAT
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
  'RIDHAM',
  'KUMAWAT',
  '2015-03-09'::date,
  'A-660748875393',
  '308794013',
  '43088409',
  'HINDU',
  'KUMAWAT',
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2063',
  null,
  null,
  null,
  null,
  'Local',
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
  'father',
  'SUBHASH',
  null,
  'M-7869467920',
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
  'MADHUBAN COLONY',
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
  null,
  'SBI34486446051',
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
  'd02d0f74-a095-4d07-8401-87ab0d7fad30'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "RIDHAM", "SURNAME": "KUMAWAT", "FATHER": "SUBHASH", "MOTHER": "POOJA", "DOB": "2015-03-09 00:00:00", "SCH. NO.": 2063, "RELIGION": "HINDU", "CASTE": "KUMAWAT", "CATE.": "OBC", "MOB. NO.": "M-7869467920", "ADHAR CARD": "A-660748875393", "SSSMID": 308794013, "FAMILY ID": 43088409, "BANK AC. NO.": "SBI34486446051", "IFSC CODE": "SBIN0030130", "ADDRESS": "MADHUBAN COLONY"}}'::jsonb
);

-- CLASS 5th row 16 [enrolled]: SAMAR PATEL
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
  'SAMAR',
  'PATEL',
  '2016-10-11'::date,
  'A-5259916585275',
  '315192835',
  '47243552',
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1996',
  null,
  null,
  null,
  null,
  'BUS',
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
  'father',
  'DINESH',
  null,
  'M-9685034297',
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
  'FATANPUR',
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
  null,
  'SBI88258652404',
  'SBIN0030320',
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
  'cd2b9e0b-6e8b-4956-8f20-63628d22a00e'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "SAMAR", "SURNAME": "PATEL", "FATHER": "DINESH", "MOTHER": "DEEPIKA", "DOB": "11.10.2016", "SCH. NO.": 1996, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": "M-9685034297", "ADHAR CARD": "A-5259916585275", "SSSMID": 315192835, "FAMILY ID": 47243552, "BANK AC. NO.": "SBI88258652404", "IFSC CODE": "SBIN0030320", "ADDRESS": "FATANPUR"}}'::jsonb
);

-- CLASS 5th row 17 [enrolled]: SEJAL SONI
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
  'SEJAL',
  'SONI',
  '2016-05-01'::date,
  'A-380500377873',
  '310702355',
  '38444713',
  'HINDU',
  'SUNAR',
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2044',
  null,
  null,
  null,
  null,
  'Local',
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
  'father',
  'SUBHASH',
  null,
  'M-8878248802',
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
  'RADHAGANJ,36',
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
  null,
  'SBI37989684027',
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
  'f5287ef8-55cc-4a89-857e-15dcc39baa1f'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SEJAL", "SURNAME": "SONI", "FATHER": "SUBHASH", "MOTHER": "DEEPIKA", "DOB": "2016-05-01 00:00:00", "SCH. NO.": 2044, "RELIGION": "HINDU", "CASTE": "SUNAR", "CATE.": "OBC", "MOB. NO.": "M-8878248802", "ADHAR CARD": "A-380500377873", "SSSMID": 310702355, "FAMILY ID": 38444713, "BANK AC. NO.": "SBI37989684027", "IFSC CODE": "SBIN0003864", "ADDRESS": "RADHAGANJ,36"}}'::jsonb
);

-- CLASS 5th row 18 [enrolled]: SHEKHAR SRIVASTAV
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
  'SHEKHAR',
  'SRIVASTAV',
  '2015-05-17'::date,
  'A-621734653930',
  '304447360',
  '45534732',
  'HINDU',
  'PANSARI',
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2064',
  null,
  null,
  null,
  null,
  'Local',
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
  'father',
  'PINTU',
  null,
  'M-7067628343',
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
  'BNP COLONY - 1084',
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
  null,
  'SBI32808912300',
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
  'ac583b07-31e3-41a3-9e38-761e06ff2585'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SHEKHAR", "SURNAME": "SRIVASTAV", "FATHER": "PINTU", "MOTHER": "POOJA", "DOB": "2015-05-17 00:00:00", "SCH. NO.": 2064, "RELIGION": "HINDU", "CASTE": "PANSARI", "CATE.": "OBC", "MOB. NO.": "M-7067628343", "ADHAR CARD": "A-621734653930", "SSSMID": 304447360, "FAMILY ID": 45534732, "BANK AC. NO.": "SBI32808912300", "IFSC CODE": "SBIN0030130", "ADDRESS": "BNP COLONY - 1084"}}'::jsonb
);

-- CLASS 5th row 19 [enrolled]: SIDDHARTH-23 VISHWAKARMA
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
  'SIDDHARTH-23',
  'VISHWAKARMA',
  '2016-12-20'::date,
  'A-730000023364',
  '318561415',
  '20677124',
  'HINDU',
  'VISHWAKARMA',
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2104',
  null,
  null,
  null,
  null,
  'BUS',
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
  'father',
  'SANTOSH',
  null,
  'M-9669476788',
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
  'AWAS NAGAR- C 4/105',
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
  null,
  'SBI53010726628',
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
  '137a43ac-3a6a-4767-a749-857653820260'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "SIDDHARTH-23", "SURNAME": "VISHWAKARMA", "FATHER": "SANTOSH", "MOTHER": "ANITA", "DOB": "20-12-2016", "SCH. NO.": 2104, "RELIGION": "HINDU", "CASTE": "VISHWAKARMA", "CATE.": "OBC", "MOB. NO.": "M-9669476788", "ADHAR CARD": "A-730000023364", "SSSMID": 318561415, "FAMILY ID": 20677124, "BANK AC. NO.": "SBI53010726628", "IFSC CODE": "SBIN0030130", "ADDRESS": "AWAS NAGAR- C 4/105"}}'::jsonb
);

-- CLASS 5th row 20 [enrolled]: SWARAGANI PIPLODIYA
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
  'SWARAGANI',
  'PIPLODIYA',
  '2016-05-03'::date,
  'A-673936397584',
  '309030922',
  '45646309',
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2066',
  null,
  null,
  null,
  null,
  'Local',
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
  'father',
  'DILIP',
  null,
  'M-9926875262',
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
  'DROPATI NAGAR, 32',
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
  null,
  'BOI890010110006457',
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
  '59ab5f08-57d9-4c30-9a39-1466e22fa155'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 20, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SWARAGANI", "SURNAME": "PIPLODIYA", "FATHER": "DILIP", "MOTHER": "REENA", "DOB": "03.05.2016", "SCH. NO.": 2066, "RELIGION": "HINDU", "CASTE": "DHOBI", "CATE.": "OBC", "MOB. NO.": "M-9926875262", "ADHAR CARD": "A-673936397584", "SSSMID": 309030922, "FAMILY ID": 45646309, "BANK AC. NO.": "BOI890010110006457", "IFSC CODE": "BKID0008900", "ADDRESS": "DROPATI NAGAR, 32"}}'::jsonb
);

-- CLASS 5th row 21 [enrolled]: TRAPTI KUNWAR PAWAR
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  'TRAPTI KUNWAR',
  'PAWAR',
  '2016-02-01'::date,
  'A-56224623874',
  '315901610',
  '38444980',
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2068',
  null,
  null,
  null,
  null,
  'Local',
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  'father',
  'LOKENDRA',
  null,
  'M-9301522108',
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  'mother',
  'BABITA',
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  'CHAMUNDA PALACE,18/3',
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  null,
  'SBI34739503638',
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
  '2374677f-fd5a-4fdb-a125-87741376c3bc'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 21, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "TRAPTI KUNWAR", "SURNAME": "PAWAR", "FATHER": "LOKENDRA", "MOTHER": "BABITA", "DOB": "01-02.2016", "SCH. NO.": 2068, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-9301522108", "ADHAR CARD": "A-56224623874", "SSSMID": 315901610, "FAMILY ID": 38444980, "BANK AC. NO.": "SBI34739503638", "IFSC CODE": "SBIN0030130", "ADDRESS": "CHAMUNDA PALACE,18/3"}}'::jsonb
);

-- CLASS 5th row 22 [enrolled]: VANSHIKA - 22 BODANA
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  'VANSHIKA - 22',
  'BODANA',
  '2016-03-29'::date,
  'A-364828201764',
  '308290192',
  '37255878',
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2043',
  null,
  null,
  null,
  null,
  'Local',
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  'father',
  'SATISH',
  null,
  'M-9630992668',
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  'mother',
  'BHURI',
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  'HARIJAN MOHLLA 114',
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  null,
  'IOBA241401000002922',
  'IOBA0002414',
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
  '7ad517d1-84bd-4f1e-b45b-2ce711773a53'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 22, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "VANSHIKA - 22", "SURNAME": "BODANA", "FATHER": "SATISH", "MOTHER": "BHURI", "DOB": "29.03.2016", "SCH. NO.": 2043, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-9630992668", "ADHAR CARD": "A-364828201764", "SSSMID": 308290192, "FAMILY ID": 37255878, "BANK AC. NO.": "IOBA241401000002922", "IFSC CODE": "IOBA0002414", "ADDRESS": "HARIJAN MOHLLA 114"}}'::jsonb
);

-- CLASS 5th row 23 [enrolled]: YUVRAJ PAWAR
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  'YUVRAJ',
  'PAWAR',
  '2015-10-11'::date,
  null,
  '302529442',
  '31223577',
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2072',
  null,
  null,
  null,
  null,
  'Local',
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  'father',
  'SUNIL',
  null,
  'M-7067126236',
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  'mother',
  'BHAVANA',
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  'RADHAGANJ 22 MIG',
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  null,
  'sbi-63050529424',
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
  '0ad87a9b-fe97-4c83-b026-79e1d38faa4a'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 23, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "YUVRAJ", "SURNAME": "PAWAR", "FATHER": "SUNIL", "MOTHER": "BHAVANA", "DOB": "11.10.2015", "SCH. NO.": 2072, "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": "M-7067126236", "ADHAR CARD": null, "SSSMID": 302529442, "FAMILY ID": 31223577, "BANK AC. NO.": "sbi-63050529424", "IFSC CODE": "sbin0030130", "ADDRESS": "RADHAGANJ 22 MIG"}}'::jsonb
);

-- CLASS 5th row 24 [enrolled]: SHREEJA-24 YADAV
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
  'SHREEJA-24',
  'YADAV',
  '2017-01-03'::date,
  'A-60742657521',
  '314084484',
  '48787950',
  'HINDU',
  'YADAV',
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2185',
  null,
  null,
  null,
  null,
  'Local',
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
  'father',
  'JITENDRA',
  null,
  '982722126',
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
  '121 LAXMI BAI MARG',
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
  null,
  'BKID890010100027779',
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
  'a93aeb0d-23c9-4b61-bfa8-a5deb0494d7c'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 24, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "SHREEJA-24", "SURNAME": "YADAV", "FATHER": "JITENDRA", "MOTHER": "POOJA", "DOB": "03.01.2017", "SCH. NO.": 2185, "RELIGION": "HINDU", "CASTE": "YADAV", "CATE.": "OBC", "MOB. NO.": 982722126, "ADHAR CARD": "A-60742657521", "SSSMID": 314084484, "FAMILY ID": 48787950, "BANK AC. NO.": "BKID890010100027779", "IFSC CODE": "BKID0008900", "ADDRESS": "121 LAXMI BAI MARG"}}'::jsonb
);

-- CLASS 5th row 25 [enrolled]: DIVYANKA-24 no
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
  'DIVYANKA-24',
  'no',
  '2015-12-16'::date,
  'A-608318187606',
  '300739477',
  '45188658',
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2212',
  null,
  null,
  null,
  null,
  'BUS',
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
  'father',
  'ARJUN',
  null,
  '9424807164',
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
  '32 FATANPUR',
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
  null,
  'SBI20124583390',
  'SBIN0005670',
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
  '6ba246d3-2d88-49ae-be90-107a036573ba'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 25, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "DIVYANKA-24", "SURNAME": "no", "FATHER": "ARJUN", "MOTHER": "NARMADA", "DOB": "2015-12-16 00:00:00", "SCH. NO.": 2212, "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": 9424807164, "ADHAR CARD": "A-608318187606", "SSSMID": 300739477, "FAMILY ID": 45188658, "BANK AC. NO.": "SBI20124583390", "IFSC CODE": "SBIN0005670", "ADDRESS": "32 FATANPUR"}}'::jsonb
);

-- CLASS 5th row 26 [enrolled]: VANSHIKA - 24 no
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
  'VANSHIKA - 24',
  'no',
  '2015-11-18'::date,
  'A-254245341105',
  '300739479',
  '45188663',
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2213',
  null,
  null,
  null,
  null,
  'BUS',
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
  'father',
  'SUNIL',
  null,
  '9424807164',
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
  '32 FATANPUR',
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
  null,
  'BKID892618210007442',
  'BKID0008926',
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
  'ba02708e-31da-4faa-b687-7a42ff312b70'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 26, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "VANSHIKA - 24", "SURNAME": "no", "FATHER": "SUNIL", "MOTHER": "RANI", "DOB": "2015-11-18 00:00:00", "SCH. NO.": 2213, "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": 9424807164, "ADHAR CARD": "A-254245341105", "SSSMID": 300739479, "FAMILY ID": 45188663, "BANK AC. NO.": "BKID892618210007442", "IFSC CODE": "BKID0008926", "ADDRESS": "32 FATANPUR"}}'::jsonb
);

-- CLASS 5th row 27 [enrolled]: PRIYA-24 KHICHI
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  'PRIYA-24',
  'KHICHI',
  '2016-08-08'::date,
  'A-32605776844',
  '309216023',
  '36889208',
  'HINDU',
  'KATIK',
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2216',
  null,
  null,
  null,
  null,
  'Local',
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  'father',
  'RAVINDRA',
  null,
  '7994233584, 9617085221',
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  'mother',
  'PREETI',
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  '7/3 BHAWANI SAGAR',
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  null,
  'BOI-890010510000541',
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
  'e0a889c1-6b17-42a4-888a-1d32c3031cc4'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 27, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "PRIYA-24", "SURNAME": "KHICHI", "FATHER": "RAVINDRA", "MOTHER": "PREETI", "DOB": "2016-08-08 00:00:00", "SCH. NO.": 2216, "RELIGION": "HINDU", "CASTE": "KATIK", "CATE.": "SC", "MOB. NO.": "7994233584, 9617085221", "ADHAR CARD": "A-32605776844", "SSSMID": 309216023, "FAMILY ID": 36889208, "BANK AC. NO.": "BOI-890010510000541", "IFSC CODE": "BKID0008900", "ADDRESS": "7/3 BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 5th row 28 [enrolled]: RADHIKA YADAV
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  'RADHIKA',
  'YADAV',
  '2016-07-13'::date,
  'A-697853504543',
  '311949017',
  '44834086',
  'HINDU',
  'GAWLI',
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2237',
  null,
  null,
  null,
  null,
  'Local',
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  'father',
  'RUPSINGH',
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  'mother',
  'NIRMLA',
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  '88/BHAWANI SAGAR',
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  null,
  'SBI-42956963814',
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
  'b3b2fa00-39b4-48b5-8059-c12eb2728975'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 28, "section": "enrolled", "corrections": [], "data": {"MODE": "Local", "NAME": "RADHIKA", "SURNAME": "YADAV", "FATHER": "RUPSINGH", "MOTHER": "NIRMLA", "DOB": "13.07.2016", "SCH. NO.": 2237, "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": 9926624621, "ADHAR CARD": "A-697853504543", "SSSMID": 311949017, "FAMILY ID": 44834086, "BANK AC. NO.": "SBI-42956963814", "IFSC CODE": "SBIN0003864", "ADDRESS": "88/BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 5th row 29 [enrolled]: RAJ AKSHITA-2025 BAIS
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
  'RAJ AKSHITA-2025',
  'BAIS',
  '2016-03-04'::date,
  'A-459507296287',
  '306929788',
  '46346662',
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2299',
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
  'father',
  'RAVIRAJ SINGH',
  null,
  '9098290090',
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
  'VISHRAM BAG-9-DEWAS',
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
  null,
  'PNB-1505000100268354',
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
  '0a51f105-952f-4146-94ea-8e7abcde3003'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 29, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "RAJ AKSHITA-2025", "SURNAME": "BAIS", "FATHER": "RAVIRAJ SINGH", "MOTHER": "REENA", "DOB": "2016-03-04 00:00:00", "SCH. NO.": 2299, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": 9098290090, "ADHAR CARD": "A-459507296287", "SSSMID": 306929788, "FAMILY ID": 46346662, "BANK AC. NO.": "PNB-1505000100268354", "IFSC CODE": "PUNB0150500", "ADDRESS": "VISHRAM BAG-9-DEWAS"}}'::jsonb
);

-- CLASS 5th row 30 [enrolled]: AADARSH CHOUDHARY
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
  'ae281687-145e-4193-a365-f91d08fda4bd'::uuid,
  'AADARSH',
  'CHOUDHARY',
  '2017-02-17'::date,
  'A- 735693317837',
  '307227864',
  '24306305',
  'HINDU',
  'GARI',
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
  'ae281687-145e-4193-a365-f91d08fda4bd'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2374',
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
  'ae281687-145e-4193-a365-f91d08fda4bd'::uuid,
  'father',
  'RAVI',
  null,
  '7987662432, 934389972',
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
  'ae281687-145e-4193-a365-f91d08fda4bd'::uuid,
  'mother',
  'VIDHYA',
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
  'ae281687-145e-4193-a365-f91d08fda4bd'::uuid,
  'AMBIENCE PUBLIC SCHOOL',
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
  'ae281687-145e-4193-a365-f91d08fda4bd'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 30, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "AADARSH", "SURNAME": "CHOUDHARY", "FATHER": "RAVI", "MOTHER": "VIDHYA", "DOB": "2017-02-17 00:00:00", "SCH. NO.": 2374, "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "MOB. NO.": "7987662432, 934389972", "ADHAR CARD": "A- 735693317837", "SSSMID": 307227864, "FAMILY ID": 24306305, "BANK AC. NO.": null, "IFSC CODE": null, "ADDRESS": "AMBIENCE PUBLIC SCHOOL"}}'::jsonb
);

-- CLASS 5th row 33 [rte]: AARYAN GEHLOT
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
  'AARYAN',
  'GEHLOT',
  '2015-04-20'::date,
  'A-685117096073',
  '301687839',
  '21037000',
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1922',
  null,
  null,
  null,
  null,
  'Local',
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
  'father',
  'ARVIND',
  null,
  '9981147800',
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
  'CHAMUNDAPURI',
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
  null,
  'SBI63009414324',
  'SBIN0030511',
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
  'd014befa-ae71-4a9c-8e2f-c7b2fdae455b'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 33, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "AARYAN", "SURNAME": "GEHLOT", "FATHER": "ARVIND", "MOTHER": "MAYA", "DOB": "20.04.2015", "SCH. NO.": 1922, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 9981147800, "ADHAR CARD": "A-685117096073", "SSSMID": 301687839, "FAMILY ID": 21037000, "BANK AC. NO.": "SBI63009414324", "IFSC CODE": "SBIN0030511", "ADDRESS": "CHAMUNDAPURI"}}'::jsonb
);

-- CLASS 5th row 34 [rte]: ADITYA MALVIYA
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
  'ADITYA',
  'MALVIYA',
  '2015-05-28'::date,
  'A-897701699545',
  '305820905',
  '45994476',
  'HINDU',
  'MALVI',
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1918',
  null,
  null,
  null,
  null,
  'Local',
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
  'father',
  'MANSINGH',
  null,
  '9617515612',
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
  '14/B CHAMUNDAPURI RADHGANJ ROAD',
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
  null,
  'SBI63043030107',
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
  '7b02feab-a7b0-4993-b027-04eb2328f085'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 34, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ADITYA", "SURNAME": "MALVIYA", "FATHER": "MANSINGH", "MOTHER": "PRIYANKA", "DOB": "28.05.2015", "SCH. NO.": 1918, "RELIGION": "HINDU", "CASTE": "MALVI", "CATE.": "SC", "MOB. NO.": 9617515612, "ADHAR CARD": "A-897701699545", "SSSMID": 305820905, "FAMILY ID": 45994476, "BANK AC. NO.": "SBI63043030107", "IFSC CODE": "SBIN0030130", "ADDRESS": "14/B CHAMUNDAPURI RADHGANJ ROAD"}}'::jsonb
);

-- CLASS 5th row 35 [rte]: ANURAG MALVIYA
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
  'ANURAG',
  'MALVIYA',
  '2014-07-30'::date,
  'A-892103160364',
  '302583673',
  '38444407',
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1926',
  null,
  null,
  null,
  null,
  'Local',
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
  'father',
  'DINESH',
  null,
  '7389323734',
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
  'CHAMUNDA PALACE',
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
  null,
  'AND274210100003776',
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
  '59be9b25-3087-4ad3-a3c5-543545bc85df'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 35, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ANURAG", "SURNAME": "MALVIYA", "FATHER": "DINESH", "MOTHER": "ALKA", "DOB": "30.07.2014", "SCH. NO.": 1926, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 7389323734, "ADHAR CARD": "A-892103160364", "SSSMID": 302583673, "FAMILY ID": 38444407, "BANK AC. NO.": "AND274210100003776", "IFSC CODE": "ANDB0002742", "ADDRESS": "CHAMUNDA PALACE"}}'::jsonb
);

-- CLASS 5th row 36 [rte]: ANURAG CHOUHAN
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  'ANURAG',
  'CHOUHAN',
  '2016-01-26'::date,
  'A-888409365396',
  '307909229',
  '27957166',
  'HINDU',
  'VESHVA',
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1934',
  null,
  null,
  null,
  null,
  'Local',
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  'father',
  'JAYPRAKASH',
  null,
  '6263194599',
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  'mother',
  'SANJU',
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  'PRATAP NAGAR-125',
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  null,
  'SBI-32125098101',
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
  'f8c8bf4d-e59e-40fc-95ef-a2fd9fdc85cc'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 36, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ANURAG", "SURNAME": "CHOUHAN", "FATHER": "JAYPRAKASH", "MOTHER": "SANJU", "DOB": "26.01.2016", "SCH. NO.": 1934, "RELIGION": "HINDU", "CASTE": "VESHVA", "CATE.": "OBC", "MOB. NO.": 6263194599, "ADHAR CARD": "A-888409365396", "SSSMID": 307909229, "FAMILY ID": 27957166, "BANK AC. NO.": "SBI-32125098101", "IFSC CODE": "SBIN0003864", "ADDRESS": "PRATAP NAGAR-125"}}'::jsonb
);

-- CLASS 5th row 37 [rte]: DIVYANSHI BINJUWA
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
  'DIVYANSHI',
  'BINJUWA',
  '2015-07-08'::date,
  'A-724367324997',
  '305894377',
  '37902103',
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1928',
  null,
  null,
  null,
  null,
  'Local',
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
  'father',
  'VIJAY',
  null,
  '9752423932',
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
  'mother',
  'SHEETAL',
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
  null,
  'BOI890010110018724',
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
  '95028024-1d65-4cfb-b285-8823f28428bf'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 37, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "DIVYANSHI", "SURNAME": "BINJUWA", "FATHER": "VIJAY", "MOTHER": "SHEETAL", "DOB": "08.07.2015", "SCH. NO.": 1928, "RELIGION": "HINDU", "CASTE": "DHOBI", "CATE.": "OBC", "MOB. NO.": 9752423932, "ADHAR CARD": "A-724367324997", "SSSMID": 305894377, "FAMILY ID": 37902103, "BANK AC. NO.": "BOI890010110018724", "IFSC CODE": null, "ADDRESS": "ARJUN NAGAR"}}'::jsonb
);

-- CLASS 5th row 38 [rte]: HARSHITA KUSHWAH
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
  'HARSHITA',
  'KUSHWAH',
  '2016-03-19'::date,
  'A-944530809168',
  '308113504',
  '28482592',
  'HINDU',
  'KACHHI',
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1921',
  null,
  null,
  null,
  null,
  'Local',
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
  'father',
  'NARENDRA',
  null,
  '9109247946',
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
  'PRATAP NAGAR',
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
  null,
  'UN373502010017411',
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
  '88ade965-0a0f-43d5-a700-1efe0d2a50f8'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 38, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "HARSHITA", "SURNAME": "KUSHWAH", "FATHER": "NARENDRA", "MOTHER": "MAYA", "DOB": "19.03.2016", "SCH. NO.": 1921, "RELIGION": "HINDU", "CASTE": "KACHHI", "CATE.": "OBC", "MOB. NO.": 9109247946, "ADHAR CARD": "A-944530809168", "SSSMID": 308113504, "FAMILY ID": 28482592, "BANK AC. NO.": "UN373502010017411", "IFSC CODE": "UBIN0537357", "ADDRESS": "PRATAP NAGAR"}}'::jsonb
);

-- CLASS 5th row 39 [rte]: ISHANI PAL
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
  'ISHANI',
  'PAL',
  '2015-11-25'::date,
  'A-461430973768',
  '308708971',
  '22118468',
  'HINDU',
  'GARI',
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1917',
  null,
  null,
  null,
  null,
  'Local',
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
  'father',
  'AMIT',
  null,
  'M-7987197403/ 9111331007',
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
  'LAXMI BAI NAGAR',
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
  null,
  'PUNB11502151010489',
  'PUNB0115010',
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
  '5523549f-f5cb-4f2e-9658-016ab26ee987'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 39, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "ISHANI", "SURNAME": "PAL", "FATHER": "AMIT", "MOTHER": "KUSUM", "DOB": "25.11.2015", "SCH. NO.": 1917, "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "MOB. NO.": "M-7987197403/ 9111331007", "ADHAR CARD": "A-461430973768", "SSSMID": 308708971, "FAMILY ID": 22118468, "BANK AC. NO.": "PUNB11502151010489", "IFSC CODE": "PUNB0115010", "ADDRESS": "LAXMI BAI NAGAR"}}'::jsonb
);

-- CLASS 5th row 40 [rte]: KALPANA YADAV
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  'KALPANA',
  'YADAV',
  '2014-10-15'::date,
  'A-361339939014',
  '200601006',
  '38445230',
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1924',
  null,
  null,
  null,
  null,
  'Local',
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  'father',
  'SANDEEP',
  null,
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  'mother',
  'PINKI',
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  'PRATAP NAGAR',
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  null,
  'BOI890010110016649',
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
  '43181ca2-2a13-48ce-95bc-961ac40a855a'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 40, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "KALPANA", "SURNAME": "YADAV", "FATHER": "SANDEEP", "MOTHER": "PINKI", "DOB": "15.10.2014", "SCH. NO.": 1924, "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": 8085311066, "ADHAR CARD": "A-361339939014", "SSSMID": 200601006, "FAMILY ID": 38445230, "BANK AC. NO.": "BOI890010110016649", "IFSC CODE": "BKID0008900", "ADDRESS": "PRATAP NAGAR"}}'::jsonb
);

-- CLASS 5th row 41 [rte]: KRISHNA VISHWAKARMA
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
  'KRISHNA',
  'VISHWAKARMA',
  '2015-10-05'::date,
  'A-663598953834',
  '302584168',
  '37403038',
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1920',
  null,
  null,
  null,
  null,
  'Local',
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
  'father',
  'YOGSH',
  null,
  '9691315107',
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
  'MADHUBAN COLONY',
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
  null,
  'SBI33625719975',
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
  '30b24d3b-8803-4e3f-817a-014d0f86eda9'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 41, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "KRISHNA", "SURNAME": "VISHWAKARMA", "FATHER": "YOGSH", "MOTHER": "NEETU", "DOB": "05.10.2015", "SCH. NO.": 1920, "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "MOB. NO.": 9691315107, "ADHAR CARD": "A-663598953834", "SSSMID": 302584168, "FAMILY ID": 37403038, "BANK AC. NO.": "SBI33625719975", "IFSC CODE": "SBIN0030130", "ADDRESS": "MADHUBAN COLONY"}}'::jsonb
);

-- CLASS 5th row 42 [rte]: MEHAK BODANA
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
  'MEHAK',
  'BODANA',
  '2015-12-11'::date,
  'A-429558454715',
  '305355777',
  '37268556',
  'HINDU',
  'BAGRI',
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1929',
  null,
  null,
  null,
  null,
  'Local',
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
  'father',
  'BALRAM',
  null,
  '9755440535',
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
  'MADHUBAN COLONY',
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
  null,
  'CNR2716101011436',
  'CNRB0002716',
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
  '59b5cede-08f5-40a8-8898-220273686b23'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 42, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "MEHAK", "SURNAME": "BODANA", "FATHER": "BALRAM", "MOTHER": "MAMTA", "DOB": "11.12.2015", "SCH. NO.": 1929, "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "ST", "MOB. NO.": 9755440535, "ADHAR CARD": "A-429558454715", "SSSMID": 305355777, "FAMILY ID": 37268556, "BANK AC. NO.": "CNR2716101011436", "IFSC CODE": "CNRB0002716", "ADDRESS": "MADHUBAN COLONY"}}'::jsonb
);

-- CLASS 5th row 43 [rte]: MAHI CHOUHAN
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
  'MAHI',
  'CHOUHAN',
  '2015-10-10'::date,
  'A-805474760649',
  '308042049',
  '37378702',
  'HINDU',
  'LUNIMA',
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1932',
  null,
  null,
  null,
  null,
  'Local',
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
  'father',
  'ANIKET',
  null,
  '9575051220',
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
  'NAHAR DARWAJA',
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
  null,
  'SBI-35625556038',
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
  'd9e714c2-7b79-421c-b8af-776cb7549986'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 43, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "MAHI", "SURNAME": "CHOUHAN", "FATHER": "ANIKET", "MOTHER": "RAJNI", "DOB": "10.10.2015", "SCH. NO.": 1932, "RELIGION": "HINDU", "CASTE": "LUNIMA", "CATE.": "OBC", "MOB. NO.": 9575051220, "ADHAR CARD": "A-805474760649", "SSSMID": 308042049, "FAMILY ID": 37378702, "BANK AC. NO.": "SBI-35625556038", "IFSC CODE": "SBIN0030007", "ADDRESS": "NAHAR DARWAJA"}}'::jsonb
);

-- CLASS 5th row 44 [rte]: MAYANK YADAV
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  'MAYANK',
  'YADAV',
  '2014-08-21'::date,
  'A-869802810905',
  '197737489',
  '44036392',
  'HINDU',
  'GAWLI',
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1927',
  null,
  null,
  null,
  null,
  'Local',
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  'father',
  'RAKESH',
  null,
  '8225050301',
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  'mother',
  'SUSHILA',
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  '198 MADHUBAN COLONY',
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  null,
  'SBI63033584513',
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
  '99aa2513-eb9a-4ebe-9d41-b39872a7ef18'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 44, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "MAYANK", "SURNAME": "YADAV", "FATHER": "RAKESH", "MOTHER": "SUSHILA", "DOB": "21.08.2014", "SCH. NO.": 1927, "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": 8225050301, "ADHAR CARD": "A-869802810905", "SSSMID": 197737489, "FAMILY ID": 44036392, "BANK AC. NO.": "SBI63033584513", "IFSC CODE": "SBIN0030007", "ADDRESS": "198 MADHUBAN COLONY"}}'::jsonb
);

-- CLASS 5th row 45 [rte]: MINAKSHI MALVIYA
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  'MINAKSHI',
  'MALVIYA',
  '2014-08-17'::date,
  'A-246113627211',
  '306562499',
  '20273387',
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1931',
  null,
  null,
  null,
  null,
  'Local',
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  'father',
  'SANJAY',
  null,
  '9977054315',
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  'mother',
  'RADHA',
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  'PRATAP NAGAR',
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  null,
  'SBI20223802004',
  'SBIN00300320',
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
  'f6bda3ac-6a9c-4304-88bc-5f2b5ef083b1'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 45, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "MINAKSHI", "SURNAME": "MALVIYA", "FATHER": "SANJAY", "MOTHER": "RADHA", "DOB": "17.08.2014", "SCH. NO.": 1931, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 9977054315, "ADHAR CARD": "A-246113627211", "SSSMID": 306562499, "FAMILY ID": 20273387, "BANK AC. NO.": "SBI20223802004", "IFSC CODE": "SBIN00300320", "ADDRESS": "PRATAP NAGAR"}}'::jsonb
);

-- CLASS 5th row 46 [rte]: MOHIT FATROD
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  'MOHIT',
  'FATROD',
  '2016-02-24'::date,
  'A-609306770482',
  '307923707',
  '45549027',
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1923',
  null,
  null,
  null,
  null,
  'Local',
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  'father',
  'MANOJ',
  null,
  '9977794706',
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  'mother',
  'RAJESHWARI',
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  'PRATAP NAGAR - 140',
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  null,
  'SBI32055385262',
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
  '1080c962-542b-4443-924b-6e7e56602e05'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 46, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "MOHIT", "SURNAME": "FATROD", "FATHER": "MANOJ", "MOTHER": "RAJESHWARI", "DOB": "24.02.2016", "SCH. NO.": 1923, "RELIGION": "HINDU", "CASTE": "MEHTAR", "CATE.": "SC", "MOB. NO.": 9977794706, "ADHAR CARD": "A-609306770482", "SSSMID": 307923707, "FAMILY ID": 45549027, "BANK AC. NO.": "SBI32055385262", "IFSC CODE": "SBIN0030130", "ADDRESS": "PRATAP NAGAR - 140"}}'::jsonb
);

-- CLASS 5th row 48 [rte]: RUPESH YADAV
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  'RUPESH',
  'YADAV',
  '2015-11-10'::date,
  'A-303760033618',
  '300310945',
  '2040691',
  'HINDU',
  'GAWLI',
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1916',
  null,
  null,
  null,
  null,
  'Local',
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  'father',
  'ANIL',
  null,
  '7828234184',
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  'mother',
  'PINKI',
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  'MEETHA TALAB ROAD',
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  null,
  'BOB07240100032234',
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
  '7b4bbd4a-cc18-46fc-943d-dc1bcb62e18e'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 48, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "RUPESH", "SURNAME": "YADAV", "FATHER": "ANIL", "MOTHER": "PINKI", "DOB": "10.11.2015", "SCH. NO.": 1916, "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": 7828234184, "ADHAR CARD": "A-303760033618", "SSSMID": 300310945, "FAMILY ID": 2040691, "BANK AC. NO.": "BOB07240100032234", "IFSC CODE": "BARB0DEWASX", "ADDRESS": "MEETHA TALAB ROAD"}}'::jsonb
);

-- CLASS 5th row 49 [rte]: SHRADDHA DHAYNA
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
  'SHRADDHA',
  'DHAYNA',
  '2016-03-09'::date,
  'A-482834297990',
  '302432225',
  '20611096',
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1915',
  null,
  null,
  null,
  null,
  'Local',
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
  'father',
  'NITIN',
  null,
  '7024692224',
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
  'MHANKAL COLONY',
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
  null,
  'SBI32646966686',
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
  '24490661-d01e-4439-ae62-12f3e604b83d'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 49, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "SHRADDHA", "SURNAME": "DHAYNA", "FATHER": "NITIN", "MOTHER": "JYOTI", "DOB": "09.03.2016", "SCH. NO.": 1915, "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "MOB. NO.": 7024692224, "ADHAR CARD": "A-482834297990", "SSSMID": 302432225, "FAMILY ID": 20611096, "BANK AC. NO.": "SBI32646966686", "IFSC CODE": "SBIN0030007", "ADDRESS": "MHANKAL COLONY"}}'::jsonb
);

-- CLASS 5th row 50 [rte]: YASH JAISWAL
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  'YASH',
  'JAISWAL',
  '2016-02-05'::date,
  'A-463043491712',
  '308521329',
  '36621956',
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '1919',
  null,
  null,
  null,
  null,
  'Local',
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  'father',
  'RAJESH',
  null,
  '9755704767',
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  'mother',
  'AARTI',
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  'AMBETKAR NAGAR',
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  null,
  'SBI32141508856',
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
  '5c161fb4-b4db-4f13-957a-d11bdd41078f'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 50, "section": "rte", "corrections": [], "data": {"MODE": "Local", "NAME": "YASH", "SURNAME": "JAISWAL", "FATHER": "RAJESH", "MOTHER": "AARTI", "DOB": "5.02.2016", "SCH. NO.": 1919, "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "MOB. NO.": 9755704767, "ADHAR CARD": "A-463043491712", "SSSMID": 308521329, "FAMILY ID": 36621956, "BANK AC. NO.": "SBI32141508856", "IFSC CODE": "SBIN0003864", "ADDRESS": "AMBETKAR NAGAR"}}'::jsonb
);

-- CLASS 5th row 53 [left]: KRATIKA NAGAR
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  'KRATIKA',
  'NAGAR',
  '2016-05-10'::date,
  'A-944552037820',
  '300678575',
  '38668652',
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2055',
  null,
  null,
  null,
  null,
  'BUS',
  null,
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  'father',
  'NAVIN',
  null,
  'M-7828386675',
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  'mother',
  'DIKSHA',
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  'BILWALI,182',
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  null,
  'BOI890010510003958',
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
  '660b86bc-355e-4244-8b3d-11369fbf430f'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 53, "section": "left", "corrections": [], "data": {"MODE": "BUS", "NAME": "KRATIKA", "SURNAME": "NAGAR", "FATHER": "NAVIN", "MOTHER": "DIKSHA", "DOB": "10.05.2016", "SCH. NO.": 2055, "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "MOB. NO.": "M-7828386675", "ADHAR CARD": "A-944552037820", "SSSMID": 300678575, "FAMILY ID": 38668652, "BANK AC. NO.": "BOI890010510003958", "IFSC CODE": "BKID0008900", "ADDRESS": "BILWALI,182"}}'::jsonb
);

-- CLASS 5th row 54 [left]: DAKSH CHOUHAN
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
  'DAKSH',
  'CHOUHAN',
  '2015-10-26'::date,
  null,
  '302583898',
  '38358484',
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2051',
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
  'father',
  'DEVENDRA',
  null,
  'M-8770273484',
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
  'RADHAGANJ - 21/6',
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
  null,
  'D-118510032424',
  'AWEPC4379A',
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
  '0092d32f-0fc5-4c72-a0bc-5d2a25d5c550'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 54, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "DAKSH", "SURNAME": "CHOUHAN", "FATHER": "DEVENDRA", "MOTHER": "MANJU", "DOB": "26.10.2015", "SCH. NO.": 2051, "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": "M-8770273484", "ADHAR CARD": null, "SSSMID": 302583898, "FAMILY ID": 38358484, "BANK AC. NO.": "D-118510032424", "IFSC CODE": "AWEPC4379A", "ADDRESS": "RADHAGANJ - 21/6"}}'::jsonb
);

-- CLASS 5th row 55 [left]: ISHIKA ANJANA
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
  'ISHIKA',
  'ANJANA',
  '2016-07-08'::date,
  'A-943532678748',
  '319759368',
  '20327839',
  'HINDU',
  'ANJANA',
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2123',
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
  'father',
  'RAKESH',
  null,
  'M-9981438822',
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
  'BLOCK B-05 POLICE LINE',
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
  null,
  'SBI20164274045',
  'SBIN00030007',
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
  '66ebaf1c-709f-4e98-8920-910cc0dbced7'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 55, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "ISHIKA", "SURNAME": "ANJANA", "FATHER": "RAKESH", "MOTHER": "REKHA", "DOB": "2016-07-08 00:00:00", "SCH. NO.": 2123, "RELIGION": "HINDU", "CASTE": "ANJANA", "CATE.": "OBC", "MOB. NO.": "M-9981438822", "ADHAR CARD": "A-943532678748", "SSSMID": 319759368, "FAMILY ID": 20327839, "BANK AC. NO.": "SBI20164274045", "IFSC CODE": "SBIN00030007", "ADDRESS": "BLOCK B-05 POLICE LINE"}}'::jsonb
);

-- CLASS 5th row 56 [left]: DEV - 22 PARMAR
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
  '8b775392-44d9-4c61-a7ec-299763f0eaa5'::uuid,
  'DEV - 22',
  'PARMAR',
  '2016-06-28'::date,
  'A-367421687528',
  null,
  '20396228',
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
  '8b775392-44d9-4c61-a7ec-299763f0eaa5'::uuid,
  '2026-27',
  '5',
  null,
  null,
  '2074',
  null,
  null,
  null,
  null,
  'Local',
  null,
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
  '8b775392-44d9-4c61-a7ec-299763f0eaa5'::uuid,
  'father',
  'ASHOK',
  null,
  'M-9827342199',
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
  '8b775392-44d9-4c61-a7ec-299763f0eaa5'::uuid,
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
  '8b775392-44d9-4c61-a7ec-299763f0eaa5'::uuid,
  'AWASH NAGAR C1/1',
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
  '8b775392-44d9-4c61-a7ec-299763f0eaa5'::uuid,
  '2026-27',
  '5',
  '1-5.xlsx',
  'CLASS 5th',
  '{"sheet_name": "CLASS 5th", "row_number": 56, "section": "left", "corrections": [], "data": {"MODE": "Local", "NAME": "DEV - 22", "SURNAME": "PARMAR", "FATHER": "ASHOK", "MOTHER": "ALKA", "DOB": "28.06.2016", "SCH. NO.": 2074, "RELIGION": "HINDU", "CASTE": "TELI", "CATE.": "OBC", "MOB. NO.": "M-9827342199", "ADHAR CARD": "A-367421687528", "SSSMID": null, "FAMILY ID": 20396228, "BANK AC. NO.": null, "IFSC CODE": null, "ADDRESS": "AWASH NAGAR C1/1"}}'::jsonb
);

commit;
