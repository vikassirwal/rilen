-- RILEN student import for classes 6, 7, and 8
-- Source workbook: 6:7:8final_spreadsheet.xlsx
-- Generated records: 99
-- Rules: RTE section => is_rte_student true; LEFT section => is_active false; suspicious dates => null.

begin;

-- CLASS 6th row 3 [enrolled]: AARADHYA RATHOD
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
  'AARADHYA',
  'RATHOD',
  '2015-07-05'::date,
  'A-836893598307',
  null,
  null,
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
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1977',
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
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
  'father',
  'SHRAVAN',
  null,
  'M-9039810352',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
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
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
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
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
  null,
  'SBI63042869280',
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
  '51cd766e-605a-4c1f-b28d-bffbcbb2447f'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 3, "section": "enrolled", "data": {"NAME": "AARADHYA", "SURNAME": "RATHOD", "FATHER": "SHRAVAN", "MOTHER": "GAYATRI", "DOB": "2015-07-05 00:00:00", "SCH. NO.": 1977, "ADHAR CARD": "A-836893598307", "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": "SBI63042869280", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.": "OBC", "MOB. NO.": "M-9039810352", "ADDRESS": "RADHAGANJ"}}'::jsonb
);

-- CLASS 6th row 4 [enrolled]: ANSHIKA SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
  'ANSHIKA',
  'SOLANKI',
  '2015-09-08'::date,
  'A-666297582844',
  '315060902',
  '49027673',
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
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1958',
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
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
  'father',
  'SATISH',
  null,
  'M-9575688837',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
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
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
  'CHMAUNDAPURI -15/15',
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
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
  null,
  'SBI20232483788',
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
  '2397fa73-c74d-486b-9346-c14f0db98ee1'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 4, "section": "enrolled", "data": {"NAME": "ANSHIKA", "SURNAME": "SOLANKI", "FATHER": "SATISH", "MOTHER": "SWATI", "DOB": "08.09.2015", "SCH. NO.": 1958, "ADHAR CARD": "A-666297582844", "SSSMID": 315060902, "FAMILY ID": 49027673, "BANK AC. NO.": "SBI20232483788", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "MALVIYA", "CATE.": "SC", "MOB. NO.": "M-9575688837", "ADDRESS": "CHMAUNDAPURI -15/15"}}'::jsonb
);

-- CLASS 6th row 5 [enrolled]: DIVYANSH DEWDA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
  'DIVYANSH',
  'DEWDA',
  '2015-05-14'::date,
  'A-602597798280',
  '301314252',
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
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1979',
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
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
  'father',
  'LAL SINGH',
  null,
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
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
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
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
  'CHAMUNDAPURI - 17',
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
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
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
  'ae890561-d6f2-420a-a865-e0a8ac5b2013'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 5, "section": "enrolled", "data": {"NAME": "DIVYANSH", "SURNAME": "DEWDA", "FATHER": "LAL SINGH", "MOTHER": "SANTOSHI", "DOB": "14.05.2015", "SCH. NO.": 1979, "ADHAR CARD": "A-602597798280", "SSSMID": 301314252, "FAMILY ID": 24929555, "BANK AC. NO.": "BOI890010100025053", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "KORKU", "CATE.": "ST", "MOB. NO.": "M-9691859096", "ADDRESS": "CHAMUNDAPURI - 17"}}'::jsonb
);

-- CLASS 6th row 6 [enrolled]: DRISHTI CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  'DRISHTI',
  'CHOUHAN',
  '2015-08-03'::date,
  'A-843512201705',
  '306113443',
  '20776908',
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
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1982',
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
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  'father',
  'LAKHAN',
  null,
  'M-9993010290',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  'mother',
  'SULOCHANA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  'KRISHNAPURA - 59',
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
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  null,
  'BOB07240100028869',
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
  '2153b4d8-7f9d-4719-b60d-ab30a89f06a3'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 6, "section": "enrolled", "data": {"NAME": "DRISHTI", "SURNAME": "CHOUHAN", "FATHER": "LAKHAN", "MOTHER": "SULOCHANA", "DOB": "2015-08-03 00:00:00", "SCH. NO.": 1982, "ADHAR CARD": "A-843512201705", "SSSMID": 306113443, "FAMILY ID": 20776908, "BANK AC. NO.": "BOB07240100028869", "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-9993010290", "ADDRESS": "KRISHNAPURA - 59"}}'::jsonb
);

-- CLASS 6th row 7 [enrolled]: KAVYA DESHMUKH
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  'KAVYA',
  'DESHMUKH',
  '2015-05-20'::date,
  'A-825114288389',
  '308621850',
  '25262740',
  'HINDU',
  'KUNBI',
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
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1881',
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
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  'father',
  'LT.SAHDEO',
  null,
  'M-7987221878',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  'mother',
  'VANDANA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  'BAJRANGBALI NAGAR - 38',
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
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  null,
  'A/C - 45289682976',
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
  '8435d210-31b2-467e-9a72-4f5e5ac504d5'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 7, "section": "enrolled", "data": {"NAME": "KAVYA", "SURNAME": "DESHMUKH", "FATHER": "LT.SAHDEO", "MOTHER": "VANDANA", "DOB": "20.05.2015", "SCH. NO.": 1881, "ADHAR CARD": "A-825114288389", "SSSMID": 308621850, "FAMILY ID": 25262740, "BANK AC. NO.": "A/C - 45289682976", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "KUNBI", "CATE.": "OBC", "MOB. NO.": "M-7987221878", "ADDRESS": "BAJRANGBALI NAGAR - 38"}}'::jsonb
);

-- CLASS 6th row 8 [enrolled]: KOMAL YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
  'KOMAL',
  'YADAV',
  '2016-05-11'::date,
  'A-868362851325',
  '308825660',
  '37888639',
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
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2017',
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
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
  'father',
  'BASANT',
  null,
  'M-9893381166',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
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
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
  'LAXMIBAI MARG',
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
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
  null,
  'DNO118510023869',
  'DNO81105',
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
  '2459594f-9e59-4b58-81ac-39bd7751faf0'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 8, "section": "enrolled", "data": {"NAME": "KOMAL", "SURNAME": "YADAV", "FATHER": "BASANT", "MOTHER": "RAKHI", "DOB": "11.05.2016", "SCH. NO.": 2017, "ADHAR CARD": "A-868362851325", "SSSMID": 308825660, "FAMILY ID": 37888639, "BANK AC. NO.": "DNO118510023869", "IFSC CODE": "DNO81105", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": "M-9893381166", "ADDRESS": "LAXMIBAI MARG"}}'::jsonb
);

-- CLASS 6th row 9 [enrolled]: KRITIKA KELWA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
  'KRITIKA',
  'KELWA',
  '2014-11-11'::date,
  'A-474192112260',
  '305562817',
  '23858637',
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
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1953',
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
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
  'father',
  'SUNIL',
  null,
  'M-9826373043',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
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
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
  'VIVEK NAGAR - 46-B',
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
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
  null,
  'DB118510023869',
  'BKDN0811185',
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
  'bdb4845b-af8e-4bb2-9bcb-b1b8ae5bfe2f'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 9, "section": "enrolled", "data": {"NAME": "KRITIKA", "SURNAME": "KELWA", "FATHER": "SUNIL", "MOTHER": "MONIKA", "DOB": "11.11.2014", "SCH. NO.": 1953, "ADHAR CARD": "A-474192112260", "SSSMID": 305562817, "FAMILY ID": 23858637, "BANK AC. NO.": "DB118510023869", "IFSC CODE": "BKDN0811185", "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.": "OBC", "MOB. NO.": "M-9826373043", "ADDRESS": "VIVEK NAGAR - 46-B"}}'::jsonb
);

-- CLASS 6th row 10 [enrolled]: NALINI CHOUDHARY
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
  'NALINI',
  'CHOUDHARY',
  '2015-08-24'::date,
  'A-710643770878',
  '316081753',
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
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1990',
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
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
  'father',
  'AJAY SINGH',
  null,
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
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
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
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
  'CHAMUNDAPURI - 2',
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
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
  null,
  'UBIN-274212010000166',
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
  '987748f2-50af-4dcf-a2c3-284afdd72d1a'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 10, "section": "enrolled", "data": {"NAME": "NALINI", "SURNAME": "CHOUDHARY", "FATHER": "AJAY SINGH", "MOTHER": "LAXMI", "DOB": "24.08.2015", "SCH. NO.": 1990, "ADHAR CARD": "A-710643770878", "SSSMID": 316081753, "FAMILY ID": 38392900, "BANK AC. NO.": "UBIN-274212010000166", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "MOB. NO.": "M-8319480001", "ADDRESS": "CHAMUNDAPURI - 2"}}'::jsonb
);

-- CLASS 6th row 11 [enrolled]: PRANAV YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
  'PRANAV',
  'YADAV',
  '2015-03-08'::date,
  'A-656095495117',
  '300377993',
  '38075292',
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
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2018',
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
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
  'father',
  'KRISHNAKANT',
  null,
  'M-8120666375',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
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
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
  'LAXMIBAI MARG',
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
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
  null,
  'UN274210100066766',
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
  '25d05deb-5346-4b60-8aa7-f042583e8c5a'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 11, "section": "enrolled", "data": {"NAME": "PRANAV", "SURNAME": "YADAV", "FATHER": "KRISHNAKANT", "MOTHER": "SONALI", "DOB": "08.03.2015", "SCH. NO.": 2018, "ADHAR CARD": "A-656095495117", "SSSMID": 300377993, "FAMILY ID": 38075292, "BANK AC. NO.": "UN274210100066766", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": "M-8120666375", "ADDRESS": "LAXMIBAI MARG"}}'::jsonb
);

-- CLASS 6th row 12 [enrolled]: SAKSHAM VERMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
  'SAKSHAM',
  'VERMA',
  '2015-07-03'::date,
  'A-241468703349',
  '305626579',
  '38478423',
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
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1986',
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
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
  'father',
  'BASANT',
  null,
  'M-9575221278',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
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
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
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
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
  null,
  'SBI34516682134',
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
  'cff7c832-cf8f-4408-838c-998a659ce254'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 12, "section": "enrolled", "data": {"NAME": "SAKSHAM", "SURNAME": "VERMA", "FATHER": "BASANT", "MOTHER": "POOJA", "DOB": "03/07/2015", "SCH. NO.": 1986, "ADHAR CARD": "A-241468703349", "SSSMID": 305626579, "FAMILY ID": 38478423, "BANK AC. NO.": "SBI34516682134", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "MOB. NO.": "M-9575221278", "ADDRESS": "CHAMUNDAPURI"}}'::jsonb
);

-- CLASS 6th row 13 [enrolled]: VAIBHAVI CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
  'VAIBHAVI',
  'CHOUHAN',
  '2014-02-14'::date,
  'A-769676006140',
  '104616513',
  '21127201',
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
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1988',
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
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
  'father',
  'RAJPAL SINGH',
  null,
  'M-9826950056',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
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
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
  'MANGALMURTI NAGAR',
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
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
  null,
  'UBIN274210100006393',
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
  '429b42f4-4c3f-471a-833c-342f78b7ff80'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 13, "section": "enrolled", "data": {"NAME": "VAIBHAVI", "SURNAME": "CHOUHAN", "FATHER": "RAJPAL SINGH", "MOTHER": "BABLI", "DOB": "14.02.2014", "SCH. NO.": 1988, "ADHAR CARD": "A-769676006140", "SSSMID": 104616513, "FAMILY ID": "21127201", "BANK AC. NO.": "UBIN274210100006393", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-9826950056", "ADDRESS": "MANGALMURTI NAGAR"}}'::jsonb
);

-- CLASS 6th row 14 [enrolled]: VAISHNAVI PAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f471e54c-2933-4d80-ac5f-7f9ecf1a0908'::uuid,
  'VAISHNAVI',
  'PAL',
  '2015-11-22'::date,
  'A-600497339737',
  '322323306',
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
  'f471e54c-2933-4d80-ac5f-7f9ecf1a0908'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2126',
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
  'f471e54c-2933-4d80-ac5f-7f9ecf1a0908'::uuid,
  'mother',
  'TULSHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f471e54c-2933-4d80-ac5f-7f9ecf1a0908'::uuid,
  'AWAS NAGAR D/1/77',
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
  'f471e54c-2933-4d80-ac5f-7f9ecf1a0908'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 14, "section": "enrolled", "data": {"NAME": "VAISHNAVI", "SURNAME": "PAL", "FATHER": null, "MOTHER": "TULSHA", "DOB": "22.11.2015", "SCH. NO.": 2126, "ADHAR CARD": "A-600497339737", "SSSMID": 322323306, "FAMILY ID": 50849946, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GADARIYA", "CATE.": "OBC", "MOB. NO.": "M-7067861039", "ADDRESS": "AWAS NAGAR D/1/77"}}'::jsonb
);

-- CLASS 6th row 15 [enrolled]: SHRESHTHRAJ SINGH RAJPUT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
  'SHRESHTHRAJ SINGH',
  'RAJPUT',
  '2014-07-12'::date,
  'A-544977027048',
  '308367524',
  '22959652',
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
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2316',
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
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
  'father',
  'KRISHNAPAL SINGH',
  null,
  '8120311246',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
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
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
  'KALMA DEWAS',
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
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
  null,
  'BANK OF INDIA-891310110005985',
  'BKID0008913',
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
  '5fa9634a-9e86-451d-9816-98d3057c0e90'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 15, "section": "enrolled", "data": {"NAME": "SHRESHTHRAJ SINGH", "SURNAME": "RAJPUT", "FATHER": "KRISHNAPAL SINGH", "MOTHER": "PRIYANKA", "DOB": "2014-07-12 00:00:00", "SCH. NO.": 2316, "ADHAR CARD": "A-544977027048", "SSSMID": 308367524, "FAMILY ID": 22959652, "BANK AC. NO.": "BANK OF INDIA-891310110005985", "IFSC CODE": "BKID0008913", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": 8120311246, "ADDRESS": "KALMA DEWAS"}}'::jsonb
);

-- CLASS 6th row 16 [enrolled]: YUGVEERRAJ SINGH BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
  'YUGVEERRAJ SINGH',
  'BAIS',
  '2015-01-07'::date,
  'A-293973642972',
  '306929792',
  '46346666',
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
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2300',
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
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
  'father',
  'PRITHVIRAJ SINGH',
  null,
  'M-8305230054',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
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
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
  'VISHRAM BAG DEWAS',
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
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
  null,
  'SBI- 20374171288',
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
  'b5353e37-101d-4745-a485-b91fbc7a5248'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 16, "section": "enrolled", "data": {"NAME": "YUGVEERRAJ SINGH", "SURNAME": "BAIS", "FATHER": "PRITHVIRAJ SINGH", "MOTHER": "RENUKA", "DOB": "2015-01-07 00:00:00", "SCH. NO.": 2300, "ADHAR CARD": "A-293973642972", "SSSMID": 306929792, "FAMILY ID": 46346666, "BANK AC. NO.": "SBI- 20374171288", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-8305230054", "ADDRESS": "VISHRAM BAG DEWAS"}}'::jsonb
);

-- CLASS 6th row 17 [enrolled]: RANVEER YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  'RANVEER',
  'YADAV',
  '2015-04-05'::date,
  'A-538692939143',
  '320145930',
  null,
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
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2308',
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
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  'father',
  'VIJAY',
  null,
  'M-9826331860',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  'mother',
  'GYATRI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  'GAVLI MOHLA 45/2 DEWAS',
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
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  null,
  'SBI- 20374171288',
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
  'cb82d548-6714-40b6-ba61-fb026896ea09'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 17, "section": "enrolled", "data": {"NAME": "RANVEER", "SURNAME": "YADAV", "FATHER": "VIJAY", "MOTHER": "GYATRI", "DOB": "2015-04-05 00:00:00", "SCH. NO.": 2308, "ADHAR CARD": "A-538692939143", "SSSMID": 320145930, "FAMILY ID": null, "BANK AC. NO.": "SBI- 20374171288", "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GAVLI", "CATE.": "OBC", "MOB. NO.": "M-9826331860", "ADDRESS": "GAVLI MOHLA 45/2 DEWAS"}}'::jsonb
);

-- CLASS 6th row 18 [enrolled]: SHAKSHAM SENDHAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
  'SHAKSHAM',
  'SENDHAV',
  '2014-06-19'::date,
  'A-508665946248',
  '316129425',
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
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2313',
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
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
  'father',
  'AKESINGH',
  null,
  'M-9926970783',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
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
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
  'J-ATATTA CHAKKI',
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
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
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
  '6e0bcc5f-cee2-456b-9f1d-f56220cb8219'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 18, "section": "enrolled", "data": {"NAME": "SHAKSHAM", "SURNAME": "SENDHAV", "FATHER": "AKESINGH", "MOTHER": "RANU", "DOB": "19-06-2014", "SCH. NO.": 2313, "ADHAR CARD": "A-508665946248", "SSSMID": 316129425, "FAMILY ID": 44874359, "BANK AC. NO.": "SBI-31077389972", "IFSC CODE": "SBIN0030485", "RELIGION": "HINDU", "CASTE": "SENDHAV", "CATE.": "GEN", "MOB. NO.": "M-9926970783", "ADDRESS": "J-ATATTA CHAKKI"}}'::jsonb
);

-- CLASS 6th row 19 [enrolled]: PRIYANSH SISODIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  'PRIYANSH',
  'SISODIYA',
  '2013-04-24'::date,
  'A-690763060590',
  '301159300',
  '43935137',
  'HINDU',
  'BALGUNDA',
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
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1810',
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
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  'father',
  'MANOJ',
  null,
  'M-8817182238',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  'mother',
  'RAJNANDA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  'AM,BEDKAR NAGAR',
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
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  null,
  'SBI34589741231',
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
  'e0bb9b71-c323-4967-8063-d51a00b6967c'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 19, "section": "enrolled", "data": {"NAME": "PRIYANSH", "SURNAME": "SISODIYA", "FATHER": "MANOJ", "MOTHER": "RAJNANDA", "DOB": "24.04.2013", "SCH. NO.": 1810, "ADHAR CARD": "A-690763060590", "SSSMID": 301159300, "FAMILY ID": 43935137, "BANK AC. NO.": "SBI34589741231", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "BALGUNDA", "CATE.": "SC", "MOB. NO.": "M-8817182238", "ADDRESS": "AM,BEDKAR NAGAR"}}'::jsonb
);

-- CLASS 6th row 20 [enrolled]: HANSRAJ CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '39327cc2-1215-423b-82c0-8f00059a9837'::uuid,
  'HANSRAJ',
  'CHOUHAN',
  '2015-02-23'::date,
  'A-794692434140',
  '303944393',
  '4397860',
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
  '39327cc2-1215-423b-82c0-8f00059a9837'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2368',
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
  '39327cc2-1215-423b-82c0-8f00059a9837'::uuid,
  'father',
  'RAJESH',
  null,
  'M-9203575550',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '39327cc2-1215-423b-82c0-8f00059a9837'::uuid,
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
  '39327cc2-1215-423b-82c0-8f00059a9837'::uuid,
  'NUTAN NAGR-55',
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
  '39327cc2-1215-423b-82c0-8f00059a9837'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 20, "section": "enrolled", "data": {"NAME": "HANSRAJ", "SURNAME": "CHOUHAN", "FATHER": "RAJESH", "MOTHER": "BABITA", "DOB": "2015-02-23 00:00:00", "SCH. NO.": 2368, "ADHAR CARD": "A-794692434140", "SSSMID": 303944393, "FAMILY ID": 4397860, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-9203575550", "ADDRESS": "NUTAN NAGR-55"}}'::jsonb
);

-- CLASS 6th row 24 [rte]: ARYAN SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
  'ARYAN',
  'SOLANKI',
  '2014-06-24'::date,
  'A-907236753386',
  '304574036',
  '45567866',
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
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1836',
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
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
  'father',
  'PANKAJ',
  null,
  '9098459798',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
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
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
  'CHAMUNDA PURI -29',
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
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
  null,
  '32060151225',
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
  'bd9ccd83-b07e-41b1-89d2-dc38a740694d'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 24, "section": "rte", "data": {"NAME": "ARYAN", "SURNAME": "SOLANKI", "FATHER": "PANKAJ", "MOTHER": "MANJU", "DOB": "24.06.2014", "SCH. NO.": 1836, "ADHAR CARD": "A-907236753386", "SSSMID": 304574036, "FAMILY ID": 45567866, "BANK AC. NO.": 32060151225, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": 9098459798, "ADDRESS": "CHAMUNDA PURI -29"}}'::jsonb
);

-- CLASS 6th row 25 [rte]: ADITYA BALONIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
  'ADITYA',
  'BALONIYA',
  '2014-06-23'::date,
  'A-932335543185',
  '199825427',
  '38649428',
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
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1838',
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
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
  'father',
  'PARMANAND',
  null,
  '9074983215',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
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
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
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
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
  null,
  'BKID890010110013031',
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
  'adaf15ed-15bc-4a86-a9a1-77d12fa8d882'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 25, "section": "rte", "data": {"NAME": "ADITYA", "SURNAME": "BALONIYA", "FATHER": "PARMANAND", "MOTHER": "ANITA", "DOB": "23.06.2014", "SCH. NO.": 1838, "ADHAR CARD": "A-932335543185", "SSSMID": 199825427, "FAMILY ID": 38649428, "BANK AC. NO.": "BKID890010110013031", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 9074983215, "ADDRESS": "MAHANKAL COLONY DEWAS"}}'::jsonb
);

-- CLASS 6th row 26 [rte]: HIMANSHU KUSHWAH
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
  'HIMANSHU',
  'KUSHWAH',
  '2014-10-16'::date,
  'A-436249861169',
  '306058170',
  '37903220',
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
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1841',
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
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
  'father',
  'PANKAJ',
  null,
  'M-9644814993',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
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
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
  'PRATAP NAGAR-1O9',
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
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
  null,
  '37799814643',
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
  '6a524b47-295b-43db-95e7-23c56e29223f'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 26, "section": "rte", "data": {"NAME": "HIMANSHU", "SURNAME": "KUSHWAH", "FATHER": "PANKAJ", "MOTHER": "RAJNI", "DOB": "16.10.2014", "SCH. NO.": 1841, "ADHAR CARD": "A-436249861169", "SSSMID": 306058170, "FAMILY ID": 37903220, "BANK AC. NO.": 37799814643, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "KACHHI", "CATE.": "OBC", "MOB. NO.": "M-9644814993", "ADDRESS": "PRATAP NAGAR-1O9"}}'::jsonb
);

-- CLASS 6th row 27 [rte]: JIYA YOGI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '307c804f-3cbc-4e01-8074-8305e184be3c'::uuid,
  'JIYA',
  'YOGI',
  '2015-04-09'::date,
  'A-521009807027',
  '199500336',
  '20477380',
  'HINDU',
  'NATH',
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
  '307c804f-3cbc-4e01-8074-8305e184be3c'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1843',
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
  '307c804f-3cbc-4e01-8074-8305e184be3c'::uuid,
  'father',
  'RAJENDRA',
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
  '307c804f-3cbc-4e01-8074-8305e184be3c'::uuid,
  'mother',
  'RUPA',
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
  '307c804f-3cbc-4e01-8074-8305e184be3c'::uuid,
  null,
  'SBIN36370654636',
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
  '307c804f-3cbc-4e01-8074-8305e184be3c'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 27, "section": "rte", "data": {"NAME": "JIYA", "SURNAME": "YOGI", "FATHER": "RAJENDRA", "MOTHER": "RUPA", "DOB": "09.04.2015", "SCH. NO.": 1843, "ADHAR CARD": "A-521009807027", "SSSMID": 199500336, "FAMILY ID": 20477380, "BANK AC. NO.": "SBIN36370654636", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "SC", "MOB. NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 6th row 28 [rte]: MINNATI RANA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
  'MINNATI',
  'RANA',
  '2014-10-20'::date,
  'A-987800416828',
  '300167078',
  '38126223',
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
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1834',
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
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
  'father',
  'SANJAY',
  null,
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
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
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
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
  'CHAMUNDAPURI-36',
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
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
  null,
  '37580921822',
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
  'c29b0f3c-02b7-451e-8ed1-4c9e8c1a3e52'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 28, "section": "rte", "data": {"NAME": "MINNATI", "SURNAME": "RANA", "FATHER": "SANJAY", "MOTHER": "SONAM", "DOB": "20.10.2014", "SCH. NO.": 1834, "ADHAR CARD": "A-987800416828", "SSSMID": 300167078, "FAMILY ID": 38126223, "BANK AC. NO.": 37580921822, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": 9827012275, "ADDRESS": "CHAMUNDAPURI-36"}}'::jsonb
);

-- CLASS 6th row 29 [rte]: NANDANI MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
  'NANDANI',
  'MALVIYA',
  '2013-11-05'::date,
  'A-768341712703',
  '300978280',
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
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1845',
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
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
  'father',
  'NILESH',
  null,
  '8889826505',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
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
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
  'BNP ROAD',
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
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
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
  '78ba2eef-ac32-4183-9a01-38d8c5b74ccf'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 29, "section": "rte", "data": {"NAME": "NANDANI", "SURNAME": "MALVIYA", "FATHER": "NILESH", "MOTHER": "LAXMI", "DOB": "05.11.2013", "SCH. NO.": 1845, "ADHAR CARD": "A-768341712703", "SSSMID": 300978280, "FAMILY ID": 23161384, "BANK AC. NO.": "BOI890010510000257", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 8889826505, "ADDRESS": "BNP ROAD"}}'::jsonb
);

-- CLASS 6th row 30 [rte]: PRACHI JAISWAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f2f88381-9cad-40bf-93a5-fbcd5862d257'::uuid,
  'PRACHI',
  'JAISWAL',
  '2015-03-07'::date,
  'A-364943638083',
  '305768922',
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
  'f2f88381-9cad-40bf-93a5-fbcd5862d257'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1840',
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
  'f2f88381-9cad-40bf-93a5-fbcd5862d257'::uuid,
  'father',
  'ROHIT',
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
  'f2f88381-9cad-40bf-93a5-fbcd5862d257'::uuid,
  'mother',
  'TULJA',
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
  'f2f88381-9cad-40bf-93a5-fbcd5862d257'::uuid,
  null,
  'BOI890110110022969',
  'BKID0DEWASX',
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
  'f2f88381-9cad-40bf-93a5-fbcd5862d257'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 30, "section": "rte", "data": {"NAME": "PRACHI", "SURNAME": "JAISWAL", "FATHER": "ROHIT", "MOTHER": "TULJA", "DOB": "07.03.2015", "SCH. NO.": 1840, "ADHAR CARD": "A-364943638083", "SSSMID": 305768922, "FAMILY ID": 21288713, "BANK AC. NO.": "BOI890110110022969", "IFSC CODE": "BKID0DEWASX", "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "MOB. NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 6th row 31 [rte]: PRATISHTHA BHARGAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  'PRATISHTHA',
  'BHARGAV',
  '2015-01-11'::date,
  'A-889348436339',
  '305142264',
  '45738293',
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
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1902',
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
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  'father',
  'HEMANT',
  null,
  'M-7771026857',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  'mother',
  'PARVATI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  'CHAMUNDAPURI - 49',
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
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  null,
  'SBI20238115730',
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
  'bedffd47-02a5-4983-af2c-248ab6a79c31'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 31, "section": "rte", "data": {"NAME": "PRATISHTHA", "SURNAME": "BHARGAV", "FATHER": "HEMANT", "MOTHER": "PARVATI", "DOB": "11.01.2015", "SCH. NO.": 1902, "ADHAR CARD": "A-889348436339", "SSSMID": 305142264, "FAMILY ID": 45738293, "BANK AC. NO.": "SBI20238115730", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-7771026857", "ADDRESS": "CHAMUNDAPURI - 49"}}'::jsonb
);

-- CLASS 6th row 32 [rte]: SHASHANK YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '33ed3c96-e431-43ab-9b4a-7fe5ddb52645'::uuid,
  'SHASHANK',
  'YADAV',
  '2015-09-15'::date,
  'A-412650396007',
  null,
  null,
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
  '33ed3c96-e431-43ab-9b4a-7fe5ddb52645'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1835',
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
  '33ed3c96-e431-43ab-9b4a-7fe5ddb52645'::uuid,
  'father',
  'ANIL',
  null,
  'M-9691229156',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '33ed3c96-e431-43ab-9b4a-7fe5ddb52645'::uuid,
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
  '33ed3c96-e431-43ab-9b4a-7fe5ddb52645'::uuid,
  'MEETHA TALAB -114',
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
  '33ed3c96-e431-43ab-9b4a-7fe5ddb52645'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 32, "section": "rte", "data": {"NAME": "SHASHANK", "SURNAME": "YADAV", "FATHER": "ANIL", "MOTHER": "PINKI", "DOB": "15.09.2015", "SCH. NO.": 1835, "ADHAR CARD": "A-412650396007", "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": "M-9691229156", "ADDRESS": "MEETHA TALAB -114"}}'::jsonb
);

-- CLASS 6th row 33 [rte]: VANSHIKA CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  'VANSHIKA',
  'CHOUHAN',
  '2015-05-19'::date,
  'A-365462469946',
  '306113484',
  '20122777',
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
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1842',
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
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  'father',
  'DILIP',
  null,
  'M-9165319112',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  'mother',
  'MANJU BAI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  '6/A ARJUN NAGAR DEWAS',
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
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  null,
  'BKID890010110002253',
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
  '3750ae69-5aaf-4ff1-b3fe-9edc053385d3'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 33, "section": "rte", "data": {"NAME": "VANSHIKA", "SURNAME": "CHOUHAN", "FATHER": "DILIP", "MOTHER": "MANJU BAI", "DOB": "19-05-2015", "SCH. NO.": 1842, "ADHAR CARD": "A-365462469946", "SSSMID": 306113484, "FAMILY ID": 20122777, "BANK AC. NO.": "BKID890010110002253", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": "M-9165319112", "ADDRESS": "6/A ARJUN NAGAR DEWAS"}}'::jsonb
);

-- CLASS 6th row 34 [rte]: YUVRAJ CARPENTER
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
  'YUVRAJ',
  'CARPENTER',
  '2014-09-04'::date,
  'A-944670530708',
  '302583795',
  '36822843',
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
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1844',
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
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
  'father',
  'DHEERAJ',
  null,
  'M-9907378432',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
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
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
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
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
  null,
  'PUNB11502191041382',
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
  '7c4fedaf-304d-455c-90ec-084652d3506b'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 34, "section": "rte", "data": {"NAME": "YUVRAJ", "SURNAME": "CARPENTER", "FATHER": "DHEERAJ", "MOTHER": "RENUKA", "DOB": "04.09.2014", "SCH. NO.": 1844, "ADHAR CARD": "A-944670530708", "SSSMID": 302583795, "FAMILY ID": 36822843, "BANK AC. NO.": "PUNB11502191041382", "IFSC CODE": "PUNB0115010", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "MOB. NO.": "M-9907378432", "ADDRESS": "CHAMUNDA PALACE"}}'::jsonb
);

-- CLASS 6th row 37 [left]: HARSHIT KUMAR BAMNIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
  'HARSHIT KUMAR',
  'BAMNIYA',
  '2015-01-01'::date,
  'A-742457575144',
  '300739481',
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
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2160',
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
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
  'father',
  'SANTOSH',
  null,
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
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
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
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
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
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
  null,
  'SBI31016083037',
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
  '03c7071b-579f-4bf0-b6c0-faad51992f54'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 37, "section": "left", "data": {"NAME": "HARSHIT KUMAR", "SURNAME": "BAMNIYA", "FATHER": "SANTOSH", "MOTHER": "KAVITA", "DOB": "01.01.2015", "SCH. NO.": 2160, "ADHAR CARD": "A-742457575144", "SSSMID": 300739481, "FAMILY ID": 24103006, "BANK AC. NO.": "SBI31016083037", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": "M-9522458226", "ADDRESS": "FATANPUR"}}'::jsonb
);

-- CLASS 6th row 38 [left]: AAYUSHI SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  'AAYUSHI',
  'SOLANKI',
  '2014-12-04'::date,
  'A-717337859891',
  '304447265',
  '38386071',
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
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '1959',
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
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  'father',
  'CHANDRASHEKHAR',
  null,
  'M-9098451518',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  'mother',
  'SANGEETA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  'RADHAGANJ - 26',
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
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  null,
  'SBI31587878689',
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
  'beb1b918-e587-4de4-9267-c6eaf6126d0f'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 38, "section": "left", "data": {"NAME": "AAYUSHI", "SURNAME": "SOLANKI", "FATHER": "CHANDRASHEKHAR", "MOTHER": "SANGEETA", "DOB": "04.12.2014", "SCH. NO.": 1959, "ADHAR CARD": "A-717337859891", "SSSMID": 304447265, "FAMILY ID": 38386071, "BANK AC. NO.": "SBI31587878689", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "MOB. NO.": "M-9098451518", "ADDRESS": "RADHAGANJ - 26"}}'::jsonb
);

-- CLASS 6th row 39 [left]: YASHA YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
  'YASHA',
  'YADAV',
  '2015-09-04'::date,
  'A-973504594961',
  '305666189',
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
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
  '2026-27',
  '6',
  null,
  null,
  '2108',
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
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
  'father',
  'BASANT',
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
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
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
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
  'MADHUBAN COLONY - 123',
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
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
  null,
  'SBI63005182534',
  'SBIN0030011',
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
  '1e62726d-e4ab-4600-87c4-ddb6f8cbfd87'::uuid,
  '2026-27',
  '6',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 6th',
  '{"sheet_name": "CLASS 6th", "row_number": 39, "section": "left", "data": {"NAME": "YASHA", "SURNAME": "YADAV", "FATHER": "BASANT", "MOTHER": "RENU", "DOB": "2015-09-04 00:00:00", "SCH. NO.": 2108, "ADHAR CARD": "A-973504594961", "SSSMID": 305666189, "FAMILY ID": 25163486, "BANK AC. NO.": "SBI63005182534", "IFSC CODE": "SBIN0030011", "RELIGION": "HINDU", "CASTE": "YADAV", "CATE.": "OBC", "MOB. NO.": "M-9755902055", "ADDRESS": "MADHUBAN COLONY - 123"}}'::jsonb
);

-- CLASS 7th row 3 [enrolled]: AAKANSHA RAJPUT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  'AAKANSHA',
  'RAJPUT',
  '2013-09-04'::date,
  'A-965561615907',
  '198750678',
  '44225418',
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
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  '2026-27',
  '7',
  null,
  '48-22-3',
  '2019',
  null,
  null,
  '3rd',
  null,
  'Local',
  'LITTLE WONDER',
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
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  'father',
  'JITENDRA',
  'POLICE',
  'M-9340744776',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  'mother',
  'VANDANA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  'POLICE LINE G-1',
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
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  null,
  'SBI39709063876',
  'SBIN0003007',
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
  'aaba5ed2-2c73-4cb4-ac78-7520691e1ebe'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 3, "section": "enrolled", "data": {"MODE": "Local", "NAME": "AAKANSHA", "SURNAME": "RAJPUT", "FATHER": "JITENDRA", "MOTHER": "VANDANA", "DOB": "04.09.2013", "ADM NO.": "48-22-3", "SCH. NO.": 2019, "ENROLL": null, "ADHAR CARD": "A-965561615907", "SSSMID": 198750678, "FAMILY ID": 44225418, "BANK AC. NO.": "SBI39709063876", "IFSC CODE": "SBIN0003007", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "POLICE", "ADMN.DATE": "17-06-20222", "BOARD R.N.": null, "ADM .CLASS": "3rd", "MOB. NO.": "M-9340744776", "ADDRESS": "POLICE LINE G-1", "LAST SCHOOL": "LITTLE WONDER"}}'::jsonb
);

-- CLASS 7th row 4 [enrolled]: AKASH SINGH THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
  'AKASH SINGH',
  'THAKUR',
  '2013-12-07'::date,
  'A-948835690168',
  '306070209',
  '24256001',
  'HINDU',
  'BHATE',
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
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
  '2026-27',
  '7',
  null,
  '69-17-N',
  '1901',
  null,
  '2017-03-18'::date,
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
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
  'father',
  'HATE SINGH',
  null,
  'M-9826041085',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
  'mother',
  'SANOTHS',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
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
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
  null,
  'BOB07240100020734',
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
  'a6f4da5a-50d4-43b4-b968-dd32f8d024dc'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 4, "section": "enrolled", "data": {"MODE": "Local", "NAME": "AKASH SINGH", "SURNAME": "THAKUR", "FATHER": "HATE SINGH", "MOTHER": "SANOTHS", "DOB": "07.12.2013", "ADM NO.": "69-17-N", "SCH. NO.": 1901, "ENROLL": null, "ADHAR CARD": "A-948835690168", "SSSMID": 306070209, "FAMILY ID": 24256001, "BANK AC. NO.": "BOB07240100020734", "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "BHATE", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": 42812, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9826041085", "ADDRESS": "RADHAGANJ", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 5 [enrolled]: BHAVYA PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
  'BHAVYA',
  'PATEL',
  '2014-05-16'::date,
  'A-553625565415',
  '303752951',
  '20066539',
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
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
  '2026-27',
  '7',
  null,
  '06-17-N',
  '1858',
  null,
  '2017-03-14'::date,
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
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
  'father',
  'RAVISHANKAR',
  'PVT. JOB',
  'M-9755316160',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
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
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
  'VIVEK NAGAR',
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
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
  null,
  'IDBI0001104000561990',
  'IBKL0000001',
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
  '3faa9ab5-5cd3-4f6a-8db7-61309ac33a1d'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 5, "section": "enrolled", "data": {"MODE": "Local", "NAME": "BHAVYA", "SURNAME": "PATEL", "FATHER": "RAVISHANKAR", "MOTHER": "DEEPIKA", "DOB": "16.05.2014", "ADM NO.": "06-17-N", "SCH. NO.": 1858, "ENROLL": null, "ADHAR CARD": "A-553625565415", "SSSMID": 303752951, "FAMILY ID": 20066539, "BANK AC. NO.": "IDBI0001104000561990", "IFSC CODE": "IBKL0000001", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 42808, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9755316160", "ADDRESS": "VIVEK NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 6 [enrolled]: DIVYANSHI PIPLODIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
  'DIVYANSHI',
  'PIPLODIYA',
  '2014-01-02'::date,
  'A-492227762561',
  '304844343',
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
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
  '2026-27',
  '7',
  null,
  '60-18-L',
  '1862',
  null,
  '2018-06-27'::date,
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
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
  'father',
  'DILIP',
  'PVT. JOB',
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
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
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
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
  'RADHAGANJ - 32',
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
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
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
  'd9b4e975-2b36-4cae-bc7e-706f20f20fd6'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 6, "section": "enrolled", "data": {"MODE": "Local", "NAME": "DIVYANSHI", "SURNAME": "PIPLODIYA", "FATHER": "DILIP", "MOTHER": "REENA", "DOB": "02.01.2014", "ADM NO.": "60-18-L", "SCH. NO.": 1862, "ENROLL": null, "ADHAR CARD": "A-492227762561", "SSSMID": 304844343, "FAMILY ID": 45646309, "BANK AC. NO.": "BOI890010110006457", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "DHOBI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 43278, "BOARD R.N.": null, "ADM .CLASS": "L.K.G", "MOB. NO.": "M-9926875262", "ADDRESS": "RADHAGANJ - 32", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 7 [enrolled]: JYOTSNA DEWDA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'd43e2bd8-5468-445a-8fe0-e8f6d05815e4'::uuid,
  'JYOTSNA',
  'DEWDA',
  '2014-07-14'::date,
  'A-907271107519',
  '314621226',
  '34866655',
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
  'd43e2bd8-5468-445a-8fe0-e8f6d05815e4'::uuid,
  '2026-27',
  '7',
  null,
  '87-23-4',
  '2130',
  null,
  '2023-06-07'::date,
  '4th',
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
  'd43e2bd8-5468-445a-8fe0-e8f6d05815e4'::uuid,
  'father',
  'PRADEEP',
  'PVT. JOB',
  'M-8517817246',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd43e2bd8-5468-445a-8fe0-e8f6d05815e4'::uuid,
  'mother',
  'LADKUNWAR',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'd43e2bd8-5468-445a-8fe0-e8f6d05815e4'::uuid,
  'NIPANIYA',
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
  'd43e2bd8-5468-445a-8fe0-e8f6d05815e4'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 7, "section": "enrolled", "data": {"MODE": "BUS", "NAME": "JYOTSNA", "SURNAME": "DEWDA", "FATHER": "PRADEEP", "MOTHER": "LADKUNWAR", "DOB": "14.07.2014", "ADM NO.": "87-23-4", "SCH. NO.": 2130, "ENROLL": null, "ADHAR CARD": "A-907271107519", "SSSMID": 314621226, "FAMILY ID": 34866655, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2023-06-07 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "4th", "MOB. NO.": "M-8517817246", "ADDRESS": "NIPANIYA", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 8 [enrolled]: MAHEE THAPA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
  'MAHEE',
  'THAPA',
  '2014-04-12'::date,
  'A-702593814637',
  '197961395',
  '44079369',
  'HINDU',
  'THAPA',
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
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
  '2026-27',
  '7',
  null,
  '94-17-N',
  '1855',
  null,
  '2017-07-03'::date,
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
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
  'father',
  'BUDDHI',
  'NAGAR NIGAM',
  'M-9893443805',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
  'mother',
  'JHABA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
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
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
  null,
  'DB118510031343',
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
  '950c07a5-57ca-401a-aeff-9707c283dbce'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 8, "section": "enrolled", "data": {"MODE": "Local", "NAME": "MAHEE", "SURNAME": "THAPA", "FATHER": "BUDDHI", "MOTHER": "JHABA", "DOB": "12.04.2014", "ADM NO.": "94-17-N", "SCH. NO.": 1855, "ENROLL": null, "ADHAR CARD": "A-702593814637", "SSSMID": 197961395, "FAMILY ID": 44079369, "BANK AC. NO.": "DB118510031343", "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "THAPA", "CATE.": "OBC", "OCCUPATION": "NAGAR NIGAM", "ADMN.DATE": 42919, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9893443805", "ADDRESS": "MADHUBAN COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 9 [enrolled]: MANVI PATIDAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  'MANVI',
  'PATIDAR',
  '2014-10-20'::date,
  'A-479873570151',
  '304172221',
  '38360596',
  'HINDU',
  'KULMI',
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
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  '2026-27',
  '7',
  null,
  '70-17-N',
  '1877',
  null,
  '2017-07-05'::date,
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
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  'father',
  'PAWAN',
  'PVT. JOB',
  'M-7566725278',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  'mother',
  'POONAM',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  'RADHAGANJ -47',
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
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  null,
  'UNB568002010005923',
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
  '7ccc17a6-00ec-4894-9008-348358a74521'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 9, "section": "enrolled", "data": {"MODE": "Local", "NAME": "MANVI", "SURNAME": "PATIDAR", "FATHER": "PAWAN", "MOTHER": "POONAM", "DOB": "20.10.2014", "ADM NO.": "70-17-N", "SCH. NO.": 1877, "ENROLL": null, "ADHAR CARD": "A-479873570151", "SSSMID": 304172221, "FAMILY ID": 38360596, "BANK AC. NO.": "UNB568002010005923", "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "KULMI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 42921, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7566725278", "ADDRESS": "RADHAGANJ -47", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 10 [enrolled]: RISHABH MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
  'RISHABH',
  'MALVIYA',
  '2013-12-27'::date,
  'A-560140065673',
  '3096761O7',
  '38045278',
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
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
  '2026-27',
  '7',
  null,
  '14-19-U',
  '1878',
  null,
  '2019-04-04'::date,
  'U.K.G',
  null,
  'Local',
  'HIMALYA ACADEMY',
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
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
  'father',
  'SUNIL',
  'DRIVER',
  'M-799947556',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
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
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
  'VISHRAM BAGH,6-A',
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
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
  null,
  'SBI53052928682',
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
  'ad13ac62-3c7c-4f3e-8094-0bb8d59d7cb5'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 10, "section": "enrolled", "data": {"MODE": "Local", "NAME": "RISHABH", "SURNAME": "MALVIYA", "FATHER": "SUNIL", "MOTHER": "SUNITA", "DOB": "27-12-2013", "ADM NO.": "14-19-U", "SCH. NO.": 1878, "ENROLL": null, "ADHAR CARD": "A-560140065673", "SSSMID": "3096761O7", "FAMILY ID": 38045278, "BANK AC. NO.": "SBI53052928682", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "DRIVER", "ADMN.DATE": 43559, "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-799947556", "ADDRESS": "VISHRAM BAGH,6-A", "LAST SCHOOL": "HIMALYA ACADEMY"}}'::jsonb
);

-- CLASS 7th row 11 [enrolled]: SNEHAL GODER
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  'SNEHAL',
  'GODER',
  '2013-07-25'::date,
  'A-721741827252',
  '300912221',
  '25517842',
  'HINDU',
  'BHILALA',
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
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  '2026-27',
  '7',
  null,
  '103-19-U',
  '1856',
  null,
  '2019-08-06'::date,
  'U.K.G',
  null,
  'Local',
  'SUNRIES PUBLIC',
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
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  'father',
  'RAVINDRA',
  'POLICE',
  'M-91317O239O',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  'mother',
  'ANEETA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  'VRINDAVAN DHAM',
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
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  null,
  'SBI63005840414',
  'SBIN00030041',
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
  'b513534e-8af3-4430-ba07-6953cd1224c4'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 11, "section": "enrolled", "data": {"MODE": "Local", "NAME": "SNEHAL", "SURNAME": "GODER", "FATHER": "RAVINDRA", "MOTHER": "ANEETA", "DOB": "25.07.2013", "ADM NO.": "103-19-U", "SCH. NO.": 1856, "ENROLL": null, "ADHAR CARD": "A-721741827252", "SSSMID": 300912221, "FAMILY ID": 25517842, "BANK AC. NO.": "SBI63005840414", "IFSC CODE": "SBIN00030041", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "SC", "OCCUPATION": "POLICE", "ADMN.DATE": 43683, "BOARD R.N.": null, "ADM .CLASS": "U.K.G", "MOB. NO.": "M-91317O239O", "ADDRESS": "VRINDAVAN DHAM", "LAST SCHOOL": "SUNRIES PUBLIC"}}'::jsonb
);

-- CLASS 7th row 12 [enrolled]: VEDANSH PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  'VEDANSH',
  'PATEL',
  '2013-11-26'::date,
  'A-993414219017',
  '30073940',
  '20644773',
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
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  '2026-27',
  '7',
  null,
  '67-17-N',
  '1879',
  null,
  '2017-07-08'::date,
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
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  'father',
  'NILESH',
  null,
  'M-9926810774',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  'mother',
  'SHOBHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  'FATANPUR - 243',
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
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  null,
  'SBI88578236808',
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
  'e6bfd929-b5f7-48c9-b19c-cdf9b1fba683'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 12, "section": "enrolled", "data": {"MODE": "Local", "NAME": "VEDANSH", "SURNAME": "PATEL", "FATHER": "NILESH", "MOTHER": "SHOBHA", "DOB": "26.11.2013", "ADM NO.": "67-17-N", "SCH. NO.": 1879, "ENROLL": null, "ADHAR CARD": "A-993414219017", "SSSMID": 30073940, "FAMILY ID": 20644773, "BANK AC. NO.": "SBI88578236808", "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": 42924, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9926810774", "ADDRESS": "FATANPUR - 243", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 13 [enrolled]: VEERA PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
  'VEERA',
  'PATEL',
  '2014-04-29'::date,
  null,
  '305414139',
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
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
  '2026-27',
  '7',
  null,
  '109-17-N',
  '1887',
  null,
  '2017-08-05'::date,
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
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
  'father',
  'DEEPAK',
  'FARMER',
  'M-7909797429',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
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
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
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
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
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
  '9c3b7cee-957b-481b-9498-8efd212bade9'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 13, "section": "enrolled", "data": {"MODE": "Local", "NAME": "VEERA", "SURNAME": "PATEL", "FATHER": "DEEPAK", "MOTHER": "BASKANYA", "DOB": "29.04.2014", "ADM NO.": "109-17-N", "SCH. NO.": 1887, "ENROLL": null, "ADHAR CARD": null, "SSSMID": 305414139, "FAMILY ID": 45849673, "BANK AC. NO.": "HDFC50100188040335", "IFSC CODE": "HDFC0000887", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": 42952, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7909797429", "ADDRESS": "NAWDA", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 14 [enrolled]: VIRAT DONGALIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  'VIRAT',
  'DONGALIYA',
  '2015-03-05'::date,
  'A-953915442436',
  '314898319',
  '37045499',
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
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  '2026-27',
  '7',
  null,
  '91-23-4',
  '2128',
  null,
  '2023-07-08'::date,
  '4th',
  null,
  'Local',
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
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  'father',
  'MAHESH',
  'PVT. JOB',
  'M-7773848561',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  'mother',
  'SONA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  'REWABAG - 20',
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
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  null,
  'BOB07240100035304',
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
  '03d90151-6279-455a-bb65-772767afb24a'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 14, "section": "enrolled", "data": {"MODE": "Local", "NAME": "VIRAT", "SURNAME": "DONGALIYA", "FATHER": "MAHESH", "MOTHER": "SONA", "DOB": "05.03.2015", "ADM NO.": "91-23-4", "SCH. NO.": 2128, "ENROLL": null, "ADHAR CARD": "A-953915442436", "SSSMID": 314898319, "FAMILY ID": 37045499, "BANK AC. NO.": "BOB07240100035304", "IFSC CODE": "BARBODEWASX", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 45115, "BOARD R.N.": null, "ADM .CLASS": "4th", "MOB. NO.": "M-7773848561", "ADDRESS": "REWABAG - 20", "LAST SCHOOL": "EMERALD ACADEMY"}}'::jsonb
);

-- CLASS 7th row 15 [enrolled]: YATISH KUMAWAT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '89e3941f-63e6-4467-9713-480ccbd93c87'::uuid,
  'YATISH',
  'KUMAWAT',
  '2013-08-16'::date,
  'A-212642225174',
  '304129404',
  '24741530',
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
  '89e3941f-63e6-4467-9713-480ccbd93c87'::uuid,
  '2026-27',
  '7',
  null,
  '88-17-N',
  '1867',
  null,
  '2017-03-24'::date,
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
  '89e3941f-63e6-4467-9713-480ccbd93c87'::uuid,
  'father',
  'DHARMENDRA',
  null,
  'M-7049231472',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '89e3941f-63e6-4467-9713-480ccbd93c87'::uuid,
  'mother',
  'RITU',
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
  '89e3941f-63e6-4467-9713-480ccbd93c87'::uuid,
  null,
  'BOB07243100014738',
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
  '89e3941f-63e6-4467-9713-480ccbd93c87'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 15, "section": "enrolled", "data": {"MODE": "Local", "NAME": "YATISH", "SURNAME": "KUMAWAT", "FATHER": "DHARMENDRA", "MOTHER": "RITU", "DOB": "16.08.2013", "ADM NO.": "88-17-N", "SCH. NO.": 1867, "ENROLL": null, "ADHAR CARD": "A-212642225174", "SSSMID": 304129404, "FAMILY ID": 24741530, "BANK AC. NO.": "BOB07243100014738", "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "KUMAWAT", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": 42818, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7049231472", "ADDRESS": null, "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 16 [enrolled]: ARADHYA RAGHUVANSHI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  'ARADHYA',
  'RAGHUVANSHI',
  '2013-11-28'::date,
  'A-424978066676',
  '313735356',
  '25064630',
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
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  '2026-27',
  '7',
  null,
  null,
  '1955',
  null,
  null,
  null,
  null,
  'Local',
  'Shishu Niketan B.N.P',
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
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  'father',
  'RAVINDRA',
  'PVT. JOB',
  '9098544150',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  'mother',
  'SHRESHTHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  '24-Arjun Nagar Dewas',
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
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  null,
  'GB011110110001880',
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
  'f0ad36c1-ba8a-4841-b7fe-1d397870190d'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 16, "section": "enrolled", "data": {"MODE": "Local", "NAME": "ARADHYA", "SURNAME": "RAGHUVANSHI", "FATHER": "RAVINDRA", "MOTHER": "SHRESHTHA", "DOB": "28.11.2013", "ADM NO.": null, "SCH. NO.": 1955, "ENROLL": null, "ADHAR CARD": "A-424978066676", "SSSMID": 313735356, "FAMILY ID": 25064630, "BANK AC. NO.": "GB011110110001880", "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": null, "BOARD R.N.": null, "ADM .CLASS": null, "MOB. NO.": 9098544150, "ADDRESS": "24-Arjun Nagar Dewas", "LAST SCHOOL": "Shishu Niketan B.N.P"}}'::jsonb
);

-- CLASS 7th row 17 [enrolled]: MAHI NO
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
  'MAHI',
  'NO',
  '2013-08-31'::date,
  'A.263170969856',
  '300739478',
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
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
  '2026-27',
  '7',
  null,
  '20-24-5',
  '2211',
  null,
  '2024-04-18'::date,
  '5th',
  null,
  'Local',
  'NEW MALWANCHAL',
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
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
  'father',
  'ARJUN',
  'ARMY',
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
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
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
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
  '32-FATANPUR',
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
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
  null,
  'SBI-40006015988',
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
  '3f7a807d-5bbe-4e41-bc08-2de5b3799754'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 17, "section": "enrolled", "data": {"MODE": "Local", "NAME": "MAHI", "SURNAME": "NO", "FATHER": "ARJUN", "MOTHER": "NARMADA", "DOB": "31.08.2013", "ADM NO.": "20-24-5", "SCH. NO.": 2211, "ENROLL": null, "ADHAR CARD": "A.263170969856", "SSSMID": 300739478, "FAMILY ID": 45188658, "BANK AC. NO.": "SBI-40006015988", "IFSC CODE": "SBIN0030511", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "ARMY", "ADMN.DATE": 45400, "BOARD R.N.": null, "ADM .CLASS": "5th", "MOB. NO.": 9424807164, "ADDRESS": "32-FATANPUR", "LAST SCHOOL": "NEW MALWANCHAL"}}'::jsonb
);

-- CLASS 7th row 18 [enrolled]: KANISHKA DHAKAD
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
  'KANISHKA',
  'DHAKAD',
  '2014-04-07'::date,
  'A. 361658747716',
  '307906099',
  '46891475',
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
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
  '2026-27',
  '7',
  null,
  '17-24-5',
  '2183',
  null,
  '2024-04-03'::date,
  '5th',
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
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
  'father',
  'JITENDRA',
  'HOSPTIL',
  '9098204684',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
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
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
  'SAI DHAM -175',
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
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
  null,
  'UNION BANK-520441028355494',
  'UBIN0912093',
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
  '5ba98730-fb1d-406e-b752-a1a61e13f227'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 18, "section": "enrolled", "data": {"MODE": "Local", "NAME": "KANISHKA", "SURNAME": "DHAKAD", "FATHER": "JITENDRA", "MOTHER": "NAVRATNA", "DOB": "07.04.2014", "ADM NO.": "17-24-5", "SCH. NO.": 2183, "ENROLL": null, "ADHAR CARD": "A. 361658747716", "SSSMID": 307906099, "FAMILY ID": 46891475, "BANK AC. NO.": "UNION BANK-520441028355494", "IFSC CODE": "UBIN0912093", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "HOSPTIL", "ADMN.DATE": 45385, "BOARD R.N.": null, "ADM .CLASS": "5th", "MOB. NO.": 9098204684, "ADDRESS": "SAI DHAM -175", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 19 [enrolled]: DEVRAJ SINGH DADIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
  'DEVRAJ SINGH',
  'DADIYA',
  '2014-03-01'::date,
  'A-379422700348',
  '304209690',
  '45489955',
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
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
  '2026-27',
  '7',
  null,
  '25-27-6th',
  '2291',
  null,
  '2025-12-06'::date,
  '6th',
  null,
  null,
  'JAYAMALA CONVENT UJJAIN',
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
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
  'father',
  'ARJUN SINGH',
  'CISF',
  '9061754698',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
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
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
  'RAMRHIM CHOURAHA DEWAS',
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
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
  null,
  'SBI- 30789494293',
  'SBIN0004615',
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
  '34c6dc4d-fb5c-4c1e-b9ce-bae173c60a58'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 19, "section": "enrolled", "data": {"MODE": null, "NAME": "DEVRAJ SINGH", "SURNAME": "DADIYA", "FATHER": "ARJUN SINGH", "MOTHER": "MANJU", "DOB": "01.03.2014", "ADM NO.": "25-27-6th", "SCH. NO.": 2291, "ENROLL": null, "ADHAR CARD": "A-379422700348", "SSSMID": 304209690, "FAMILY ID": 45489955, "BANK AC. NO.": "SBI- 30789494293", "IFSC CODE": "SBIN0004615", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "CISF", "ADMN.DATE": "2025-12-06 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "6th", "MOB. NO.": 9061754698, "ADDRESS": "RAMRHIM CHOURAHA DEWAS", "LAST SCHOOL": "JAYAMALA CONVENT UJJAIN"}}'::jsonb
);

-- CLASS 7th row 20 [enrolled]: CHITRANSH NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
  'CHITRANSH',
  'NAGAR',
  '2013-09-21'::date,
  '967351715096',
  '303310787',
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
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
  '2026-27',
  '7',
  null,
  '59-24-5',
  '2239',
  null,
  '2024-06-22'::date,
  '5th',
  null,
  'Local',
  'VIDYA VALLEY PUBLIC SCHOOL',
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
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
  'father',
  'RAJENDRA',
  null,
  '8889032900',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
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
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
  'MADHV BAN NAGAR',
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
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
  null,
  'AXIS-923010056525057',
  'VTIB0000456',
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
  'c5ac5420-4cd9-4ff8-80c7-815e66e648a1'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 20, "section": "enrolled", "data": {"MODE": "Local", "NAME": "CHITRANSH", "SURNAME": "NAGAR", "FATHER": "RAJENDRA", "MOTHER": "RANI", "DOB": "21.09.2013", "ADM NO.": "59-24-5", "SCH. NO.": 2239, "ENROLL": null, "ADHAR CARD": 967351715096, "SSSMID": 303310787, "FAMILY ID": 47190862, "BANK AC. NO.": "AXIS-923010056525057", "IFSC CODE": "VTIB0000456", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": 45465, "BOARD R.N.": null, "ADM .CLASS": "5th", "MOB. NO.": 8889032900, "ADDRESS": "MADHV BAN NAGAR", "LAST SCHOOL": "VIDYA VALLEY PUBLIC SCHOOL"}}'::jsonb
);

-- CLASS 7th row 21 [enrolled]: YASHWARDHAN RAJ SINGH BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  'YASHWARDHAN RAJ SINGH',
  'BAIS',
  '2014-04-04'::date,
  null,
  '306929784',
  '42751508',
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
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  '2026-27',
  '7',
  null,
  '25-63-6th',
  '2298',
  null,
  '2025-03-07'::date,
  '6th',
  null,
  null,
  'THE HIMALAYA ACADEMY DEWAS',
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
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  'father',
  'YUVRAJ SINGH',
  null,
  '9907046647',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  'mother',
  'SEFALI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  'VISHRAM BAGH DEWAS',
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
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  null,
  'SBI-53010718903',
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
  'b7ab2652-8238-4597-a14a-1467b52f7d2b'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 21, "section": "enrolled", "data": {"MODE": null, "NAME": "YASHWARDHAN RAJ SINGH", "SURNAME": "BAIS", "FATHER": "YUVRAJ SINGH", "MOTHER": "SEFALI", "DOB": "2014-04-04 00:00:00", "ADM NO.": "25-63-6th", "SCH. NO.": 2298, "ENROLL": null, "ADHAR CARD": null, "SSSMID": 306929784, "FAMILY ID": 42751508, "BANK AC. NO.": "SBI-53010718903", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": null, "ADMN.DATE": "2025-03-07 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "6th", "MOB. NO.": 9907046647, "ADDRESS": "VISHRAM BAGH DEWAS", "LAST SCHOOL": "THE HIMALAYA ACADEMY DEWAS"}}'::jsonb
);

-- CLASS 7th row 22 [enrolled]: KAVYA CHOUDHARY
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  'KAVYA',
  'CHOUDHARY',
  '2013-05-01'::date,
  'A- 918510582703',
  '302702109',
  '24092949',
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
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  '2026-27',
  '7',
  null,
  '26-44-7th',
  '2359',
  null,
  '2026-06-24'::date,
  '7th',
  null,
  null,
  'R9 INTERNATIONAL SCHOOL',
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
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  'father',
  'DINESH',
  'PVT. JOB',
  '9977548509',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  'mother',
  'SHALINI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  'SIYA - 334',
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
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  null,
  'HDFC08871910005232',
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
  '0ba5e781-f8cc-4e5d-802d-f96f75d1ecc2'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 22, "section": "enrolled", "data": {"MODE": null, "NAME": "KAVYA", "SURNAME": "CHOUDHARY", "FATHER": "DINESH", "MOTHER": "SHALINI", "DOB": "2013-05-01 00:00:00", "ADM NO.": "26-44-7th", "SCH. NO.": 2359, "ENROLL": null, "ADHAR CARD": "A- 918510582703", "SSSMID": 302702109, "FAMILY ID": 24092949, "BANK AC. NO.": "HDFC08871910005232", "IFSC CODE": "HDFC0000887", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-06-24 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "7th", "MOB. NO.": 9977548509, "ADDRESS": "SIYA - 334", "LAST SCHOOL": "R9 INTERNATIONAL SCHOOL"}}'::jsonb
);

-- CLASS 7th row 23 [enrolled]: KAVYANSHI REKWAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '691070cc-f788-477b-8b50-86e65234c749'::uuid,
  'KAVYANSHI',
  'REKWAL',
  '2014-10-15'::date,
  'A-772322137696',
  '105560668',
  '21360855',
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
  '691070cc-f788-477b-8b50-86e65234c749'::uuid,
  '2026-27',
  '7',
  null,
  '26-49-7th',
  '2363',
  null,
  '2026-05-05'::date,
  '7th',
  null,
  null,
  'BRILIANT ACADEMY INDORE',
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
  '691070cc-f788-477b-8b50-86e65234c749'::uuid,
  'father',
  'JITENDRA',
  'PVT. JOB',
  '9407899220',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '691070cc-f788-477b-8b50-86e65234c749'::uuid,
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
  '691070cc-f788-477b-8b50-86e65234c749'::uuid,
  'MANGAL MURTI NAGAR - 28',
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
  '691070cc-f788-477b-8b50-86e65234c749'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 23, "section": "enrolled", "data": {"MODE": null, "NAME": "KAVYANSHI", "SURNAME": "REKWAL", "FATHER": "JITENDRA", "MOTHER": "PRIYANKA", "DOB": "2014-10-15 00:00:00", "ADM NO.": "26-49-7th", "SCH. NO.": 2363, "ENROLL": null, "ADHAR CARD": "A-772322137696", "SSSMID": 105560668, "FAMILY ID": 21360855, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-05-05 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "7th", "MOB. NO.": 9407899220, "ADDRESS": "MANGAL MURTI NAGAR - 28", "LAST SCHOOL": "BRILIANT ACADEMY INDORE"}}'::jsonb
);

-- CLASS 7th row 24 [enrolled]: KUSUM BORASI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
  'KUSUM',
  'BORASI',
  '2014-08-21'::date,
  'A-330133971150',
  '310173715',
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
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
  '2026-27',
  '7',
  null,
  '26-58-7th',
  '2370',
  null,
  '2026-05-11'::date,
  '7th',
  null,
  null,
  'JUPITER INTERNATIONAL ACADEMY INDORE',
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
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
  'father',
  'GANESH',
  'GOVT. JOB',
  '9009876004, 9340272330',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
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
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
  'GREEN VALLI - 126',
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
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
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
  '374c1c0a-e22a-498b-b782-642aa22aaf43'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 24, "section": "enrolled", "data": {"MODE": null, "NAME": "KUSUM", "SURNAME": "BORASI", "FATHER": "GANESH", "MOTHER": "SUMAN", "DOB": "2014-08-21 00:00:00", "ADM NO.": "26-58-7th", "SCH. NO.": 2370, "ENROLL": null, "ADHAR CARD": "A-330133971150", "SSSMID": 310173715, "FAMILY ID": 47944336, "BANK AC. NO.": "BANK OF INDIA", "IFSC CODE": "BKID0008815", "RELIGION": "HINDU", "CASTE": "PASI", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2026-05-11 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "7th", "MOB. NO.": "9009876004, 9340272330", "ADDRESS": "GREEN VALLI - 126", "LAST SCHOOL": "JUPITER INTERNATIONAL ACADEMY INDORE"}}'::jsonb
);

-- CLASS 7th row 28 [rte]: BHUMI CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  'BHUMI',
  'CHOUHAN',
  '2013-11-11'::date,
  'A-519607135462',
  '302020072',
  '36601880',
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
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  '2026-27',
  '7',
  null,
  '54-17-N',
  '2182',
  null,
  '2017-07-10'::date,
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
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  'father',
  'VIKAS',
  'PVT. JOB',
  'M-8120274088',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  'mother',
  'SHITAL',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  'HANUMAN BAKHAL',
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
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  null,
  'SBI34990702634',
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
  'c3812b00-b2af-43a8-81ac-18a2b2a2f9c6'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 28, "section": "rte", "data": {"MODE": "Local", "NAME": "BHUMI", "SURNAME": "CHOUHAN", "FATHER": "VIKAS", "MOTHER": "SHITAL", "DOB": "11.11.2013", "ADM NO.": "54-17-N", "SCH. NO.": 2182, "ENROLL": null, "ADHAR CARD": "A-519607135462", "SSSMID": 302020072, "FAMILY ID": 36601880, "BANK AC. NO.": "SBI34990702634", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 42926, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-8120274088", "ADDRESS": "HANUMAN BAKHAL", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 29 [rte]: HIMANSHI DEVDA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
  'HIMANSHI',
  'DEVDA',
  '2014-03-12'::date,
  'A-240744304786',
  '301159264',
  '34866655',
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
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
  '2026-27',
  '7',
  null,
  '55-17-N',
  '1809',
  null,
  '2017-06-20'::date,
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
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
  'father',
  'SANDEEP',
  'PVT. JOB',
  'M-7697165448',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
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
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
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
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
  null,
  'HDFC50100297884942',
  'HDFC000887',
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
  'd4930315-1b4e-47cb-929b-04e304b7e8a6'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 29, "section": "rte", "data": {"MODE": "Local", "NAME": "HIMANSHI", "SURNAME": "DEVDA", "FATHER": "SANDEEP", "MOTHER": "NEETU", "DOB": "12.03.2014", "ADM NO.": "55-17-N", "SCH. NO.": 1809, "ENROLL": null, "ADHAR CARD": "A-240744304786", "SSSMID": 301159264, "FAMILY ID": 34866655, "BANK AC. NO.": "HDFC50100297884942", "IFSC CODE": "HDFC000887", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 42906, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-7697165448", "ADDRESS": "MADHUBAN COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 30 [rte]: RISHABH GOUD
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  'RISHABH',
  'GOUD',
  '2013-08-18'::date,
  'A-204183544306',
  '195477705',
  '43532583',
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
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  '2026-27',
  '7',
  null,
  '57-17-N',
  '1814',
  null,
  '2017-06-19'::date,
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
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  'father',
  'JEEVAN',
  null,
  'M-9926185468',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  'mother',
  'VARSHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  'MAHAKAL COLONY -201/8',
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
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  null,
  'DB118510034723',
  'BKDN0811185',
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
  '3a373194-df46-4e72-b39a-ad1e8a9951a9'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 30, "section": "rte", "data": {"MODE": "Local", "NAME": "RISHABH", "SURNAME": "GOUD", "FATHER": "JEEVAN", "MOTHER": "VARSHA", "DOB": "18.08.2013", "ADM NO.": "57-17-N", "SCH. NO.": 1814, "ENROLL": null, "ADHAR CARD": "A-204183544306", "SSSMID": 195477705, "FAMILY ID": 43532583, "BANK AC. NO.": "DB118510034723", "IFSC CODE": "BKDN0811185", "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.": "OBC", "OCCUPATION": null, "ADMN.DATE": 42905, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9926185468", "ADDRESS": "MAHAKAL COLONY -201/8", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 31 [rte]: SARTHAK RATHORE
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
  'SARTHAK',
  'RATHORE',
  '2014-01-29'::date,
  'A-745565211599',
  '191886811',
  '42719293',
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
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
  '2026-27',
  '7',
  null,
  '59-17-N',
  '1808',
  null,
  '2017-06-23'::date,
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
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
  'father',
  'RAVI',
  'PVT. JOB',
  'M-9993833373',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
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
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
  'MADHUBAN COLONY - 28',
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
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
  null,
  'SDB78312010013573',
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
  '7c66745c-bc99-444d-be2f-3286765efc10'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 31, "section": "rte", "data": {"MODE": "Local", "NAME": "SARTHAK", "SURNAME": "RATHORE", "FATHER": "RAVI", "MOTHER": "SUMAN", "DOB": "29.01.2014", "ADM NO.": "59-17-N", "SCH. NO.": 1808, "ENROLL": null, "ADHAR CARD": "A-745565211599", "SSSMID": 191886811, "FAMILY ID": 42719293, "BANK AC. NO.": "SDB78312010013573", "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "HARIJAN", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 42909, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9993833373", "ADDRESS": "MADHUBAN COLONY - 28", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 32 [rte]: TANISH GEHLODIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  'TANISH',
  'GEHLODIYA',
  '2014-06-11'::date,
  'A-783621793550',
  '302584057',
  '20466407',
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
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  '2026-27',
  '7',
  null,
  '58-17-N',
  '1812',
  null,
  '2017-06-19'::date,
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
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  'father',
  'PRITAM',
  null,
  'M-9098363383',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  'mother',
  'DIPIKA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  'MAHAKAL COLONY - 147',
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
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  null,
  'SBI32072963947',
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
  '2ce8794f-648b-4a18-a3ed-90ce000d731e'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 32, "section": "rte", "data": {"MODE": "Local", "NAME": "TANISH", "SURNAME": "GEHLODIYA", "FATHER": "PRITAM", "MOTHER": "DIPIKA", "DOB": "11.06.2014", "ADM NO.": "58-17-N", "SCH. NO.": 1812, "ENROLL": null, "ADHAR CARD": "A-783621793550", "SSSMID": 302584057, "FAMILY ID": 20466407, "BANK AC. NO.": "SBI32072963947", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": 42905, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9098363383", "ADDRESS": "MAHAKAL COLONY - 147", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 33 [rte]: YOGITA JAISWAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
  'YOGITA',
  'JAISWAL',
  '2014-06-14'::date,
  'A-386018808481',
  '303721946',
  '36621956',
  'HINDU',
  'JAISWAL',
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
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
  '2026-27',
  '7',
  null,
  '60-17-N',
  '1813',
  null,
  '2017-06-23'::date,
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
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
  'father',
  'RAJESH',
  'PVT. JOB',
  'M-9977478295',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
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
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
  'RAJABAG COLONY',
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
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
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
  'f3924b24-b21f-4fa6-a511-eeaebcfceb2b'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 33, "section": "rte", "data": {"MODE": "Local", "NAME": "YOGITA", "SURNAME": "JAISWAL", "FATHER": "RAJESH", "MOTHER": "AARTI", "DOB": "14.06.2014", "ADM NO.": "60-17-N", "SCH. NO.": 1813, "ENROLL": null, "ADHAR CARD": "A-386018808481", "SSSMID": 303721946, "FAMILY ID": 36621956, "BANK AC. NO.": "SBI32141508856", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "JAISWAL", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": 42909, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9977478295", "ADDRESS": "RAJABAG COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 7th row 36 [left]: HARSHIT MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
  'HARSHIT',
  'MALVIYA',
  '2014-11-13'::date,
  'A-921053704680',
  '316145721',
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
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
  '2026-27',
  '7',
  null,
  '89-17-N',
  '1863',
  null,
  '2017-07-09'::date,
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
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
  'father',
  'JITENDRA',
  'BUSINESS',
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
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
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
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
  'ARJUN NAGAR -20',
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
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
  null,
  'UNB373502010022743',
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
  '1e96e579-ebdf-431a-a687-8e24a98c105c'::uuid,
  '2026-27',
  '7',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 7th',
  '{"sheet_name": "CLASS 7th", "row_number": 36, "section": "left", "data": {"MODE": "Local", "NAME": "HARSHIT", "SURNAME": "MALVIYA", "FATHER": "JITENDRA", "MOTHER": "KAVITA", "DOB": "13.11.2014", "ADM NO.": "89-17-N", "SCH. NO.": 1863, "ENROLL": null, "ADHAR CARD": "A-921053704680", "SSSMID": 316145721, "FAMILY ID": 47556993, "BANK AC. NO.": "UNB373502010022743", "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "BUSINESS", "ADMN.DATE": 42925, "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9926464853", "ADDRESS": "ARJUN NAGAR -20", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 8th row 3 [enrolled]: AANCHAL KELWA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
  'AANCHAL',
  'KELWA',
  '2012-10-02'::date,
  'A-847047765893',
  '115688308',
  '23858637',
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
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1797',
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
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
  'father',
  'SUNIL',
  null,
  'M-9826373043',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
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
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
  'RADHAGANJ - 46B',
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
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
  null,
  'DB118510023869',
  'BKDN0811185',
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
  '230a7ff2-8003-474c-b4d5-8a29920f76d9'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 3, "section": "enrolled", "data": {"NAME": "AANCHAL", "SURNAME": "KELWA", "FATHER": "SUNIL", "MOTHER": "MONIKA", "DOB": "02.10.2012", "SCH. NO.": 1797, "ADHAR CARD": "A-847047765893", "SSSMID": 115688308, "FAMILY ID": 23858637, "BANK AC. NO.": "DB118510023869", "IFSC CODE": "BKDN0811185", "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.": "OBC", "MOB. NO.": "M-9826373043", "ADDRESS": "RADHAGANJ - 46B"}}'::jsonb
);

-- CLASS 8th row 4 [enrolled]: ARADHYA BHATI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
  'ARADHYA',
  'BHATI',
  '2012-12-17'::date,
  'A-35967471619',
  '183674337',
  '40788617',
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
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1800',
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
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
  'father',
  'AJAY',
  null,
  'M-9713713106',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
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
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
  'RADHAGANJ -23',
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
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
  null,
  '75901509692',
  'ICICI0000759',
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
  'd9851fba-80e6-4209-91ea-6cb0189149a7'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 4, "section": "enrolled", "data": {"NAME": "ARADHYA", "SURNAME": "BHATI", "FATHER": "AJAY", "MOTHER": "POOJA", "DOB": "17.12.2012", "SCH. NO.": 1800, "ADHAR CARD": "A-35967471619", "SSSMID": 183674337, "FAMILY ID": 40788617, "BANK AC. NO.": 75901509692, "IFSC CODE": "ICICI0000759", "RELIGION": "HINDU", "CASTE": "SENDHAV", "CATE.": "GEN", "MOB. NO.": "M-9713713106", "ADDRESS": "RADHAGANJ -23"}}'::jsonb
);

-- CLASS 8th row 5 [enrolled]: DIKSHA CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
  'DIKSHA',
  'CHOUHAN',
  '2012-12-21'::date,
  'A-763885729840',
  '104608525',
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
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1786',
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
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
  'father',
  'SHIVPAL',
  null,
  'M-9977768999',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
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
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
  'MANGAL MURTI - 24',
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
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
  null,
  'BOI890010110004617',
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
  'e9b7d981-3c69-4bbb-8742-e2a76a1c42b2'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 5, "section": "enrolled", "data": {"NAME": "DIKSHA", "SURNAME": "CHOUHAN", "FATHER": "SHIVPAL", "MOTHER": "RADHA", "DOB": "21.12.2012", "SCH. NO.": 1786, "ADHAR CARD": "A-763885729840", "SSSMID": 104608525, "FAMILY ID": 21125289, "BANK AC. NO.": "BOI890010110004617", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-9977768999", "ADDRESS": "MANGAL MURTI - 24"}}'::jsonb
);

-- CLASS 8th row 6 [enrolled]: HARSHITA PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
  'HARSHITA',
  'PARMAR',
  '2012-11-05'::date,
  'A-583251649306',
  '304447478',
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
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1734',
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
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
  'father',
  'SUNIL',
  null,
  'M-9617641116,',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
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
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
  'NATH MOHLLA - 55/1',
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
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
  null,
  'BKID890010110018022',
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
  '0ab7c33d-f4fc-4e72-be79-a6bdbf7980f5'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 6, "section": "enrolled", "data": {"NAME": "HARSHITA", "SURNAME": "PARMAR", "FATHER": "SUNIL", "MOTHER": "SONAM", "DOB": "05.11.2012", "SCH. NO.": 1734, "ADHAR CARD": "A-583251649306", "SSSMID": 304447478, "FAMILY ID": 45534746, "BANK AC. NO.": "BKID890010110018022", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "OBC", "MOB. NO.": "M-9617641116,", "ADDRESS": "NATH MOHLLA - 55/1"}}'::jsonb
);

-- CLASS 8th row 7 [enrolled]: PRINCE KUSHWAH
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
  'PRINCE',
  'KUSHWAH',
  '2012-09-16'::date,
  'A-833782173624',
  '190359630',
  '42383087',
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
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1821',
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
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
  'father',
  'JITENDRA',
  null,
  'M-7898489864',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
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
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
  'NAI AWADI - 11/11',
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
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
  null,
  'CNRB2716101008871',
  'CNRB0017831',
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
  '08cbced7-bbc6-4190-bf83-55041d361e9d'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 7, "section": "enrolled", "data": {"NAME": "PRINCE", "SURNAME": "KUSHWAH", "FATHER": "JITENDRA", "MOTHER": "NIRMALA", "DOB": "16.09.2012", "SCH. NO.": 1821, "ADHAR CARD": "A-833782173624", "SSSMID": 190359630, "FAMILY ID": 42383087, "BANK AC. NO.": "CNRB2716101008871", "IFSC CODE": "CNRB0017831", "RELIGION": "HINDU", "CASTE": "KACHI", "CATE.": "OBC", "MOB. NO.": "M-7898489864", "ADDRESS": "NAI AWADI - 11/11"}}'::jsonb
);

-- CLASS 8th row 8 [enrolled]: PRIYANSHI PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
  'PRIYANSHI',
  'PARMAR',
  '2012-11-05'::date,
  'A-666583456623',
  '304447479',
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
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1733',
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
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
  'father',
  'SUNIL',
  null,
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
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
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
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
  'NATH MOHLLA - 55/1',
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
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
  null,
  'BKID890010110018022',
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
  'ec255f9a-1edd-469b-adf0-aa26d6951214'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 8, "section": "enrolled", "data": {"NAME": "PRIYANSHI", "SURNAME": "PARMAR", "FATHER": "SUNIL", "MOTHER": "SONAM", "DOB": "05.11.2012", "SCH. NO.": 1733, "ADHAR CARD": "A-666583456623", "SSSMID": 304447479, "FAMILY ID": 45534746, "BANK AC. NO.": "BKID890010110018022", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "OBC", "MOB. NO.": "M-8839535537", "ADDRESS": "NATH MOHLLA - 55/1"}}'::jsonb
);

-- CLASS 8th row 9 [enrolled]: RIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
  'RIYA',
  null,
  '2013-03-29'::date,
  'A-734830822046',
  '195837906',
  '43614790',
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
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1735',
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
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
  'father',
  'BHAGIRATH',
  null,
  'M-7566790429',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
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
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
  'BNP COLONY - 1453',
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
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
  null,
  'SBI32784046820',
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
  'e03036a7-d5e2-467a-90b8-311e5af96481'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 9, "section": "enrolled", "data": {"NAME": "RIYA", "SURNAME": null, "FATHER": "BHAGIRATH", "MOTHER": "REENA", "DOB": "29.03.2013", "SCH. NO.": 1735, "ADHAR CARD": "A-734830822046", "SSSMID": 195837906, "FAMILY ID": 43614790, "BANK AC. NO.": "SBI32784046820", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": "M-7566790429", "ADDRESS": "BNP COLONY - 1453"}}'::jsonb
);

-- CLASS 8th row 10 [enrolled]: SAMARTH VERMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
  'SAMARTH',
  'VERMA',
  '2013-02-09'::date,
  'A-534623407475',
  '305626578',
  '38478423',
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
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1741',
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
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
  'father',
  'HEMANT',
  null,
  'M-8319943756',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
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
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
  'CHAMUNDAPURI -22',
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
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
  null,
  'OBC11502191016243',
  'ORBC0101150',
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
  '7e140b1c-69f3-4062-a2a5-7d43f0bd84dd'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 10, "section": "enrolled", "data": {"NAME": "SAMARTH", "SURNAME": "VERMA", "FATHER": "HEMANT", "MOTHER": "ANJU", "DOB": "2013-02-09 00:00:00", "SCH. NO.": 1741, "ADHAR CARD": "A-534623407475", "SSSMID": 305626578, "FAMILY ID": 38478423, "BANK AC. NO.": "OBC11502191016243", "IFSC CODE": "ORBC0101150", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "MOB. NO.": "M-8319943756", "ADDRESS": "CHAMUNDAPURI -22"}}'::jsonb
);

-- CLASS 8th row 11 [enrolled]: SHRADHA PATIDAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
  'SHRADHA',
  'PATIDAR',
  '2012-10-26'::date,
  'A-304108442257',
  '304498019',
  '45549043',
  'HINDU',
  'PATIDAR',
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
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1732',
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
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
  'father',
  'KISHORE',
  null,
  'M-9977825562',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
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
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
  'CHAMUNDA PALACE - 22',
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
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
  null,
  'VSS1497',
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
  '16b2578c-575e-4d34-8709-7372920d0428'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 11, "section": "enrolled", "data": {"NAME": "SHRADHA", "SURNAME": "PATIDAR", "FATHER": "KISHORE", "MOTHER": "LAKSHMI", "DOB": "26.10.2012", "SCH. NO.": 1732, "ADHAR CARD": "A-304108442257", "SSSMID": 304498019, "FAMILY ID": 45549043, "BANK AC. NO.": "VSS1497", "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "PATIDAR", "CATE.": "OBC", "MOB. NO.": "M-9977825562", "ADDRESS": "CHAMUNDA PALACE - 22"}}'::jsonb
);

-- CLASS 8th row 12 [enrolled]: SHRADHA SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
  'SHRADHA',
  'SOLANKI',
  '2012-11-21'::date,
  'A-229027631954',
  '305666318',
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
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1739',
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
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
  'father',
  'DHARMENDRA',
  null,
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
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
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
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
  'MADHUBAN COLONY - 25',
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
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
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
  'c3b6823b-4ebd-4125-b4f8-92b3ebe88a4d'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 12, "section": "enrolled", "data": {"NAME": "SHRADHA", "SURNAME": "SOLANKI", "FATHER": "DHARMENDRA", "MOTHER": "REENA", "DOB": "21.11.2012", "SCH. NO.": 1739, "ADHAR CARD": "A-229027631954", "SSSMID": 305666318, "FAMILY ID": 45947587, "BANK AC. NO.": "SBI32364700239", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-9691338553", "ADDRESS": "MADHUBAN COLONY - 25"}}'::jsonb
);

-- CLASS 8th row 13 [enrolled]: SRISHTI JHAROKHA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
  'SRISHTI',
  'JHAROKHA',
  '2012-07-14'::date,
  'A-336042076788',
  '102347406',
  '20566050',
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
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1749',
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
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
  'father',
  'OMPRAKASH',
  null,
  'M-9907280036',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
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
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
  'ARJUN NAGHAR',
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
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
  null,
  'BOI901010100021980',
  'BKID0009010',
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
  '8b842c90-bc8e-4130-a131-654b528267c2'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 13, "section": "enrolled", "data": {"NAME": "SRISHTI", "SURNAME": "JHAROKHA", "FATHER": "OMPRAKASH", "MOTHER": "SEEMA", "DOB": "14.07.2012", "SCH. NO.": 1749, "ADHAR CARD": "A-336042076788", "SSSMID": 102347406, "FAMILY ID": 20566050, "BANK AC. NO.": "BOI901010100021980", "IFSC CODE": "BKID0009010", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-9907280036", "ADDRESS": "ARJUN NAGHAR"}}'::jsonb
);

-- CLASS 8th row 14 [enrolled]: SUBHANGI SILORIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
  'SUBHANGI',
  'SILORIYA',
  '2013-01-11'::date,
  'A-768441006201',
  '304038090',
  '22019179',
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
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1904',
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
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
  'father',
  'KAMAL',
  null,
  'M-9630549334',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
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
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
  'CHAMUNDA PALACE - 9/1',
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
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
  null,
  'SBIN30117585122',
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
  '7a9b43db-099e-4da5-92ef-cde4f73b3d72'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 14, "section": "enrolled", "data": {"NAME": "SUBHANGI", "SURNAME": "SILORIYA", "FATHER": "KAMAL", "MOTHER": "KOMAL", "DOB": "11.01.2013", "SCH. NO.": 1904, "ADHAR CARD": "A-768441006201", "SSSMID": 304038090, "FAMILY ID": 22019179, "BANK AC. NO.": "SBIN30117585122", "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": "M-9630549334", "ADDRESS": "CHAMUNDA PALACE - 9/1"}}'::jsonb
);

-- CLASS 8th row 15 [enrolled]: VAIBHAV MUKATI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
  'VAIBHAV',
  'MUKATI',
  '2013-08-18'::date,
  'A-884412947718',
  '198848085',
  '22062006',
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
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1832',
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
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
  'father',
  'KRISHNAKANT',
  null,
  'M-9926194395',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
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
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
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
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
  null,
  'SBI20310699926',
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
  '0b3080e2-5d3c-41a8-b822-5cd85993cef8'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 15, "section": "enrolled", "data": {"NAME": "VAIBHAV", "SURNAME": "MUKATI", "FATHER": "KRISHNAKANT", "MOTHER": "MANJU", "DOB": "18.08.2013", "SCH. NO.": 1832, "ADHAR CARD": "A-884412947718", "SSSMID": 198848085, "FAMILY ID": 22062006, "BANK AC. NO.": "SBI20310699926", "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": "M-9926194395", "ADDRESS": "NAWDA"}}'::jsonb
);

-- CLASS 8th row 16 [enrolled]: NAINA YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
  'NAINA',
  'YADAV',
  '2013-12-02'::date,
  'A-489533438492',
  '301216971',
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
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2024',
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
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
  'father',
  'ROOP SINGH',
  null,
  'M-9285508021',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
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
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
  'BHAWANI SAGAR',
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
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
  null,
  'CBI654102040443',
  'CBINOMPDCAJ',
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
  'ac2afd72-71f3-4288-9448-e1c4121793cb'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 16, "section": "enrolled", "data": {"NAME": "NAINA", "SURNAME": "YADAV", "FATHER": "ROOP SINGH", "MOTHER": "NIRMALA", "DOB": "02.12.2013", "SCH. NO.": 2024, "ADHAR CARD": "A-489533438492", "SSSMID": 301216971, "FAMILY ID": 44834086, "BANK AC. NO.": "CBI654102040443", "IFSC CODE": "CBINOMPDCAJ", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": "M-9285508021", "ADDRESS": "BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 8th row 17 [enrolled]: MANISHA SIRWAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  'MANISHA',
  'SIRWAL',
  null,
  'A-960766361557',
  '321352678',
  '50516287',
  'HINDU',
  'SONAR',
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
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2127',
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
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  'father',
  'CHANDAN',
  null,
  'M-9893201037',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  'mother',
  'RINKUMONI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  'SHIVOM STATE',
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
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  null,
  null,
  'punb0150500',
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
  'c42c2731-760b-4fa9-8ae2-1d8ace6a5f74'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 17, "section": "enrolled", "data": {"NAME": "MANISHA", "SURNAME": "SIRWAL", "FATHER": "CHANDAN", "MOTHER": "RINKUMONI", "DOB": 306070303, "SCH. NO.": 2127, "ADHAR CARD": "A-960766361557", "SSSMID": 321352678, "FAMILY ID": 50516287, "BANK AC. NO.": null, "IFSC CODE": "punb0150500", "RELIGION": "HINDU", "CASTE": "SONAR", "CATE.": "OBC", "MOB. NO.": "M-9893201037", "ADDRESS": "SHIVOM STATE"}}'::jsonb
);

-- CLASS 8th row 18 [enrolled]: VEDIKA DEVDA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
  'VEDIKA',
  'DEVDA',
  '2013-05-13'::date,
  'A-807600690151',
  '306070303',
  '34866655',
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
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2158',
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
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
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
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
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
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
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
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
  null,
  'BKID011110410001140',
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
  'dec73848-6697-440c-851d-52e81b428070'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 18, "section": "enrolled", "data": {"NAME": "VEDIKA", "SURNAME": "DEVDA", "FATHER": "DEEPAK", "MOTHER": "VIDHYA", "DOB": "13.05.2013", "SCH. NO.": 2158, "ADHAR CARD": "A-807600690151", "SSSMID": 306070303, "FAMILY ID": 34866655, "BANK AC. NO.": "BKID011110410001140", "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-7049320768", "ADDRESS": "NIPANIYA"}}'::jsonb
);

-- CLASS 8th row 19 [enrolled]: ANANYA PARIHAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
  'ANANYA',
  'PARIHAR',
  '2013-02-24'::date,
  'A-562923452842',
  '188314250',
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
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2157',
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
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
  'father',
  'VINOD',
  null,
  'M-8305690227',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
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
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
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
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
  null,
  'SBI4027384456',
  'SBIN0030189',
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
  '1f3d4e99-8e44-4710-aacd-981c8f936251'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 19, "section": "enrolled", "data": {"NAME": "ANANYA", "SURNAME": "PARIHAR", "FATHER": "VINOD", "MOTHER": "SADHNA", "DOB": "24.02.2013", "SCH. NO.": 2157, "ADHAR CARD": "A-562923452842", "SSSMID": 188314250, "FAMILY ID": 24847100, "BANK AC. NO.": "SBI4027384456", "IFSC CODE": "SBIN0030189", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-8305690227", "ADDRESS": "NIPANIYA"}}'::jsonb
);

-- CLASS 8th row 20 [enrolled]: UJJAWAL PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b2430f91-46e9-457a-88b3-9ba75b000b3f'::uuid,
  'UJJAWAL',
  'PATEL',
  '2012-10-02'::date,
  'A-525049727373',
  '102679358',
  '20645182',
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
  'b2430f91-46e9-457a-88b3-9ba75b000b3f'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1777',
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
  'b2430f91-46e9-457a-88b3-9ba75b000b3f'::uuid,
  'father',
  'DINESH',
  null,
  'M-9926810774',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b2430f91-46e9-457a-88b3-9ba75b000b3f'::uuid,
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
  'b2430f91-46e9-457a-88b3-9ba75b000b3f'::uuid,
  'FATANPUR - 43',
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
  'b2430f91-46e9-457a-88b3-9ba75b000b3f'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 20, "section": "enrolled", "data": {"NAME": "UJJAWAL", "SURNAME": "PATEL", "FATHER": "DINESH", "MOTHER": "DEEPIKA", "DOB": "2012-10-02 00:00:00", "SCH. NO.": 1777, "ADHAR CARD": "A-525049727373", "SSSMID": 102679358, "FAMILY ID": 20645182, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": "M-9926810774", "ADDRESS": "FATANPUR - 43"}}'::jsonb
);

-- CLASS 8th row 21 [enrolled]: GAURAY KHICHI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0a9e7622-2186-4f02-b466-57360357eea4'::uuid,
  'GAURAY',
  'KHICHI',
  '2013-05-30'::date,
  'A.229005332020',
  '190719622',
  '36889208',
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
  '0a9e7622-2186-4f02-b466-57360357eea4'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2217',
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
  '0a9e7622-2186-4f02-b466-57360357eea4'::uuid,
  'father',
  'RAVINDRA',
  null,
  'M-9617085221',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0a9e7622-2186-4f02-b466-57360357eea4'::uuid,
  'mother',
  'PREETI',
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
  '0a9e7622-2186-4f02-b466-57360357eea4'::uuid,
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
  '0a9e7622-2186-4f02-b466-57360357eea4'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 21, "section": "enrolled", "data": {"NAME": "GAURAY", "SURNAME": "KHICHI", "FATHER": "RAVINDRA", "MOTHER": "PREETI", "DOB": "30.05.2013", "SCH. NO.": 2217, "ADHAR CARD": "A.229005332020", "SSSMID": 190719622, "FAMILY ID": 36889208, "BANK AC. NO.": "BOI-890010510000541", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "KHATIK", "CATE.": "SC", "MOB. NO.": "M-9617085221", "ADDRESS": null}}'::jsonb
);

-- CLASS 8th row 22 [enrolled]: GOURAV PANCHOLI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
  'GOURAV',
  'PANCHOLI',
  '2010-09-13'::date,
  'A.880886103461',
  '190746206',
  '190746206',
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
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2184',
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
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
  'father',
  'SANJAY',
  null,
  'M-8085790803',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
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
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
  '915-REWABAGA DEWAS',
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
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
  null,
  'UN.B.274210100067905',
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
  '16e44c2e-ba28-404a-9cc9-6ff97ee8a9cd'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 22, "section": "enrolled", "data": {"NAME": "GOURAV", "SURNAME": "PANCHOLI", "FATHER": "SANJAY", "MOTHER": "MAYA", "DOB": "13.09.2010", "SCH. NO.": 2184, "ADHAR CARD": "A.880886103461", "SSSMID": 190746206, "FAMILY ID": 190746206, "BANK AC. NO.": "UN.B.274210100067905", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": "M-8085790803", "ADDRESS": "915-REWABAGA DEWAS"}}'::jsonb
);

-- CLASS 8th row 23 [enrolled]: MAHI MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
  'MAHI',
  'MALVIYA',
  '2012-04-05'::date,
  'A-337643979563',
  '200053680',
  '37403450',
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
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2230',
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
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
  'father',
  'MUKESH',
  null,
  'M-7869124377',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
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
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
  'AWAS NAGAR',
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
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
  null,
  'SBI-63038527195',
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
  'df32384a-332b-42b5-927f-dea94cc65011'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 23, "section": "enrolled", "data": {"NAME": "MAHI", "SURNAME": "MALVIYA", "FATHER": "MUKESH", "MOTHER": "SUNITA", "DOB": "05.04.2012", "SCH. NO.": 2230, "ADHAR CARD": "A-337643979563", "SSSMID": 200053680, "FAMILY ID": 37403450, "BANK AC. NO.": "SBI-63038527195", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-7869124377", "ADDRESS": "AWAS NAGAR"}}'::jsonb
);

-- CLASS 8th row 24 [enrolled]: MAHIMA PAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
  'MAHIMA',
  'PAL',
  '2012-12-05'::date,
  'A-259493623838',
  '108601840',
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
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1818',
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
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
  'father',
  'AMIT',
  null,
  'M-9713326190',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
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
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
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
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
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
  '61b73a69-a4c9-4d9d-90a8-989fe85440f0'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 24, "section": "enrolled", "data": {"NAME": "MAHIMA", "SURNAME": "PAL", "FATHER": "AMIT", "MOTHER": "KUSUM", "DOB": "05.12.2012", "SCH. NO.": 1818, "ADHAR CARD": "A-259493623838", "SSSMID": 108601840, "FAMILY ID": 22118468, "BANK AC. NO.": "PUNB11502151010489", "IFSC CODE": "PUNB0115010", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "MOB. NO.": "M-9713326190", "ADDRESS": "NAHAR DARWAJA"}}'::jsonb
);

-- CLASS 8th row 25 [enrolled]: VIDHI KALYANE
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
  'VIDHI',
  'KALYANE',
  '2012-06-19'::date,
  'A-642049131544',
  '304294345',
  '45500356',
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
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2241',
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
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
  'father',
  'DHEERAJ',
  null,
  'M-8305259955',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
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
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
  'BHAWANI SAGAR',
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
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
  null,
  '5008100011724',
  'BARB0INDIND',
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
  '78b1837a-1f3e-40f0-9d7e-3e477935206b'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 25, "section": "enrolled", "data": {"NAME": "VIDHI", "SURNAME": "KALYANE", "FATHER": "DHEERAJ", "MOTHER": "VINITA", "DOB": "19-06-2012", "SCH. NO.": 2241, "ADHAR CARD": "A-642049131544", "SSSMID": 304294345, "FAMILY ID": 45500356, "BANK AC. NO.": 5008100011724, "IFSC CODE": "BARB0INDIND", "RELIGION": "HINDU", "CASTE": "VALMIKI", "CATE.": "SC", "MOB. NO.": "M-8305259955", "ADDRESS": "BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 8th row 26 [enrolled]: TAMMNA PRAJPATI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
  'TAMMNA',
  'PRAJPATI',
  '2014-04-16'::date,
  'A-829853579477',
  '308282604',
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
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2314',
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
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
  'father',
  'OM PRAKASH',
  null,
  '9009786944',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
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
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
  '282/LIG NEW DEWAS',
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
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
  null,
  'INDIAN POST.027810169699',
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
  '0e8c2bd2-79a2-4298-9f52-1a3e2088cac7'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 26, "section": "enrolled", "data": {"NAME": "TAMMNA", "SURNAME": "PRAJPATI", "FATHER": "OM PRAKASH", "MOTHER": "USHA", "DOB": "16/04/2014", "SCH. NO.": 2314, "ADHAR CARD": "A-829853579477", "SSSMID": 308282604, "FAMILY ID": null, "BANK AC. NO.": "INDIAN POST.027810169699", "IFSC CODE": "IPOS0000001", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.": "OBC", "MOB. NO.": 9009786944, "ADDRESS": "282/LIG NEW DEWAS"}}'::jsonb
);

-- CLASS 8th row 27 [enrolled]: MEDH PATIDAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  'MEDH',
  'PATIDAR',
  '2013-10-29'::date,
  'A-517418537214',
  '308805525',
  '20479620',
  'HINDU',
  'PATIDAR',
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
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2293',
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
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  'father',
  'SHRIRAM',
  null,
  'M-7489488820',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  'mother',
  'RUCHI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  'MPEB COLONY E-7 DEWAS',
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
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  null,
  'SBI-10729167049',
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
  '7773468b-87a8-499e-8df1-37e28eb47167'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 27, "section": "enrolled", "data": {"NAME": "MEDH", "SURNAME": "PATIDAR", "FATHER": "SHRIRAM", "MOTHER": "RUCHI", "DOB": "2013-10-29 00:00:00", "SCH. NO.": 2293, "ADHAR CARD": "A-517418537214", "SSSMID": 308805525, "FAMILY ID": 20479620, "BANK AC. NO.": "SBI-10729167049", "IFSC CODE": "SBIN0012291", "RELIGION": "HINDU", "CASTE": "PATIDAR", "CATE.": "OBC", "MOB. NO.": "M-7489488820", "ADDRESS": "MPEB COLONY E-7 DEWAS"}}'::jsonb
);

-- CLASS 8th row 28 [enrolled]: ABHISHEK MUKATI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '96034b2a-08a7-4342-8ace-3d27bbf19ec5'::uuid,
  'ABHISHEK',
  'MUKATI',
  '2010-10-23'::date,
  'A-885245357389',
  '178524470',
  '22696148',
  'HINDU',
  'KHATI',
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
  '96034b2a-08a7-4342-8ace-3d27bbf19ec5'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1629',
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
  '96034b2a-08a7-4342-8ace-3d27bbf19ec5'::uuid,
  'father',
  'SANJAY',
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
  '96034b2a-08a7-4342-8ace-3d27bbf19ec5'::uuid,
  'mother',
  'PAVITRA',
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
  '96034b2a-08a7-4342-8ace-3d27bbf19ec5'::uuid,
  null,
  'ANDB274211100002324',
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
  '96034b2a-08a7-4342-8ace-3d27bbf19ec5'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 28, "section": "enrolled", "data": {"NAME": "ABHISHEK", "SURNAME": "MUKATI", "FATHER": "SANJAY", "MOTHER": "PAVITRA", "DOB": "23.10.2010", "SCH. NO.": 1629, "ADHAR CARD": "A-885245357389", "SSSMID": 178524470, "FAMILY ID": 22696148, "BANK AC. NO.": "ANDB274211100002324", "IFSC CODE": "ANDB0002742", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "SC", "MOB. NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 8th row 29 [enrolled]: DEWESH YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '00bae4eb-6393-43dd-a243-41ee84ef92a7'::uuid,
  'DEWESH',
  'YADAV',
  '2012-01-29'::date,
  'A-463791001193',
  '103473117',
  '20836905',
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
  '00bae4eb-6393-43dd-a243-41ee84ef92a7'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '1637',
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
  '00bae4eb-6393-43dd-a243-41ee84ef92a7'::uuid,
  'father',
  'KAMAL',
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
  '00bae4eb-6393-43dd-a243-41ee84ef92a7'::uuid,
  'mother',
  'NIRMALA',
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
  '00bae4eb-6393-43dd-a243-41ee84ef92a7'::uuid,
  null,
  'SBI53010708031',
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
  '00bae4eb-6393-43dd-a243-41ee84ef92a7'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 29, "section": "enrolled", "data": {"NAME": "DEWESH", "SURNAME": "YADAV", "FATHER": "KAMAL", "MOTHER": "NIRMALA", "DOB": "29.01.2012", "SCH. NO.": 1637, "ADHAR CARD": "A-463791001193", "SSSMID": 103473117, "FAMILY ID": 20836905, "BANK AC. NO.": "SBI53010708031", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "AHIR", "CATE.": "OBC", "MOB. NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 8th row 30 [enrolled]: JAYANT CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  'JAYANT',
  'CHOUHAN',
  '2013-05-01'::date,
  'A- 772228403673',
  '302702108',
  '24092949',
  'HINDU',
  'GIRI',
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
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2360',
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
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  'father',
  'DINESH',
  null,
  'M-9977548509',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  'mother',
  'SHALINI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  'SIYA - 334',
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
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  null,
  'HDFC08871910005232',
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
  'fa9870bf-df0c-49dc-9ebb-ac39b7a321f2'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 30, "section": "enrolled", "data": {"NAME": "JAYANT", "SURNAME": "CHOUHAN", "FATHER": "DINESH", "MOTHER": "SHALINI", "DOB": "2013-05-01 00:00:00", "SCH. NO.": 2360, "ADHAR CARD": "A- 772228403673", "SSSMID": 302702108, "FAMILY ID": 24092949, "BANK AC. NO.": "HDFC08871910005232", "IFSC CODE": "HDFC0000887", "RELIGION": "HINDU", "CASTE": "GIRI", "CATE.": "OBC", "MOB. NO.": "M-9977548509", "ADDRESS": "SIYA - 334"}}'::jsonb
);

-- CLASS 8th row 31 [enrolled]: ROSHNI SISODIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
  'ROSHNI',
  'SISODIYA',
  '2013-08-13'::date,
  'A- 709763637023',
  '316542367',
  '20072030',
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
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2373',
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
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
  'father',
  'OMPRAKASH',
  null,
  'M-8959019523',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
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
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
  'MPEB COLONY -E8',
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
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
  null,
  'A/C- 027810159496',
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
  '4ba427ba-6b1b-46b9-8df0-03dff898f77b'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 31, "section": "enrolled", "data": {"NAME": "ROSHNI", "SURNAME": "SISODIYA", "FATHER": "OMPRAKASH", "MOTHER": "PINKI", "DOB": "2013-08-13 00:00:00", "SCH. NO.": 2373, "ADHAR CARD": "A- 709763637023", "SSSMID": 316542367, "FAMILY ID": 20072030, "BANK AC. NO.": "A/C- 027810159496", "IFSC CODE": "IPOS0000001", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "MOB. NO.": "M-8959019523", "ADDRESS": "MPEB COLONY -E8"}}'::jsonb
);

-- CLASS 8th row 34 [rte]: AARADHY MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
  'AARADHY',
  'MALVIYA',
  '2013-10-23'::date,
  'A-948769047274',
  '200680405',
  '44638092',
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
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2180',
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
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
  'father',
  'NARENDRA',
  null,
  'M-8349521784, 6263497996',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
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
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
  'ADARSH NAGAR- 25/B',
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
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
  null,
  'SBIN32135359481',
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
  '2ff6003c-c8db-40ee-84b9-c46554c9bdbe'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 34, "section": "rte", "data": {"NAME": "AARADHY", "SURNAME": "MALVIYA", "FATHER": "NARENDRA", "MOTHER": "NIDHI", "DOB": "23.10.2013", "SCH. NO.": 2180, "ADHAR CARD": "A-948769047274", "SSSMID": 200680405, "FAMILY ID": 44638092, "BANK AC. NO.": "SBIN32135359481", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "MALVI", "CATE.": "SC", "MOB. NO.": "M-8349521784, 6263497996", "ADDRESS": "ADARSH NAGAR- 25/B"}}'::jsonb
);

-- CLASS 8th row 35 [rte]: KRISHNA DINDODE
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '00e33c80-a7c7-4f68-91a4-6524c2c5b017'::uuid,
  'KRISHNA',
  'DINDODE',
  '2012-08-24'::date,
  'A-355382746647',
  '196359659',
  '43733901',
  'HINDU',
  'BHILALA',
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
  '00e33c80-a7c7-4f68-91a4-6524c2c5b017'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2181',
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
  '00e33c80-a7c7-4f68-91a4-6524c2c5b017'::uuid,
  'father',
  'DHANRAJ',
  null,
  'M-7509080880',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '00e33c80-a7c7-4f68-91a4-6524c2c5b017'::uuid,
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
  '00e33c80-a7c7-4f68-91a4-6524c2c5b017'::uuid,
  'CHAMUNDAPURI -5',
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
  '00e33c80-a7c7-4f68-91a4-6524c2c5b017'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 35, "section": "rte", "data": {"NAME": "KRISHNA", "SURNAME": "DINDODE", "FATHER": "DHANRAJ", "MOTHER": "ANITA", "DOB": "24.08.2012", "SCH. NO.": 2181, "ADHAR CARD": "A-355382746647", "SSSMID": 196359659, "FAMILY ID": 43733901, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "SC", "MOB. NO.": "M-7509080880", "ADDRESS": "CHAMUNDAPURI -5"}}'::jsonb
);

-- CLASS 8th row 36 [rte]: SAMAR YOGI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
  'SAMAR',
  'YOGI',
  '2013-01-14'::date,
  'A-960489835566',
  '200346229',
  '37932903',
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
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2179',
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
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
  'father',
  'MAHENDRA',
  null,
  'M-9826457032',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
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
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
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
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
  null,
  'BKID890018210020137',
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
  '16d7358e-a390-4047-a507-78c3a71f8293'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 36, "section": "rte", "data": {"NAME": "SAMAR", "SURNAME": "YOGI", "FATHER": "MAHENDRA", "MOTHER": "POOJA", "DOB": "14.01.2013", "SCH. NO.": 2179, "ADHAR CARD": "A-960489835566", "SSSMID": 200346229, "FAMILY ID": 37932903, "BANK AC. NO.": "BKID890018210020137", "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "OBC", "MOB. NO.": "M-9826457032", "ADDRESS": "ARJUN NAGAR"}}'::jsonb
);

-- CLASS 8th row 37 [rte]: SANDHYA YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
  'SANDHYA',
  'YADAV',
  '2012-07-31'::date,
  'A-757058484123',
  '200601007',
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
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2175',
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
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
  'father',
  'SANDEEP',
  null,
  'M-8085311066',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
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
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
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
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
  null,
  'UBIN274212010000438',
  'UBIN827428',
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
  '2156a52a-874e-4dfc-8610-ac4e35949de7'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 37, "section": "rte", "data": {"NAME": "SANDHYA", "SURNAME": "YADAV", "FATHER": "SANDEEP", "MOTHER": "PINKI", "DOB": "31.07.2012", "SCH. NO.": 2175, "ADHAR CARD": "A-757058484123", "SSSMID": 200601007, "FAMILY ID": 38445230, "BANK AC. NO.": "UBIN274212010000438", "IFSC CODE": "UBIN827428", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": "M-8085311066", "ADDRESS": "MADHUBAN COLONY"}}'::jsonb
);

-- CLASS 8th row 38 [rte]: TAKSHRAJ RANA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  'TAKSHRAJ',
  'RANA',
  '2012-05-03'::date,
  'A-915013788441',
  '300167075',
  '38126223',
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
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2177',
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
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  'father',
  'PANKAJ',
  null,
  'M-9893199979',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  'mother',
  'SUDHA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  'CHAMUNDAPURI - 36',
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
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  null,
  'SBI32598120057',
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
  'f1da09ba-0737-4a8e-9fcb-8ab6b0b46565'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 38, "section": "rte", "data": {"NAME": "TAKSHRAJ", "SURNAME": "RANA", "FATHER": "PANKAJ", "MOTHER": "SUDHA", "DOB": "03.05.2012", "SCH. NO.": 2177, "ADHAR CARD": "A-915013788441", "SSSMID": 300167075, "FAMILY ID": 38126223, "BANK AC. NO.": "SBI32598120057", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": "M-9893199979", "ADDRESS": "CHAMUNDAPURI - 36"}}'::jsonb
);

-- CLASS 8th row 39 [rte]: VEERPAL SANGTE
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  'VEERPAL',
  'SANGTE',
  '2013-04-21'::date,
  'A-900927472807',
  '188023819',
  '37919841',
  'HINDU',
  'MAHTER',
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
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2178',
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
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  'father',
  'AJAYPAL',
  null,
  'M-6261260084',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  'mother',
  'SHILPA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  'BHAWANI SAGAR',
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
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  null,
  'UBIN274210100002999',
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
  'f49a3194-cd2e-4f2c-a4ed-2c8004b99b95'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 39, "section": "rte", "data": {"NAME": "VEERPAL", "SURNAME": "SANGTE", "FATHER": "AJAYPAL", "MOTHER": "SHILPA", "DOB": "21.04.2013", "SCH. NO.": 2178, "ADHAR CARD": "A-900927472807", "SSSMID": 188023819, "FAMILY ID": 37919841, "BANK AC. NO.": "UBIN274210100002999", "IFSC CODE": "UBIN0827428", "RELIGION": "HINDU", "CASTE": "MAHTER", "CATE.": "SC", "MOB. NO.": "M-6261260084", "ADDRESS": "BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 8th row 42 [left]: DEVRAJ BAMNIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
  'DEVRAJ',
  'BAMNIYA',
  '2012-05-09'::date,
  'A-200331914639',
  '300739483',
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
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2159',
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
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
  'father',
  'ROOP SINGH',
  null,
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
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
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
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
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
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
  null,
  'SBI20310698560',
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
  '60ab46d6-3a3f-4d6e-a5c1-ded9aebba50d'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 42, "section": "left", "data": {"NAME": "DEVRAJ", "SURNAME": "BAMNIYA", "FATHER": "ROOP SINGH", "MOTHER": "URMILA", "DOB": "2012-05-09 00:00:00", "SCH. NO.": 2159, "ADHAR CARD": "A-200331914639", "SSSMID": 300739483, "FAMILY ID": 44965279, "BANK AC. NO.": "SBI20310698560", "IFSC CODE": "SBIN0030511", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": "M-9522458226", "ADDRESS": "FATANPUR - 43"}}'::jsonb
);

-- CLASS 8th row 43 [left]: DEVRAJ PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
  'DEVRAJ',
  'PARMAR',
  '2012-09-21'::date,
  'A.697961584340',
  '117144334',
  '24225584',
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
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2221',
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
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
  'father',
  'DINESH',
  null,
  'M-8959006729',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
  'mother',
  'SANGEETA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
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
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
  null,
  'BOI-912110410002770',
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
  '32cb9758-62ee-4062-b846-a8e097cf503d'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 43, "section": "left", "data": {"NAME": "DEVRAJ", "SURNAME": "PARMAR", "FATHER": "DINESH", "MOTHER": "SANGEETA", "DOB": "21.09.2012", "SCH. NO.": 2221, "ADHAR CARD": "A.697961584340", "SSSMID": 117144334, "FAMILY ID": 24225584, "BANK AC. NO.": "BOI-912110410002770", "IFSC CODE": "BKID0009121", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-8959006729", "ADDRESS": "KHATIKHEDI"}}'::jsonb
);

-- CLASS 8th row 44 [left]: LUCKY YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  'LUCKY',
  'YADAV',
  '2013-02-16'::date,
  'A-368106295479',
  '178462608',
  '39780917',
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
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  '2026-27',
  '8',
  null,
  null,
  '2156',
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
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  'father',
  'RAM MILAN',
  null,
  'M-6261550847',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  'mother',
  'NILU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  'MADHUBAN COLONY -164',
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
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  null,
  'PNB0597000100300328',
  'PUNB0059700',
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
  '96a10f99-3a84-46f0-8a6b-5ce4405e16da'::uuid,
  '2026-27',
  '8',
  '6:7:8final_spreadsheet.xlsx',
  'CLASS 8th',
  '{"sheet_name": "CLASS 8th", "row_number": 44, "section": "left", "data": {"NAME": "LUCKY", "SURNAME": "YADAV", "FATHER": "RAM MILAN", "MOTHER": "NILU", "DOB": "16-02-2013", "SCH. NO.": 2156, "ADHAR CARD": "A-368106295479", "SSSMID": 178462608, "FAMILY ID": 39780917, "BANK AC. NO.": "PNB0597000100300328", "IFSC CODE": "PUNB0059700", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": "M-6261550847", "ADDRESS": "MADHUBAN COLONY -164"}}'::jsonb
);

commit;
