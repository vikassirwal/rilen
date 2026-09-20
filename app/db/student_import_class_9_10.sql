-- RILEN student import for classes 9 and 10
-- Source workbook: 9-10.xlsx
-- Generated records: 81
-- Rules: no RTE section => is_rte_student false; LEFT section => is_active false and tc_status LEFT; typo-like dates normalized when unambiguous.

begin;

-- CLASS 9th row 3 [enrolled]: HITISHA MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
  'HITISHA',
  'MALVIYA',
  '2011-12-15'::date,
  '329309703742',
  '300111911',
  '44690272',
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
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
  '2026-27',
  '9',
  null,
  'U-35-17',
  '1644',
  null,
  '2017-04-21'::date,
  'U.K.G',
  null,
  'LOCAL',
  'SUNFORT SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
  'father',
  'KAMAL',
  'COMP. WORK',
  '9926097617',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
  'mother',
  'SUSHILA KANASIYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
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
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
  null,
  '761601241000273',
  'VIJ80007616',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'a11d4aaa-c7fe-4797-a56b-dca0b2986b7f'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "HITISHA", "SURNAME": "MALVIYA", "FATHER": "KAMAL", "MOTHER": "SUSHILA KANASIYA", "DOB": "15.12.2011", "SCH. NO.": 1644, "ADM NO.": "U-35-17", "ENROLL": null, "ADHAR CARD": 329309703742, "SSSMID": 300111911, "FAMILY ID": 44690272, "BANK AC. NO.": 761601241000273, "IFSC CODE": "VIJ80007616", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "COMP. WORK", "ADMN.DATE": "2017-04-21 00:00:00", "ADM .CLASS": "U.K.G", "MOB. NO.": 9926097617, "HOUSE NO.": null, "ADDRESS": "MADHUBAN COLONY", "LAST SCHOOL": "SUNFORT SCHOOL"}}'::jsonb
);

-- CLASS 9th row 4 [enrolled]: ITESH VERMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '58efc8f6-c8f6-4a49-bd76-5712a4093467'::uuid,
  'ITESH',
  'VERMA',
  '2011-01-11'::date,
  '257477851048',
  '1020090312',
  '20482193',
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
  '58efc8f6-c8f6-4a49-bd76-5712a4093467'::uuid,
  '2026-27',
  '9',
  null,
  '06-23-15',
  '2118',
  null,
  '2023-07-12'::date,
  '6th',
  null,
  'LOCAL',
  'LOTUS INT. SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '58efc8f6-c8f6-4a49-bd76-5712a4093467'::uuid,
  'father',
  'MAHESH',
  'TEACHER',
  '8680824122',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '58efc8f6-c8f6-4a49-bd76-5712a4093467'::uuid,
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
  '58efc8f6-c8f6-4a49-bd76-5712a4093467'::uuid,
  'BNP CISF',
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
  '58efc8f6-c8f6-4a49-bd76-5712a4093467'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "ITESH", "SURNAME": "VERMA", "FATHER": "MAHESH", "MOTHER": "SANGEETA", "DOB": "2011-01-11 00:00:00", "SCH. NO.": 2118, "ADM NO.": "06-23-15", "ENROLL": null, "ADHAR CARD": 257477851048, "SSSMID": 1020090312, "FAMILY ID": 20482193, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "TEACHER", "ADMN.DATE": "2023-07-12 00:00:00", "ADM .CLASS": "6th", "MOB. NO.": 8680824122, "HOUSE NO.": "Q-51", "ADDRESS": "BNP CISF", "LAST SCHOOL": "LOTUS INT. SCHOOL"}}'::jsonb
);

-- CLASS 9th row 5 [enrolled]: KESHAV NATH PUJARI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  'KESHAV NATH',
  'PUJARI',
  '2011-09-01'::date,
  '941484567886',
  '302377530',
  '37922130',
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
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  '2026-27',
  '9',
  null,
  'N-115-15',
  '1647',
  null,
  '2018-04-02'::date,
  'NURSERY',
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
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  'father',
  'MAHESH',
  'SHOP',
  '9926097617',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  'mother',
  'CHANDA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  'NATH MOHALLA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  null,
  '89001011001087',
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
  '9564e5d0-fd35-4155-85e2-727f2c15f4e1'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "KESHAV NATH", "SURNAME": "PUJARI", "FATHER": "MAHESH", "MOTHER": "CHANDA", "DOB": "01.09.2011", "SCH. NO.": 1647, "ADM NO.": "N-115-15", "ENROLL": null, "ADHAR CARD": 941484567886, "SSSMID": 302377530, "FAMILY ID": 37922130, "BANK AC. NO.": 89001011001087, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "OBC", "OCCUPATION": "SHOP", "ADMN.DATE": "2018-04-02 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9926097617, "HOUSE NO.": null, "ADDRESS": "NATH MOHALLA", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 6 [enrolled]: KUNDAN MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
  'KUNDAN',
  'MALVIYA',
  '2011-02-14'::date,
  '354874312779',
  '200053681',
  '37403450',
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
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
  '2026-27',
  '9',
  null,
  '60-23-06',
  '2109',
  null,
  '2023-06-19'::date,
  '6th',
  null,
  'BUS',
  'SANSKAR HIGH SECONDRY SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
  'father',
  'MUKESH',
  'MEKENIK',
  '7869124377',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
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
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
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
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
  null,
  '63038527195',
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
  '7a739ecc-1fee-481c-9bbc-60c304d8e00a'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "KUNDAN", "SURNAME": "MALVIYA", "FATHER": "MUKESH", "MOTHER": "SUNITA", "DOB": "14-02-2011", "SCH. NO.": 2109, "ADM NO.": "60-23-06", "ENROLL": null, "ADHAR CARD": 354874312779, "SSSMID": 200053681, "FAMILY ID": 37403450, "BANK AC. NO.": 63038527195, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "HARIJAN", "CATE.": "SC", "OCCUPATION": "MEKENIK", "ADMN.DATE": "2023-06-19 00:00:00", "ADM .CLASS": "6th", "MOB. NO.": 7869124377, "HOUSE NO.": null, "ADDRESS": "AWAS NAGAR", "LAST SCHOOL": "SANSKAR HIGH SECONDRY SCHOOL"}}'::jsonb
);

-- CLASS 9th row 7 [enrolled]: PARIDHI GANAWA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
  'PARIDHI',
  'GANAWA',
  '2012-04-07'::date,
  '483661082599',
  '189438488',
  '383601716',
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
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
  '2026-27',
  '9',
  null,
  'N-50-15',
  '1654',
  null,
  '2015-06-17'::date,
  'NURSERY',
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
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
  'father',
  'MANOJ',
  'PVT. JOB',
  '9926097617',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
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
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
  'RAM RAHIM NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
  null,
  '33567845042',
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
  'eb65551a-b2b3-4ca6-aea2-0e3b26ecd460'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "PARIDHI", "SURNAME": "GANAWA", "FATHER": "MANOJ", "MOTHER": "KIRAN", "DOB": "2012-04-07 00:00:00", "SCH. NO.": 1654, "ADM NO.": "N-50-15", "ENROLL": null, "ADHAR CARD": 483661082599, "SSSMID": 189438488, "FAMILY ID": 383601716, "BANK AC. NO.": 33567845042, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BHIL", "CATE.": "ST", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2015-06-17 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9926097617, "HOUSE NO.": 35, "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 8 [enrolled]: PRATIK SAINI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
  'PRATIK',
  'SAINI',
  '2011-10-24'::date,
  '572608740644',
  '300739406',
  '44790226',
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
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
  '2026-27',
  '9',
  null,
  'N-74-15',
  '1656',
  null,
  '2015-06-22'::date,
  'NURSERY',
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
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
  'father',
  'RAKESH',
  'BNP',
  '8085041418',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
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
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
  'BNP COLONY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
  null,
  '32772764471',
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
  '0d672c07-91f7-4d34-a8d9-326743a3353d'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "PRATIK", "SURNAME": "SAINI", "FATHER": "RAKESH", "MOTHER": "POOJA", "DOB": "24.10.2011", "SCH. NO.": 1656, "ADM NO.": "N-74-15", "ENROLL": null, "ADHAR CARD": 572608740644, "SSSMID": 300739406, "FAMILY ID": 44790226, "BANK AC. NO.": 32772764471, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "MALI", "CATE.": "OBC", "OCCUPATION": "BNP", "ADMN.DATE": "2015-06-22 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 8085041418, "HOUSE NO.": 0.13580246913580246, "ADDRESS": "BNP COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 9 [enrolled]: PREKSHA RATHOD
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
  'PREKSHA',
  'RATHOD',
  '2012-06-28'::date,
  '911051006490',
  '30493000',
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
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
  '2026-27',
  '9',
  null,
  'N-46-15',
  '1657',
  null,
  '2015-06-15'::date,
  'NURSERY',
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
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
  'father',
  'SHRAVAN',
  'FARMER',
  '9039810352',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
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
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
  'VIVEK NAGAR -',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
  null,
  '63042869280',
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
  'b7544f91-6a70-4339-9a2e-467ca6be1425'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "PREKSHA", "SURNAME": "RATHOD", "FATHER": "SHRAVAN", "MOTHER": "GAYATRI", "DOB": "28.06.2012", "SCH. NO.": 1657, "ADM NO.": "N-46-15", "ENROLL": null, "ADHAR CARD": 911051006490, "SSSMID": 30493000, "FAMILY ID": 38365976, "BANK AC. NO.": 63042869280, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "KALOTA", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2015-06-15 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9039810352, "HOUSE NO.": "47/A", "ADDRESS": "VIVEK NAGAR -", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 10 [enrolled]: PRINCE SANGTE
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
  'PRINCE',
  'SANGTE',
  '2012-06-01'::date,
  '854213684837',
  null,
  '41861224',
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
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
  '2026-27',
  '9',
  null,
  'N-34-15',
  '1658',
  null,
  '2015-06-04'::date,
  'NURSERY',
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
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
  'father',
  'VISHAL',
  'GOVT. JOB',
  '9826798825',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
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
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
  'M.G. COLONY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
  null,
  '88140100008390',
  'BARB0VJDEWAX',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '363dbd82-2ba4-4ee3-aaba-7020b51c2aeb'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "PRINCE", "SURNAME": "SANGTE", "FATHER": "VISHAL", "MOTHER": "POONAM", "DOB": "01.06.2012", "SCH. NO.": 1658, "ADM NO.": "N-34-15", "ENROLL": null, "ADHAR CARD": 854213684837, "SSSMID": null, "FAMILY ID": 41861224, "BANK AC. NO.": 88140100008390, "IFSC CODE": "BARB0VJDEWAX", "RELIGION": "HINDU", "CASTE": "VALMIKI", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2015-06-04 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9826798825, "HOUSE NO.": null, "ADDRESS": "M.G. COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 11 [enrolled]: RAGINI NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
  'RAGINI',
  'NAGAR',
  '2011-11-15'::date,
  '726367482141',
  '196074488',
  '43669994',
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
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
  '2026-27',
  '9',
  null,
  'N-38-15',
  '1660',
  null,
  '2015-06-09'::date,
  'NURSERY',
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
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
  'father',
  'MANOHAR',
  'FARMER',
  '9926503024',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
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
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
  'BILAWALI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
  null,
  '890110510003287',
  'BOI',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '423a1067-006c-42ac-a85d-227c43841658'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "RAGINI", "SURNAME": "NAGAR", "FATHER": "MANOHAR", "MOTHER": "SAPNA", "DOB": "15.11.2011", "SCH. NO.": 1660, "ADM NO.": "N-38-15", "ENROLL": null, "ADHAR CARD": 726367482141, "SSSMID": 196074488, "FAMILY ID": 43669994, "BANK AC. NO.": 890110510003287, "IFSC CODE": "BOI", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2015-06-09 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9926503024, "HOUSE NO.": null, "ADDRESS": "BILAWALI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 12 [enrolled]: RAJESHWARI PAWAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
  'RAJESHWARI',
  'PAWAR',
  '2011-09-28'::date,
  '815188319252',
  '313864191',
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
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
  '2026-27',
  '9',
  null,
  'N-108-15',
  '1661',
  null,
  '2015-06-15'::date,
  'NURSERY',
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
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
  'father',
  'LOKENDRA',
  'BUSINESS',
  '9617644111',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
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
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
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
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
  null,
  '60008366028',
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
  '4531eeea-0738-4b80-abd8-10ed253e0278'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "RAJESHWARI", "SURNAME": "PAWAR", "FATHER": "LOKENDRA", "MOTHER": "BABITA", "DOB": "28-09-2011", "SCH. NO.": 1661, "ADM NO.": "N-108-15", "ENROLL": null, "ADHAR CARD": 815188319252, "SSSMID": 313864191, "FAMILY ID": 38444980, "BANK AC. NO.": 60008366028, "IFSC CODE": "MAHB0000141", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2015-06-15 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9617644111, "HOUSE NO.": "18/3", "ADDRESS": "CHAMUNDA PALACE", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 13 [enrolled]: RANJANA PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  'RANJANA',
  'PARMAR',
  '2011-02-07'::date,
  '591773506728',
  '303188630',
  '45224315',
  'HINDU',
  'PARMAR',
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
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  '2026-27',
  '9',
  null,
  'N-43-15',
  '1662',
  null,
  '2015-06-13'::date,
  'NURSERY',
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
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  'father',
  'VISHNU',
  'MAJDURI',
  '9977261486',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  'mother',
  'SAKUNTALA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  'BILAWALI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  null,
  '274210100023150',
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
  'b2404f15-47fb-41e6-a969-48d2b33587e0'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"MODE": "BUS", "NAME": "RANJANA", "SURNAME": "PARMAR", "FATHER": "VISHNU", "MOTHER": "SAKUNTALA", "DOB": "07.02.2011", "SCH. NO.": 1662, "ADM NO.": "N-43-15", "ENROLL": null, "ADHAR CARD": 591773506728, "SSSMID": 303188630, "FAMILY ID": 45224315, "BANK AC. NO.": 274210100023150, "IFSC CODE": "ANDB0002742", "RELIGION": "HINDU", "CASTE": "PARMAR", "CATE.": "SC", "OCCUPATION": "MAJDURI", "ADMN.DATE": "2015-06-13 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9977261486, "HOUSE NO.": null, "ADDRESS": "BILAWALI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 14 [enrolled]: RISHABH VISHWAKARMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
  'RISHABH',
  'VISHWAKARMA',
  '2012-05-05'::date,
  '925445966318',
  '158327847',
  '34189027',
  'HINDU',
  'VISHVAKRMA',
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
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
  '2026-27',
  '9',
  null,
  'N-85-15',
  '1663',
  null,
  '2015-05-26'::date,
  'NURSERY',
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
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
  'father',
  'AJAY',
  'PVT. JOB',
  '9770051692',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
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
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
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
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
  null,
  '63050651943',
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
  '71739c80-0ccc-4921-90d0-e1a6cc20562b'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "RISHABH", "SURNAME": "VISHWAKARMA", "FATHER": "AJAY", "MOTHER": "SEEMA", "DOB": "05.05.2012", "SCH. NO.": 1663, "ADM NO.": "N-85-15", "ENROLL": null, "ADHAR CARD": 925445966318, "SSSMID": 158327847, "FAMILY ID": 34189027, "BANK AC. NO.": 63050651943, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "VISHVAKRMA", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2015-05-26 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9770051692, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 15 [enrolled]: SWASTI RAJPUT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
  'SWASTI',
  'RAJPUT',
  '2012-12-24'::date,
  '979808301259',
  '305912483',
  '21589339',
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
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
  '2026-27',
  '9',
  null,
  '93-15-N',
  '1669',
  null,
  '2015-06-29'::date,
  'NURSERY',
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
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
  'father',
  'MAKHAN',
  'BANK EMP.',
  '9926631446',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
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
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
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
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
  null,
  '777701631446',
  'ICIC0003585',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'b5150286-6925-4f84-9081-6ab6eb00fb9d'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "SWASTI", "SURNAME": "RAJPUT", "FATHER": "MAKHAN", "MOTHER": "SARITA", "DOB": "24.12.2012", "SCH. NO.": 1669, "ADM NO.": "93-15-N", "ENROLL": null, "ADHAR CARD": 979808301259, "SSSMID": 305912483, "FAMILY ID": 21589339, "BANK AC. NO.": 777701631446, "IFSC CODE": "ICIC0003585", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "BANK EMP.", "ADMN.DATE": "2015-06-29 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9926631446, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 16 [enrolled]: TILAK MASAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
  'TILAK',
  'MASAR',
  '2012-04-19'::date,
  '248142007919',
  '198385961',
  '44157186',
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
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
  '2026-27',
  '9',
  null,
  '12-15-N',
  '1671',
  null,
  '2015-04-08'::date,
  'NURSERY',
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
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
  'father',
  'VIRENDRA',
  null,
  '7772897521',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
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
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
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
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
  null,
  '32798577492',
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
  '3828f377-d9b7-4c43-9d54-b535e5080a61'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "TILAK", "SURNAME": "MASAR", "FATHER": "VIRENDRA", "MOTHER": "ASHA", "DOB": "19.04.2012", "SCH. NO.": 1671, "ADM NO.": "12-15-N", "ENROLL": null, "ADHAR CARD": 248142007919, "SSSMID": 198385961, "FAMILY ID": 44157186, "BANK AC. NO.": 32798577492, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BHIL", "CATE.": "ST", "OCCUPATION": null, "ADMN.DATE": "2015-04-08 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 7772897521, "HOUSE NO.": 24, "ADDRESS": "CHAMUNDA PURI", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 17 [enrolled]: VAISHNAVI CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
  'VAISHNAVI',
  'CHOUHAN',
  '2012-11-05'::date,
  '581641630004',
  null,
  '27125052',
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
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
  '2026-27',
  '9',
  null,
  '49-17-U',
  '1672',
  null,
  '2017-06-10'::date,
  'NURSERY',
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
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
  'father',
  'MAHESH',
  'GOVT. JOB',
  '8518010827',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
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
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
  'DROPTI NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
  null,
  '63015576897',
  'SBIN0030213',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '84fb2a20-bf5b-41ae-a4c6-be704729fd78'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "VAISHNAVI", "SURNAME": "CHOUHAN", "FATHER": "MAHESH", "MOTHER": "MAMTA", "DOB": "05.11.2012", "SCH. NO.": 1672, "ADM NO.": "49-17-U", "ENROLL": null, "ADHAR CARD": 581641630004, "SSSMID": null, "FAMILY ID": 27125052, "BANK AC. NO.": 63015576897, "IFSC CODE": "SBIN0030213", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "GOVT. JOB", "ADMN.DATE": "2017-06-10 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 8518010827, "HOUSE NO.": 15, "ADDRESS": "DROPTI NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 18 [enrolled]: VIRAT SINGH BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
  'VIRAT SINGH',
  'BAIS',
  '2010-01-16'::date,
  '254497873495',
  '308979286',
  '47452809',
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
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
  '2026-27',
  '9',
  null,
  '81-17-U',
  '1673',
  null,
  '2017-06-27'::date,
  'U.K.G',
  null,
  'LOCAL',
  'SANTHOM ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
  'father',
  'RAJESH',
  'BUSINESS',
  '9926045915',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
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
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
  'KESAR VIHAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
  null,
  '08871910002373',
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
  '246cf803-2499-43fa-8e9e-c2d3a6ec7e78'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "VIRAT SINGH", "SURNAME": "BAIS", "FATHER": "RAJESH", "MOTHER": "KIRAN", "DOB": "16/01/2010", "SCH. NO.": 1673, "ADM NO.": "81-17-U", "ENROLL": null, "ADHAR CARD": 254497873495, "SSSMID": 308979286, "FAMILY ID": 47452809, "BANK AC. NO.": "08871910002373", "IFSC CODE": "HDFC0000887", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2017-06-27 00:00:00", "ADM .CLASS": "U.K.G", "MOB. NO.": 9926045915, "HOUSE NO.": 3, "ADDRESS": "KESAR VIHAR", "LAST SCHOOL": "SANTHOM ACADEMY"}}'::jsonb
);

-- CLASS 9th row 19 [enrolled]: JIGYANSHU VISHWAKARMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
  'JIGYANSHU',
  'VISHWAKARMA',
  '2011-12-05'::date,
  '397372329001',
  '322180886',
  '48349914',
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
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
  '2026-27',
  '9',
  null,
  '29-24-7',
  '2208',
  null,
  '2024-04-15'::date,
  '7th',
  null,
  'LOCAL',
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
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
  'father',
  'KAMAL',
  'PVT. JOB',
  '8889520737',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
  'mother',
  'NIRANJA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
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
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
  null,
  '890110110011913',
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
  'cf99cc61-0b70-47a2-9015-251d7503b258'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "JIGYANSHU", "SURNAME": "VISHWAKARMA", "FATHER": "KAMAL", "MOTHER": "NIRANJA", "DOB": "05.12.2011", "SCH. NO.": 2208, "ADM NO.": "29-24-7", "ENROLL": null, "ADHAR CARD": 397372329001, "SSSMID": 322180886, "FAMILY ID": 48349914, "BANK AC. NO.": 890110110011913, "IFSC CODE": "BKID0008901", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-04-15 00:00:00", "ADM .CLASS": "7th", "MOB. NO.": 8889520737, "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": "NEW MALWANCHAL"}}'::jsonb
);

-- CLASS 9th row 20 [enrolled]: VANSHRAJ YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
  'VANSHRAJ',
  'YADAV',
  '2013-08-02'::date,
  '552781006550',
  '199900911',
  '44468795',
  'HINDU',
  'GAVALI',
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
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
  '2026-27',
  '9',
  null,
  '34-24-7',
  '2227',
  null,
  '2024-04-06'::date,
  '7th',
  null,
  'LOCAL',
  'BRIGHT STAR',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
  'father',
  'JITENDRA',
  'PVT. JOB',
  '9993781539',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
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
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
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
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
  null,
  '78312010008599',
  'CNRBOO17831',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '122de7a1-cdbd-4b47-b6fd-b19c370e4952'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 20, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "VANSHRAJ", "SURNAME": "YADAV", "FATHER": "JITENDRA", "MOTHER": "POOJA", "DOB": "02.8.2013", "SCH. NO.": 2227, "ADM NO.": "34-24-7", "ENROLL": null, "ADHAR CARD": 552781006550, "SSSMID": 199900911, "FAMILY ID": 44468795, "BANK AC. NO.": 78312010008599, "IFSC CODE": "CNRBOO17831", "RELIGION": "HINDU", "CASTE": "GAVALI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-04-06 00:00:00", "ADM .CLASS": "7th", "MOB. NO.": 9993781539, "HOUSE NO.": "70/2", "ADDRESS": "BHAWANI SAGAR", "LAST SCHOOL": "BRIGHT STAR"}}'::jsonb
);

-- CLASS 9th row 21 [enrolled]: SAMARTH YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
  'SAMARTH',
  'YADAV',
  '2013-02-12'::date,
  '219995694999',
  '199758958',
  '37233210',
  'HINDU',
  'GAVALI',
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
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
  '2026-27',
  '9',
  null,
  '33-24-7',
  '2226',
  null,
  '2024-04-06'::date,
  '7th',
  null,
  'LOCAL',
  'BRIGHT STAR',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
  'father',
  'DHARMENDRA',
  'PVT. JOB',
  '9923781539',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
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
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
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
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
  null,
  '890018210011948',
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
  '5492b5fc-f4ac-4db6-b5ad-c424afd7418b'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 21, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "SAMARTH", "SURNAME": "YADAV", "FATHER": "DHARMENDRA", "MOTHER": "URMILA", "DOB": "12..2.2013", "SCH. NO.": 2226, "ADM NO.": "33-24-7", "ENROLL": null, "ADHAR CARD": 219995694999, "SSSMID": 199758958, "FAMILY ID": 37233210, "BANK AC. NO.": 890018210011948, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "GAVALI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2024-04-06 00:00:00", "ADM .CLASS": "7th", "MOB. NO.": 9923781539, "HOUSE NO.": "70/2", "ADDRESS": "BHAWANI SAGAR", "LAST SCHOOL": "BRIGHT STAR"}}'::jsonb
);

-- CLASS 9th row 22 [enrolled]: RAJVIR PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
  'RAJVIR',
  'PARMAR',
  '2012-05-12'::date,
  '923428749449',
  '302066822',
  '24230108',
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
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
  '2026-27',
  '9',
  null,
  '44-24-7',
  '2218',
  null,
  '2024-05-31'::date,
  '7th',
  null,
  'LOCAL',
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
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
  'father',
  'ARUN',
  'ELCCTRICION',
  '9009732932',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
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
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
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
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
  null,
  '912118210002942',
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
  '3154ee80-f732-4928-b9df-b3016e201b4d'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 22, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "RAJVIR", "SURNAME": "PARMAR", "FATHER": "ARUN", "MOTHER": "LADKUNWAR", "DOB": "12..5.2012", "SCH. NO.": 2218, "ADM NO.": "44-24-7", "ENROLL": null, "ADHAR CARD": 923428749449, "SSSMID": 302066822, "FAMILY ID": 24230108, "BANK AC. NO.": 912118210002942, "IFSC CODE": "BKID0009121", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ELCCTRICION", "ADMN.DATE": "2024-05-31 00:00:00", "ADM .CLASS": "7th", "MOB. NO.": 9009732932, "HOUSE NO.": null, "ADDRESS": "KHATIKHEDI", "LAST SCHOOL": "NEW MALWANCHAL"}}'::jsonb
);

-- CLASS 9th row 23 [enrolled]: EKTA NO
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'e0832f94-ab5b-4699-8812-17f8310e22c2'::uuid,
  'EKTA',
  'NO',
  '2013-09-20'::date,
  '233270360236',
  '323480101',
  '51223472',
  'HINDU',
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
  'e0832f94-ab5b-4699-8812-17f8310e22c2'::uuid,
  '2026-27',
  '9',
  null,
  null,
  '2243',
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
  'e0832f94-ab5b-4699-8812-17f8310e22c2'::uuid,
  'father',
  'MANOJ',
  'BUSINESS',
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
  'e0832f94-ab5b-4699-8812-17f8310e22c2'::uuid,
  'mother',
  'KIRAN',
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
  'e0832f94-ab5b-4699-8812-17f8310e22c2'::uuid,
  null,
  '1145618372',
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
  'e0832f94-ab5b-4699-8812-17f8310e22c2'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 23, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "EKTA", "SURNAME": "NO", "FATHER": "MANOJ", "MOTHER": "KIRAN", "DOB": "20-09-2013", "SCH. NO.": 2243, "ADM NO.": null, "ENROLL": null, "ADHAR CARD": 233270360236, "SSSMID": 323480101, "FAMILY ID": 51223472, "BANK AC. NO.": 1145618372, "IFSC CODE": "KKBK0005958", "RELIGION": "HINDU", "CASTE": "GADRIYA", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": null, "ADM .CLASS": null, "MOB. NO.": null, "HOUSE NO.": null, "ADDRESS": null, "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 24 [enrolled]: SADHANA DADIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
  'SADHANA',
  'DADIYA',
  '2011-11-02'::date,
  '557404375555',
  '304209689',
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
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
  '2026-27',
  '9',
  null,
  '28-25-8th',
  '2292',
  null,
  '2025-12-06'::date,
  '8th',
  null,
  null,
  'JAY AMALA CONVENT UJJAIN',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
  'father',
  'ARJUN SINGH',
  'CISF',
  '9907799546',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
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
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
  'RAM RAHIM NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
  null,
  '30789494293',
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
  'f3f58283-2da9-4808-8445-2f4dbd9faabd'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 24, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SADHANA", "SURNAME": "DADIYA", "FATHER": "ARJUN SINGH", "MOTHER": "MANJU", "DOB": "02-011-2011", "SCH. NO.": 2292, "ADM NO.": "28-25-8th", "ENROLL": null, "ADHAR CARD": 557404375555, "SSSMID": 304209689, "FAMILY ID": 45489955, "BANK AC. NO.": 30789494293, "IFSC CODE": "SBIN0004615", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "CISF", "ADMN.DATE": "2025-12-06 00:00:00", "ADM .CLASS": "8th", "MOB. NO.": 9907799546, "HOUSE NO.": null, "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": "JAY AMALA CONVENT UJJAIN"}}'::jsonb
);

-- CLASS 9th row 25 [enrolled]: RAJ ANSHIKA BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
  'RAJ ANSHIKA',
  'BAIS',
  '2012-09-09'::date,
  '885897079061',
  '306929787',
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
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
  '2026-27',
  '9',
  null,
  '25-65-8th',
  '2297',
  null,
  '2025-03-07'::date,
  '8th',
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
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
  'father',
  'RAVIRAJ SINGH',
  'BUSINESS',
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
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
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
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
  'VISHRAM BAG',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
  null,
  '1505000100268350',
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
  'bae08132-97af-4b43-b30e-81e08619be53'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 25, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "RAJ ANSHIKA", "SURNAME": "BAIS", "FATHER": "RAVIRAJ SINGH", "MOTHER": "REENA", "DOB": "2012-09-09 00:00:00", "SCH. NO.": 2297, "ADM NO.": "25-65-8th", "ENROLL": null, "ADHAR CARD": 885897079061, "SSSMID": 306929787, "FAMILY ID": 46346662, "BANK AC. NO.": 1505000100268350, "IFSC CODE": "PUNB0150500", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2025-03-07 00:00:00", "ADM .CLASS": "8th", "MOB. NO.": 9098290090, "HOUSE NO.": null, "ADDRESS": "VISHRAM BAG", "LAST SCHOOL": "THE HIMALAYA ACADEMY DEWAS"}}'::jsonb
);

-- CLASS 9th row 26 [enrolled]: YASHASWARAJ SINGH BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
  'YASHASWARAJ SINGH',
  'BAIS',
  '2012-07-29'::date,
  '394192638657',
  '192049722',
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
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
  '2026-27',
  '9',
  null,
  '25-60-8tH',
  '2301',
  null,
  '2025-03-07'::date,
  '8th',
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
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
  'father',
  'YUVRAJ SINGH',
  'BUSINESS',
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
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
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
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
  'VISHRAM BAG',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
  null,
  '53010718903',
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
  '1240c5bb-3fa6-4a32-883a-8cfb516b3009'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 26, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "YASHASWARAJ SINGH", "SURNAME": "BAIS", "FATHER": "YUVRAJ SINGH", "MOTHER": "SEFALI", "DOB": "29/07/2012", "SCH. NO.": 2301, "ADM NO.": "25-60-8tH", "ENROLL": null, "ADHAR CARD": 394192638657, "SSSMID": 192049722, "FAMILY ID": 42751508, "BANK AC. NO.": 53010718903, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2025-03-07 00:00:00", "ADM .CLASS": "8th", "MOB. NO.": 9907046647, "HOUSE NO.": null, "ADDRESS": "VISHRAM BAG", "LAST SCHOOL": "THE HIMALAYA ACADEMY DEWAS"}}'::jsonb
);

-- CLASS 9th row 27 [enrolled]: ARYAN SINGH THAKUR THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  'ARYAN SINGH THAKUR',
  'THAKUR',
  '2011-09-06'::date,
  '590117758488',
  '200502718',
  '44601236',
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
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  '2026-27',
  '9',
  null,
  'N-65-15',
  '1634',
  null,
  '2015-01-07'::date,
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
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  'father',
  'PRAVEEN SINGH THAKUR',
  'SANFARMAR',
  '7828620778',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  'mother',
  'MAMTA THAKUR',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  'RAM RAHIM NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  null,
  '1104000230056',
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
  'b2f98646-11fd-4065-badb-caf072362e04'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 27, "section": "enrolled", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "ARYAN SINGH THAKUR", "SURNAME": "THAKUR", "FATHER": "PRAVEEN SINGH THAKUR", "MOTHER": "MAMTA THAKUR", "DOB": "06.09.2011", "SCH. NO.": 1634, "ADM NO.": "N-65-15", "ENROLL": null, "ADHAR CARD": "590117758488", "SSSMID": 200502718, "FAMILY ID": 44601236, "BANK AC. NO.": 1104000230056, "IFSC CODE": "IBKL0000001", "RELIGION": "HINDU", "CASTE": "THAKUR", "CATE.": "GEN", "OCCUPATION": "SANFARMAR", "ADMN.DATE": "2015-01-07 00:00:00", "ADM .CLASS": null, "MOB. NO.": 7828620778, "HOUSE NO.": null, "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 28 [enrolled]: DEEPAK MUVEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
  'DEEPAK',
  'MUVEL',
  '2011-12-13'::date,
  '311662470218',
  '188194891',
  '36889781',
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
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
  '2026-27',
  '9',
  null,
  '03-15-N',
  '2172',
  null,
  '2015-03-02'::date,
  'NURSERY',
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
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
  'father',
  'POOL SINGH',
  'SERVICE',
  '9753590904',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
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
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
  'GAJANAND COLONY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
  null,
  '63036848461',
  'SBIN00030130',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '39165408-8731-4612-bace-88935edb6db8'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 28, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "DEEPAK", "SURNAME": "MUVEL", "FATHER": "POOL SINGH", "MOTHER": "POONAM", "DOB": "2011-12-13 00:00:00", "SCH. NO.": 2172, "ADM NO.": "03-15-N", "ENROLL": null, "ADHAR CARD": 311662470218, "SSSMID": 188194891, "FAMILY ID": 36889781, "BANK AC. NO.": 63036848461, "IFSC CODE": "SBIN00030130", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "SERVICE", "ADMN.DATE": "2015-03-02 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9753590904, "HOUSE NO.": "41/1", "ADDRESS": "GAJANAND COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 29 [enrolled]: KRISHNA SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  'KRISHNA',
  'SOLANKI',
  '2012-03-31'::date,
  '891555251011',
  '177574031',
  '177573081',
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
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  '2026-27',
  '9',
  null,
  '04-15-N',
  '2171',
  null,
  '2015-03-04'::date,
  'NURSERY',
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
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  'father',
  'AJAY',
  'FARMER',
  '9826886090',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  'mother',
  'RANJITA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  'BORKHEDA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  null,
  '38962154773',
  'sbin0003864',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '96f84d2a-2d78-43d3-a285-9c0bef73a7a4'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 29, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "KRISHNA", "SURNAME": "SOLANKI", "FATHER": "AJAY", "MOTHER": "RANJITA", "DOB": "2012-03-31 00:00:00", "SCH. NO.": 2171, "ADM NO.": "04-15-N", "ENROLL": null, "ADHAR CARD": 891555251011, "SSSMID": 177574031, "FAMILY ID": 177573081, "BANK AC. NO.": 38962154773, "IFSC CODE": "sbin0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "FARMER", "ADMN.DATE": "2015-03-04 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9826886090, "HOUSE NO.": null, "ADDRESS": "BORKHEDA", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 30 [enrolled]: PUSHPLATA SINGH SISODIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'eff5df3f-35e4-4838-b49b-4809116794d8'::uuid,
  'PUSHPLATA SINGH',
  'SISODIYA',
  '2011-08-31'::date,
  '583657658006',
  '100404897',
  '20096902',
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
  'eff5df3f-35e4-4838-b49b-4809116794d8'::uuid,
  '2026-27',
  '9',
  null,
  '06-15-N',
  '2169',
  null,
  '2015-03-02'::date,
  'NURSERY',
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
  'eff5df3f-35e4-4838-b49b-4809116794d8'::uuid,
  'father',
  'BHANWAR SINGH',
  'FARMER',
  '9993010290',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'eff5df3f-35e4-4838-b49b-4809116794d8'::uuid,
  'mother',
  'JANAK KUNWAR',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'eff5df3f-35e4-4838-b49b-4809116794d8'::uuid,
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
  'eff5df3f-35e4-4838-b49b-4809116794d8'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 30, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "PUSHPLATA SINGH", "SURNAME": "SISODIYA", "FATHER": "BHANWAR SINGH", "MOTHER": "JANAK KUNWAR", "DOB": "2011-08-31 00:00:00", "SCH. NO.": 2169, "ADM NO.": "06-15-N", "ENROLL": null, "ADHAR CARD": 583657658006, "SSSMID": 100404897, "FAMILY ID": 20096902, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "FARMER", "ADMN.DATE": "2015-03-02 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9993010290, "HOUSE NO.": 26, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 31 [enrolled]: PRACHI CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
  'PRACHI',
  'CHOUHAN',
  '2011-09-26'::date,
  '457413072432',
  '194944988',
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
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
  '2026-27',
  '9',
  null,
  '05-15-N',
  '2170',
  null,
  '2015-03-02'::date,
  'NURSERY',
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
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
  'father',
  'LAKHAN SINGH',
  'SHOP',
  '9589144499',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
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
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
  'RAM RAHIM NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
  null,
  '07240100028869',
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
  '56760aba-492b-4445-a539-181e944ba418'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 31, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "PRACHI", "SURNAME": "CHOUHAN", "FATHER": "LAKHAN SINGH", "MOTHER": "SULOCHANA", "DOB": "2011-09-26 00:00:00", "SCH. NO.": 2170, "ADM NO.": "05-15-N", "ENROLL": null, "ADHAR CARD": 457413072432, "SSSMID": 194944988, "FAMILY ID": 20776908, "BANK AC. NO.": "07240100028869", "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "SHOP", "ADMN.DATE": "2015-03-02 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9589144499, "HOUSE NO.": 1, "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 32 [enrolled]: RUDRA NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '02e12831-7da9-4c40-b1a3-f0274febd1ce'::uuid,
  'RUDRA',
  'NAGAR',
  '2011-11-24'::date,
  '633032507844',
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
  '02e12831-7da9-4c40-b1a3-f0274febd1ce'::uuid,
  '2026-27',
  '9',
  null,
  '07-15-N',
  '2168',
  null,
  '2015-03-02'::date,
  'NURSERY',
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
  '02e12831-7da9-4c40-b1a3-f0274febd1ce'::uuid,
  'father',
  'RAHUL',
  'SHOP KEEPER',
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
  '02e12831-7da9-4c40-b1a3-f0274febd1ce'::uuid,
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
  '02e12831-7da9-4c40-b1a3-f0274febd1ce'::uuid,
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
  '02e12831-7da9-4c40-b1a3-f0274febd1ce'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 32, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "RUDRA", "SURNAME": "NAGAR", "FATHER": "RAHUL", "MOTHER": "KAVITA", "DOB": "2011-11-24 00:00:00", "SCH. NO.": 2168, "ADM NO.": "07-15-N", "ENROLL": null, "ADHAR CARD": 633032507844, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "SHOP KEEPER", "ADMN.DATE": "2015-03-02 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": null, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 33 [enrolled]: SANKALP SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  'SANKALP',
  'SOLANKI',
  '2011-11-04'::date,
  '965529097183',
  '193317913',
  '43021922',
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
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  '2026-27',
  '9',
  null,
  '09-15-N',
  '1602',
  null,
  '2015-02-03'::date,
  'NURSERY',
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
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  'father',
  'NARENDRA',
  'TAILOR',
  '9977872428',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  'mother',
  'UMA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  'TULJA VIHAR DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  null,
  '016210110001258',
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
  'eb97c1ff-79bd-4118-8cd2-4cbf46f1af8c'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 33, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SANKALP", "SURNAME": "SOLANKI", "FATHER": "NARENDRA", "MOTHER": "UMA", "DOB": "2011-11-04 00:00:00", "SCH. NO.": 1602, "ADM NO.": "09-15-N", "ENROLL": null, "ADHAR CARD": 965529097183, "SSSMID": 193317913, "FAMILY ID": 43021922, "BANK AC. NO.": "016210110001258", "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "DARJI", "CATE.": "OBC", "OCCUPATION": "TAILOR", "ADMN.DATE": "2015-02-03 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": 9977872428, "HOUSE NO.": null, "ADDRESS": "TULJA VIHAR DEWAS", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 34 [enrolled]: SAMIKSHA KALTHIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
  'SAMIKSHA',
  'KALTHIYA',
  '2009-07-25'::date,
  '834751236865',
  '119291469',
  '24755553',
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
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
  '2026-27',
  '9',
  null,
  '26-40-9th',
  '2355',
  null,
  '2026-05-08'::date,
  '9th',
  null,
  null,
  'NEW YERAA',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
  'father',
  'SANTOSH',
  'PVT. JOB',
  '9575530258',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
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
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
  'CHOTA MALSA PURA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
  null,
  '68009946260',
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
  '38cc32fc-caf3-4c95-b9d1-06233824a762'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 34, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SAMIKSHA", "SURNAME": "KALTHIYA", "FATHER": "SANTOSH", "MOTHER": "ASHA", "DOB": "2009-07-25 00:00:00", "SCH. NO.": 2355, "ADM NO.": "26-40-9th", "ENROLL": null, "ADHAR CARD": 834751236865, "SSSMID": 119291469, "FAMILY ID": 24755553, "BANK AC. NO.": 68009946260, "IFSC CODE": "MAHB0000141", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2026-05-08 00:00:00", "ADM .CLASS": "9th", "MOB. NO.": 9575530258, "HOUSE NO.": 76, "ADDRESS": "CHOTA MALSA PURA", "LAST SCHOOL": "NEW YERAA"}}'::jsonb
);

-- CLASS 9th row 35 [enrolled]: HARSH KUMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '71d8c8ff-34b3-49ba-9bb5-b5556247925a'::uuid,
  'HARSH',
  'KUMAR',
  '2012-03-31'::date,
  null,
  null,
  null,
  'HINDU',
  'MEENA',
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
  '71d8c8ff-34b3-49ba-9bb5-b5556247925a'::uuid,
  '2026-27',
  '9',
  null,
  null,
  '2356',
  null,
  '2026-05-02'::date,
  '9th',
  null,
  null,
  'GYAN SAGAR ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '71d8c8ff-34b3-49ba-9bb5-b5556247925a'::uuid,
  'father',
  'JITENDRA',
  'ARMY',
  '96445 88351, 96449 25466',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '71d8c8ff-34b3-49ba-9bb5-b5556247925a'::uuid,
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
  '71d8c8ff-34b3-49ba-9bb5-b5556247925a'::uuid,
  'PRATAP NAGAR',
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
  '71d8c8ff-34b3-49ba-9bb5-b5556247925a'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 35, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "HARSH", "SURNAME": "KUMAR", "FATHER": "JITENDRA", "MOTHER": "LALITA", "DOB": "2012-03-31 00:00:00", "SCH. NO.": 2356, "ADM NO.": null, "ENROLL": null, "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "MEENA", "CATE.": "OBC", "OCCUPATION": "ARMY", "ADMN.DATE": "2026-05-02 00:00:00", "ADM .CLASS": "9th", "MOB. NO.": "96445 88351, 96449 25466", "HOUSE NO.": 127, "ADDRESS": "PRATAP NAGAR", "LAST SCHOOL": "GYAN SAGAR ACADEMY"}}'::jsonb
);

-- CLASS 9th row 36 [enrolled]: PRATIK KUMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
  'PRATIK',
  'KUMAR',
  '2012-03-31'::date,
  '258673633197',
  '110870297',
  '46539892',
  'HINDU',
  'MEENA',
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
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
  '2026-27',
  '9',
  null,
  '26-42-9th',
  '2357',
  null,
  '2026-05-02'::date,
  '9th',
  null,
  null,
  'GYAN SAGAR ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
  'father',
  'JITENDRA',
  'ARMY',
  '96445 88351, 96449 25466',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
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
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
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
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
  null,
  '44223324549',
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
  'a77bac5c-d025-48a2-8d85-6c75907a1ef9'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 36, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "PRATIK", "SURNAME": "KUMAR", "FATHER": "JITENDRA", "MOTHER": "LALITA", "DOB": "2012-03-31 00:00:00", "SCH. NO.": 2357, "ADM NO.": "26-42-9th", "ENROLL": null, "ADHAR CARD": 258673633197, "SSSMID": 110870297, "FAMILY ID": 46539892, "BANK AC. NO.": 44223324549, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "MEENA", "CATE.": "OBC", "OCCUPATION": "ARMY", "ADMN.DATE": "2026-05-02 00:00:00", "ADM .CLASS": "9th", "MOB. NO.": "96445 88351, 96449 25466", "HOUSE NO.": 127, "ADDRESS": "PRATAP NAGAR", "LAST SCHOOL": "GYAN SAGAR ACADEMY"}}'::jsonb
);

-- CLASS 9th row 37 [enrolled]: SALONI SURYAWANSHI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
  'SALONI',
  'SURYAWANSHI',
  '2012-03-21'::date,
  null,
  '189175502',
  '42117092',
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
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
  '2026-27',
  '9',
  null,
  '26-54-9th',
  '2365',
  null,
  '2026-06-25'::date,
  '9th',
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
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
  'father',
  'LALSINGH',
  null,
  '9826500390',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
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
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
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
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
  null,
  '63050101319',
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
  '2b5919e6-9f0b-46b6-b0e6-0eb725a8c49a'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 37, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "SALONI", "SURNAME": "SURYAWANSHI", "FATHER": "LALSINGH", "MOTHER": "ASHA", "DOB": "2012-03-21 00:00:00", "SCH. NO.": 2365, "ADM NO.": "26-54-9th", "ENROLL": null, "ADHAR CARD": null, "SSSMID": 189175502, "FAMILY ID": 42117092, "BANK AC. NO.": 63050101319, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": null, "ADMN.DATE": "2026-06-25 00:00:00", "ADM .CLASS": "9th", "MOB. NO.": 9826500390, "HOUSE NO.": 210, "ADDRESS": "MADHUBAN COLONY", "LAST SCHOOL": "GYAN SANCHAY"}}'::jsonb
);

-- CLASS 9th row 38 [enrolled]: RAJAT YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
  'RAJAT',
  'YADAV',
  '2012-10-16'::date,
  '923791552904',
  '191267365',
  '42586919',
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
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
  '2026-27',
  '9',
  null,
  '26-67-9',
  '2375',
  null,
  '2026-08-19'::date,
  '9th',
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
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
  'father',
  'JEEVAN',
  'DRIVER',
  '8878858758',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
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
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
  'BAGRI MOHALLA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
  null,
  '890110110008633',
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
  '01192dea-7f17-44ae-ae34-e8977c38bac0'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 38, "section": "enrolled", "corrections": [], "data": {"MODE": null, "NAME": "RAJAT", "SURNAME": "YADAV", "FATHER": "JEEVAN", "MOTHER": "KAVITA", "DOB": "2012-10-16 00:00:00", "SCH. NO.": 2375, "ADM NO.": "26-67-9", "ENROLL": null, "ADHAR CARD": 923791552904, "SSSMID": 191267365, "FAMILY ID": 42586919, "BANK AC. NO.": 890110110008633, "IFSC CODE": "BKID0008901", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "OCCUPATION": "DRIVER", "ADMN.DATE": "2026-08-19 00:00:00", "ADM .CLASS": "9th", "MOB. NO.": 8878858758, "HOUSE NO.": 263, "ADDRESS": "BAGRI MOHALLA", "LAST SCHOOL": "THE HIMALAYA ACADEMY DEWAS"}}'::jsonb
);

-- CLASS 9th row 41 [left]: VANSHRAJ SINGH THAKUR Corrections: Corrected shifted values after ADM NO. in source row.
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
  'VANSHRAJ SINGH',
  'THAKUR',
  '2009-08-25'::date,
  'A-289423320850',
  '200502717',
  '44601236',
  'HINDU',
  'THAKUR',
  'GENERAL'
);
insert into public.student_academic_registrations (
  student_id,
  academic_year,
  class_name,
  section,
  admission_number,
  scholar_number,
  enrollment_number,
  admission_date,
  admission_class,
  board_registration_number,
  admission_mode,
  last_school_name,
  tc_status,
  is_rte_student,
  is_active
) values (
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
  '2026-27',
  '9',
  null,
  '13-120-N',
  '1490',
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
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
  'father',
  'PRAVEEN',
  'RAMRAHIM NAGAR',
  'M-7828620778',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
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
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
  'RAMRAHIM NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
  null,
  'SBI-20303509196',
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
  '407f8609-8bf6-4392-9533-5ff677ffa483'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 41, "section": "left", "corrections": ["Corrected shifted values after ADM NO. in source row."], "data": {"MODE": null, "NAME": "VANSHRAJ SINGH", "SURNAME": "THAKUR", "FATHER": "PRAVEEN", "MOTHER": "MAMTA", "DOB": "25-08-2009", "SCH. NO.": 1490, "ADM NO.": "13-120-N", "ENROLL": "A-289423320850", "ADHAR CARD": 200502717, "SSSMID": 44601236, "FAMILY ID": "SBI-20303509196", "BANK AC. NO.": "SBIN0003864", "IFSC CODE": "HINDU", "RELIGION": "THAKUR", "CASTE": "GENERAL", "CATE.": "M-7828620778", "OCCUPATION": "RAMRAHIM NAGAR", "ADMN.DATE": null, "ADM .CLASS": null, "MOB. NO.": null, "HOUSE NO.": null, "ADDRESS": null, "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 42 [left]: SONAKSHI MISHRA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  'SONAKSHI',
  'MISHRA',
  '2012-04-22'::date,
  'A-366413918447',
  '191969132',
  '42735869',
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
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  '2026-27',
  '9',
  null,
  '11-15-N',
  '1668',
  null,
  '2015-04-08'::date,
  'NURSERY',
  null,
  'LOCAL',
  'GOVT. PRI. SCHOOL',
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
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  'father',
  'TARUN',
  'BNP',
  'M-9685474423',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  'mother',
  'SAVITRI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  'BNP COLONY Q - 3226',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  null,
  'SBI32208038953',
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
  'f533c603-59a9-43ab-8523-d2075fb3105d'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 42, "section": "left", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "SONAKSHI", "SURNAME": "MISHRA", "FATHER": "TARUN", "MOTHER": "SAVITRI", "DOB": "22.04.2012", "SCH. NO.": 1668, "ADM NO.": "11-15-N", "ENROLL": null, "ADHAR CARD": "A-366413918447", "SSSMID": 191969132, "FAMILY ID": 42735869, "BANK AC. NO.": "SBI32208038953", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BRAHMIN", "CATE.": "GEN", "OCCUPATION": "BNP", "ADMN.DATE": "2015-04-08 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9685474423", "HOUSE NO.": null, "ADDRESS": "BNP COLONY Q - 3226", "LAST SCHOOL": "GOVT. PRI. SCHOOL"}}'::jsonb
);

-- CLASS 9th row 43 [left]: NAYAN VISHWAKARMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
  'NAYAN',
  'VISHWAKARMA',
  '2013-02-05'::date,
  'A-506750033162',
  '304385012',
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
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
  '2026-27',
  '9',
  null,
  'N-107-15',
  '1728',
  null,
  '2018-04-03'::date,
  'NURSERY',
  null,
  'LOCAL',
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
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
  'father',
  'DEEPAK',
  'BUSINESS',
  'M-9926097617, 9669944053',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
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
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
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
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
  null,
  'SBI32322914274',
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
  '5695f2b5-9608-4ece-a60c-bf7e6dec5235'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 43, "section": "left", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "NAYAN", "SURNAME": "VISHWAKARMA", "FATHER": "DEEPAK", "MOTHER": "RUPALI", "DOB": "05.02.2013", "SCH. NO.": 1728, "ADM NO.": "N-107-15", "ENROLL": null, "ADHAR CARD": "A-506750033162", "SSSMID": 304385012, "FAMILY ID": 38444180, "BANK AC. NO.": "SBI32322914274", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "SUTAR", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2018-04-03 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9926097617, 9669944053", "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 44 [left]: CHANCHAL NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
  'CHANCHAL',
  'NAGAR',
  '2012-01-03'::date,
  'A-972623931884',
  '198070347',
  '44099345',
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
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
  '2026-27',
  '9',
  null,
  '02-15-N',
  '2173',
  null,
  '2015-03-04'::date,
  'NURSERY',
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
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
  'father',
  'ROHIT',
  'PVT. JOB',
  'M-9893533861',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
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
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
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
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
  null,
  'BKID010111010004925',
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
  '5a98b1f7-ab2a-4aae-bb9d-90bf7765f686'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 44, "section": "left", "corrections": [], "data": {"MODE": null, "NAME": "CHANCHAL", "SURNAME": "NAGAR", "FATHER": "ROHIT", "MOTHER": "KAVITA", "DOB": "2012-01-03 00:00:00", "SCH. NO.": 2173, "ADM NO.": "02-15-N", "ENROLL": null, "ADHAR CARD": "A-972623931884", "SSSMID": 198070347, "FAMILY ID": 44099345, "BANK AC. NO.": "BKID010111010004925", "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2015-03-04 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9893533861", "HOUSE NO.": null, "ADDRESS": "RADHAGANJ", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 9th row 45 [left]: PRINCE SOLANKI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
  'PRINCE',
  'SOLANKI',
  '2011-11-22'::date,
  'A-528703906020',
  '304447264',
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
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
  '2026-27',
  '9',
  null,
  'N-88-15',
  '1659',
  null,
  '2015-06-30'::date,
  'NURSERY',
  null,
  'LOCAL',
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
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
  'father',
  'CHANDRASHEKHAR',
  'PVT. JOB',
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
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
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
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
  'HOUSING BORD COLONY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
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
  'cfda4c65-62b9-4874-8736-6c85849f71da'::uuid,
  '2026-27',
  '9',
  '9-10.xlsx',
  'CLASS 9th',
  '{"sheet_name": "CLASS 9th", "row_number": 45, "section": "left", "corrections": [], "data": {"MODE": "LOCAL", "NAME": "PRINCE", "SURNAME": "SOLANKI", "FATHER": "CHANDRASHEKHAR", "MOTHER": "SANGEETA", "DOB": "22.11.2011", "SCH. NO.": 1659, "ADM NO.": "N-88-15", "ENROLL": null, "ADHAR CARD": "A-528703906020", "SSSMID": 304447264, "FAMILY ID": 38386071, "BANK AC. NO.": "SBI31587878689", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2015-06-30 00:00:00", "ADM .CLASS": "NURSERY", "MOB. NO.": "M-9098451518", "HOUSE NO.": null, "ADDRESS": "HOUSING BORD COLONY", "LAST SCHOOL": null}}'::jsonb
);

-- CLASS 10th row 3 [enrolled]: ADARSH PAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f385eee8-34bd-474b-804f-4afd4e794b02'::uuid,
  'ADARSH',
  'PAL',
  '2010-01-12'::date,
  '539890483403',
  '322581830',
  '50966443',
  'HINDU',
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
  'f385eee8-34bd-474b-804f-4afd4e794b02'::uuid,
  '2026-27',
  '10',
  null,
  '22-23-07',
  '2165',
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
  'f385eee8-34bd-474b-804f-4afd4e794b02'::uuid,
  'father',
  'RAJPAL',
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
  'f385eee8-34bd-474b-804f-4afd4e794b02'::uuid,
  'mother',
  'SAROJ KUMARI',
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
  'f385eee8-34bd-474b-804f-4afd4e794b02'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 3, "section": "enrolled", "corrections": [], "data": {"NAME": "ADARSH", "SURNAME": "PAL", "FATHER": "RAJPAL", "MOTHER": "SAROJ KUMARI", "DOB": "12.01.2010", "ADM NO.": "22-23-07", "SCH. NO.": 2165, "ADHAR CARD": 539890483403, "SSSMID": 322581830, "FAMILY ID": 50966443, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GADRIYA", "CATE.": "OBC", "MOB. NO.": null, "HOUSE NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 10th row 4 [enrolled]: ADITYA GEHLOT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
  'ADITYA',
  'GEHLOT',
  '2010-09-29'::date,
  '993986573481',
  '104258419',
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
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
  '2026-27',
  '10',
  null,
  '64-16-U',
  '1563',
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
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
  'father',
  'ARVIND',
  null,
  '8871114785',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
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
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
  'MANGAL MURTI NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
  null,
  '63009414324',
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
  'abb84e61-9c3f-4750-84c5-6bcf199902bd'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 4, "section": "enrolled", "corrections": [], "data": {"NAME": "ADITYA", "SURNAME": "GEHLOT", "FATHER": "ARVIND", "MOTHER": "MAYA", "DOB": "29.09.2010", "ADM NO.": "64-16-U", "SCH. NO.": 1563, "ADHAR CARD": 993986573481, "SSSMID": 104258419, "FAMILY ID": 21037000, "BANK AC. NO.": 63009414324, "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 8871114785, "HOUSE NO.": 27, "ADDRESS": "MANGAL MURTI NAGAR"}}'::jsonb
);

-- CLASS 10th row 5 [enrolled]: ANSH BILAVALIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
  'ANSH',
  'BILAVALIYA',
  '2012-02-26'::date,
  '504240408468',
  '302252276',
  '20002777',
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
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
  '2026-27',
  '10',
  null,
  '76-14-N',
  '1568',
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
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
  'father',
  'AKHILESH KUMAR',
  null,
  '8305243816',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
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
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
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
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
  null,
  '34570578932',
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
  '5df5dbba-602c-4b83-869d-42bed1de6a43'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 5, "section": "enrolled", "corrections": [], "data": {"NAME": "ANSH", "SURNAME": "BILAVALIYA", "FATHER": "AKHILESH KUMAR", "MOTHER": "RANI", "DOB": "26.02.2012", "ADM NO.": "76-14-N", "SCH. NO.": 1568, "ADHAR CARD": 504240408468, "SSSMID": 302252276, "FAMILY ID": 20002777, "BANK AC. NO.": 34570578932, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": 8305243816, "HOUSE NO.": null, "ADDRESS": "VIVEK NAGAR"}}'::jsonb
);

-- CLASS 10th row 6 [enrolled]: ARPITA THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
  'ARPITA',
  'THAKUR',
  '2011-08-11'::date,
  '571941371795',
  '117278131',
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
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
  '2026-27',
  '10',
  null,
  '102-17-1',
  '1570',
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
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
  'father',
  'HATE SINGH',
  null,
  '9826041085',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
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
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
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
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
  null,
  'A-07240100020734',
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
  '18a953b1-a063-4807-afe1-e2df21c5e572'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 6, "section": "enrolled", "corrections": [], "data": {"NAME": "ARPITA", "SURNAME": "THAKUR", "FATHER": "HATE SINGH", "MOTHER": "SANTOSH", "DOB": "11.08.2011", "ADM NO.": "102-17-1", "SCH. NO.": 1570, "ADHAR CARD": 571941371795, "SSSMID": 117278131, "FAMILY ID": 24256001, "BANK AC. NO.": "A-07240100020734", "IFSC CODE": "BARD0DEWASX", "RELIGION": "HINDU", "CASTE": "BHATE", "CATE.": "OBC", "MOB. NO.": 9826041085, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR"}}'::jsonb
);

-- CLASS 10th row 7 [enrolled]: DAKSH MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
  'DAKSH',
  'MALVIYA',
  '2011-06-25'::date,
  '551954028062',
  '106520624',
  '21599023',
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
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
  '2026-27',
  '10',
  null,
  '57-17-1',
  '2225',
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
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
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
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
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
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
  'POLICE LINE',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
  null,
  '890218210010442',
  'BKID0008902',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '7c0952f7-eebc-4d84-9e15-e216a8488d1d'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 7, "section": "enrolled", "corrections": [], "data": {"NAME": "DAKSH", "SURNAME": "MALVIYA", "FATHER": "RAJENDRA", "MOTHER": "SEEMA", "DOB": "25.06.2011", "ADM NO.": "57-17-1", "SCH. NO.": 2225, "ADHAR CARD": 551954028062, "SSSMID": 106520624, "FAMILY ID": 21599023, "BANK AC. NO.": 890218210010442, "IFSC CODE": "BKID0008902", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": null, "HOUSE NO.": "C/55", "ADDRESS": "POLICE LINE"}}'::jsonb
);

-- CLASS 10th row 8 [enrolled]: DHRUV KUMAR BALODIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
  'DHRUV KUMAR',
  'BALODIYA',
  '2011-09-07'::date,
  '323094354588',
  '129582158',
  '27253054',
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
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
  '2026-27',
  '10',
  null,
  '63-15-L',
  '1575',
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
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
  'father',
  'JAGDISH',
  null,
  '9926464853',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
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
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
  'BHERWAKHEDI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
  null,
  '897566704889',
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
  'eeb1c02d-3978-46e2-bd2e-f2d92010dd9f'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 8, "section": "enrolled", "corrections": [], "data": {"NAME": "DHRUV KUMAR", "SURNAME": "BALODIYA", "FATHER": "JAGDISH", "MOTHER": "MAMTA", "DOB": "07.09.2011", "ADM NO.": "63-15-L", "SCH. NO.": 1575, "ADHAR CARD": 323094354588, "SSSMID": 129582158, "FAMILY ID": 27253054, "BANK AC. NO.": 897566704889, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 9926464853, "HOUSE NO.": null, "ADDRESS": "BHERWAKHEDI"}}'::jsonb
);

-- CLASS 10th row 9 [enrolled]: HANSA KAMDAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
  'HANSA',
  'KAMDAR',
  '2011-08-25'::date,
  '292832158255',
  '124508376',
  '26016907',
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
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
  '2026-27',
  '10',
  null,
  '82-15-N',
  '1579',
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
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
  'father',
  'KAMAL',
  null,
  '8225953832',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
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
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
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
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
  null,
  '63045662679',
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
  '7a0a9e8b-0a9b-4b82-90e1-ba8fb7d7524f'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 9, "section": "enrolled", "corrections": [], "data": {"NAME": "HANSA", "SURNAME": "KAMDAR", "FATHER": "KAMAL", "MOTHER": "KAVITA", "DOB": "25.08.2011", "ADM NO.": "82-15-N", "SCH. NO.": 1579, "ADHAR CARD": 292832158255, "SSSMID": 124508376, "FAMILY ID": 26016907, "BANK AC. NO.": 63045662679, "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": 8225953832, "HOUSE NO.": null, "ADDRESS": "NAWDA"}}'::jsonb
);

-- CLASS 10th row 10 [enrolled]: HARSH
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '880ea9f6-fb36-45a6-904b-71283a47a1aa'::uuid,
  'HARSH',
  null,
  '2011-04-12'::date,
  '866596755308',
  null,
  null,
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
  '880ea9f6-fb36-45a6-904b-71283a47a1aa'::uuid,
  '2026-27',
  '10',
  null,
  '64-17-01',
  '1531',
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
  '880ea9f6-fb36-45a6-904b-71283a47a1aa'::uuid,
  'father',
  'BAGIRATH',
  null,
  '7566790429',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '880ea9f6-fb36-45a6-904b-71283a47a1aa'::uuid,
  'mother',
  'REENA',
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
  '880ea9f6-fb36-45a6-904b-71283a47a1aa'::uuid,
  null,
  '32784046820',
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
  '880ea9f6-fb36-45a6-904b-71283a47a1aa'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 10, "section": "enrolled", "corrections": [], "data": {"NAME": "HARSH", "SURNAME": null, "FATHER": "BAGIRATH", "MOTHER": "REENA", "DOB": "12.04.2011", "ADM NO.": "64-17-01", "SCH. NO.": 1531, "ADHAR CARD": 866596755308, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": 32784046820, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": 7566790429, "HOUSE NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 10th row 11 [enrolled]: HEMANT PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '60a500c2-eb52-42b6-b44a-e93b73b968ca'::uuid,
  'HEMANT',
  'PARMAR',
  '2010-02-25'::date,
  '628381265686',
  '112489660',
  '23069548',
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
  '60a500c2-eb52-42b6-b44a-e93b73b968ca'::uuid,
  '2026-27',
  '10',
  null,
  'U-21-2016',
  '1815',
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
  '60a500c2-eb52-42b6-b44a-e93b73b968ca'::uuid,
  'father',
  'ASHOK',
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
  '60a500c2-eb52-42b6-b44a-e93b73b968ca'::uuid,
  'mother',
  'MEENA',
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
  '60a500c2-eb52-42b6-b44a-e93b73b968ca'::uuid,
  null,
  '50438100005903',
  'BARB0TARUJJ',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '60a500c2-eb52-42b6-b44a-e93b73b968ca'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 11, "section": "enrolled", "corrections": [], "data": {"NAME": "HEMANT", "SURNAME": "PARMAR", "FATHER": "ASHOK", "MOTHER": "MEENA", "DOB": "25.02.2010", "ADM NO.": "U-21-2016", "SCH. NO.": 1815, "ADHAR CARD": 628381265686, "SSSMID": 112489660, "FAMILY ID": 23069548, "BANK AC. NO.": 50438100005903, "IFSC CODE": "BARB0TARUJJ", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": null, "HOUSE NO.": null, "ADDRESS": null}}'::jsonb
);

-- CLASS 10th row 12 [enrolled]: MEENA BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
  'MEENA',
  'BAIS',
  '2010-02-28'::date,
  '324875454563',
  '300882137',
  '44804685',
  'HINDU',
  'RAJPUT',
  'GENERAL'
);
insert into public.student_academic_registrations (
  student_id,
  academic_year,
  class_name,
  section,
  admission_number,
  scholar_number,
  enrollment_number,
  admission_date,
  admission_class,
  board_registration_number,
  admission_mode,
  last_school_name,
  tc_status,
  is_rte_student,
  is_active
) values (
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
  '2026-27',
  '10',
  null,
  '112-15-L',
  '1590',
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
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
  'father',
  'LOKENDRA',
  null,
  '9993866796',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
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
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
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
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
  null,
  '118510024439',
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
  '9f780585-8cc8-4a8e-a427-a2b09183f12c'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 12, "section": "enrolled", "corrections": [], "data": {"NAME": "MEENA", "SURNAME": "BAIS", "FATHER": "LOKENDRA", "MOTHER": "MAMTA", "DOB": "28.02.2010", "ADM NO.": "112-15-L", "SCH. NO.": 1590, "ADHAR CARD": 324875454563, "SSSMID": 300882137, "FAMILY ID": 44804685, "BANK AC. NO.": 118510024439, "IFSC CODE": "BKDN0811185", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GENERAL", "MOB. NO.": 9993866796, "HOUSE NO.": 11, "ADDRESS": "RADHAGANJ"}}'::jsonb
);

-- CLASS 10th row 13 [enrolled]: MEGHA SAINI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
  'MEGHA',
  'SAINI',
  '2010-06-17'::date,
  '729210777152',
  '300739405',
  '44790226',
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
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
  '2026-27',
  '10',
  null,
  '75-15-N',
  '1591',
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
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
  'father',
  'RAKESH',
  null,
  '8085041418',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
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
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
  'BNP COLONY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
  null,
  '32772764471',
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
  'c990cf46-a916-4f59-8ce2-becc69d54e8a'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 13, "section": "enrolled", "corrections": [], "data": {"NAME": "MEGHA", "SURNAME": "SAINI", "FATHER": "RAKESH", "MOTHER": "POOJA", "DOB": "17.06.2010", "ADM NO.": "75-15-N", "SCH. NO.": 1591, "ADHAR CARD": 729210777152, "SSSMID": 300739405, "FAMILY ID": 44790226, "BANK AC. NO.": 32772764471, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "MALI", "CATE.": "OBC", "MOB. NO.": 8085041418, "HOUSE NO.": "11/81", "ADDRESS": "BNP COLONY"}}'::jsonb
);

-- CLASS 10th row 14 [enrolled]: NANDANI CHOUDHARY
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
  'NANDANI',
  'CHOUDHARY',
  '2011-09-30'::date,
  '813227115682',
  '100123756',
  '20032749',
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
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
  '2026-27',
  '10',
  null,
  '52-14-N',
  '1592',
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
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
  'father',
  'GYAN SINGH',
  null,
  '9926037848',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
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
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
  'RATANKHEDI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
  null,
  '41199930487',
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
  'a61bc33e-f85c-4760-987e-abc6b76f465f'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 14, "section": "enrolled", "corrections": [], "data": {"NAME": "NANDANI", "SURNAME": "CHOUDHARY", "FATHER": "GYAN SINGH", "MOTHER": "PRIYANKA", "DOB": "30.09.2011", "ADM NO.": "52-14-N", "SCH. NO.": 1592, "ADHAR CARD": 813227115682, "SSSMID": 100123756, "FAMILY ID": 20032749, "BANK AC. NO.": 41199930487, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": 9926037848, "HOUSE NO.": null, "ADDRESS": "RATANKHEDI"}}'::jsonb
);

-- CLASS 10th row 15 [enrolled]: NARENDRA PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
  'NARENDRA',
  'PATEL',
  '2011-01-02'::date,
  '935193702672',
  '100479065',
  '20113346',
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
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
  '2026-27',
  '10',
  null,
  '84-14-N',
  '1594',
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
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
  'father',
  'RAHUL',
  null,
  '9575171440',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
  'mother',
  'RANEE',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
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
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
  null,
  '34684375989',
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
  '4d95daa2-f12c-4a24-98aa-58cf9f0db6b4'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 15, "section": "enrolled", "corrections": [], "data": {"NAME": "NARENDRA", "SURNAME": "PATEL", "FATHER": "RAHUL", "MOTHER": "RANEE", "DOB": "2011-01-02 00:00:00", "ADM NO.": "84-14-N", "SCH. NO.": 1594, "ADHAR CARD": 935193702672, "SSSMID": 100479065, "FAMILY ID": 20113346, "BANK AC. NO.": 34684375989, "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": 9575171440, "HOUSE NO.": null, "ADDRESS": "NAWDA"}}'::jsonb
);

-- CLASS 10th row 16 [enrolled]: PRIYANSH GODAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
  'PRIYANSH',
  'GODAR',
  '2010-05-22'::date,
  '621534193493',
  '122407686',
  '25517842',
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
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
  '2026-27',
  '10',
  null,
  '100-19-3',
  '1793',
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
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
  'father',
  'RAVINDRA',
  null,
  '9826816706',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
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
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
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
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
  null,
  '63005840414',
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
  'ca9f5ed4-4178-439c-9248-43cb12c41f32'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 16, "section": "enrolled", "corrections": [], "data": {"NAME": "PRIYANSH", "SURNAME": "GODAR", "FATHER": "RAVINDRA", "MOTHER": "ANEETA", "DOB": "22.05.2010", "ADM NO.": "100-19-3", "SCH. NO.": 1793, "ADHAR CARD": 621534193493, "SSSMID": 122407686, "FAMILY ID": 25517842, "BANK AC. NO.": 63005840414, "IFSC CODE": "SBIN00030041", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "MOB. NO.": 9826816706, "HOUSE NO.": "1/123", "ADDRESS": "VRINDAVAN DHAM"}}'::jsonb
);

-- CLASS 10th row 17 [enrolled]: RAJ BODANA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
  'RAJ',
  'BODANA',
  '2009-09-22'::date,
  '556475477958`',
  '197362397',
  '43947901',
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
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
  '2026-27',
  '10',
  null,
  '99-14-N',
  '1597',
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
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
  'father',
  'L. RATAN LAL',
  null,
  '9617100154',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
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
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
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
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
  null,
  '890018210002931',
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
  '1ab6bbb2-2d25-4bf6-97df-f3198430d31e'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 17, "section": "enrolled", "corrections": [], "data": {"NAME": "RAJ", "SURNAME": "BODANA", "FATHER": "L. RATAN LAL", "MOTHER": "KAVITA", "DOB": "22-09-2009", "ADM NO.": "99-14-N", "SCH. NO.": 1597, "ADHAR CARD": "556475477958`", "SSSMID": 197362397, "FAMILY ID": 43947901, "BANK AC. NO.": 890018210002931, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": 9617100154, "HOUSE NO.": null, "ADDRESS": "RADHAGANJ"}}'::jsonb
);

-- CLASS 10th row 18 [enrolled]: RAJPAL SINGH MAKWANA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
  'RAJPAL SINGH',
  'MAKWANA',
  '2009-12-12'::date,
  '825486012062',
  '101921394',
  '20460035',
  'HINDU',
  'RAJPUT',
  'GENERAL'
);
insert into public.student_academic_registrations (
  student_id,
  academic_year,
  class_name,
  section,
  admission_number,
  scholar_number,
  enrollment_number,
  admission_date,
  admission_class,
  board_registration_number,
  admission_mode,
  last_school_name,
  tc_status,
  is_rte_student,
  is_active
) values (
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
  '2026-27',
  '10',
  null,
  '45-18-2',
  '1723',
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
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
  'father',
  'LAKHAN',
  null,
  '9752054021',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
  'mother',
  'SORAM BAI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
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
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
  null,
  '3598454655',
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
  '51b6388f-7688-436a-864b-b024c9e4a0dc'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 18, "section": "enrolled", "corrections": [], "data": {"NAME": "RAJPAL SINGH", "SURNAME": "MAKWANA", "FATHER": "LAKHAN", "MOTHER": "SORAM BAI", "DOB": "12.12.2009", "ADM NO.": "45-18-2", "SCH. NO.": 1723, "ADHAR CARD": 825486012062, "SSSMID": 101921394, "FAMILY ID": 20460035, "BANK AC. NO.": 3598454655, "IFSC CODE": "CBIN0280762", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GENERAL", "MOB. NO.": 9752054021, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR"}}'::jsonb
);

-- CLASS 10th row 19 [enrolled]: RAJVANSH PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
  'RAJVANSH',
  'PATEL',
  '2011-12-05'::date,
  '981127182590',
  '100006484',
  '20003882',
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
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
  '2026-27',
  '10',
  null,
  'N-91-14',
  '1598',
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
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
  'father',
  'VINOD',
  null,
  '8817082042',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
  'mother',
  'KARUNA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
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
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
  null,
  '891310110001722',
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
  '2e10b9e2-9bee-4758-a736-c2b72c8ae504'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 19, "section": "enrolled", "corrections": [], "data": {"NAME": "RAJVANSH", "SURNAME": "PATEL", "FATHER": "VINOD", "MOTHER": "KARUNA", "DOB": "05.12.2011", "ADM NO.": "N-91-14", "SCH. NO.": 1598, "ADHAR CARD": 981127182590, "SSSMID": 100006484, "FAMILY ID": 20003882, "BANK AC. NO.": 891310110001722, "IFSC CODE": "BKID0008913", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "MOB. NO.": 8817082042, "HOUSE NO.": null, "ADDRESS": "VIVEK NAGAR"}}'::jsonb
);

-- CLASS 10th row 21 [enrolled]: SHOURYA DHAKAD
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
  'SHOURYA',
  'DHAKAD',
  '2010-12-06'::date,
  '376208250105',
  '305172850',
  '45749929',
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
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
  '2026-27',
  '10',
  null,
  'N-62-14',
  '1605',
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
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
  'father',
  'ASHISH',
  null,
  '9098338058',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
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
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
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
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
  null,
  '50100089118063',
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
  '3a1ca222-96ac-429d-84f6-e00ea8059cc1'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 21, "section": "enrolled", "corrections": [], "data": {"NAME": "SHOURYA", "SURNAME": "DHAKAD", "FATHER": "ASHISH", "MOTHER": "JYOTI", "DOB": "06.12.2010", "ADM NO.": "N-62-14", "SCH. NO.": 1605, "ADHAR CARD": 376208250105, "SSSMID": 305172850, "FAMILY ID": 45749929, "BANK AC. NO.": 50100089118063, "IFSC CODE": "HDFC0000887", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "MOB. NO.": 9098338058, "HOUSE NO.": "A 3/52", "ADDRESS": "AWAS NAGAR"}}'::jsonb
);

-- CLASS 10th row 22 [enrolled]: VINAYAK SILORIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
  'VINAYAK',
  'SILORIYA',
  '2010-10-26'::date,
  '853786137634',
  '304038091',
  '22019179',
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
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
  '2026-27',
  '10',
  null,
  '96-14-N',
  '1612',
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
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
  'father',
  'KAMAL SINGH',
  null,
  '9630549334',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
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
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
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
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
  null,
  '2716101009300',
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
  '46600e82-2b0a-4eb6-8c00-28d759ab2954'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 22, "section": "enrolled", "corrections": [], "data": {"NAME": "VINAYAK", "SURNAME": "SILORIYA", "FATHER": "KAMAL SINGH", "MOTHER": "KOMAL", "DOB": "26.10.2010", "ADM NO.": "96-14-N", "SCH. NO.": 1612, "ADHAR CARD": 853786137634, "SSSMID": 304038091, "FAMILY ID": 22019179, "BANK AC. NO.": 2716101009300, "IFSC CODE": "CNRB0002716", "RELIGION": "HINDU", "CASTE": "HARIJAN", "CATE.": "SC", "MOB. NO.": 9630549334, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR"}}'::jsonb
);

-- CLASS 10th row 23 [enrolled]: YASHWANT PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
  'YASHWANT',
  'PARMAR',
  '2010-07-24'::date,
  '289267221639',
  '172580398',
  '37978609',
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
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
  '2026-27',
  '10',
  null,
  '32-18-2',
  '1719',
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
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
  'father',
  'SANDEEP',
  null,
  '9669716791',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
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
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
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
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
  null,
  '890010110003064',
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
  '0c690523-a7ba-463e-9162-2dc25005e834'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 23, "section": "enrolled", "corrections": [], "data": {"NAME": "YASHWANT", "SURNAME": "PARMAR", "FATHER": "SANDEEP", "MOTHER": "SANGEETA", "DOB": "24.07.2010", "ADM NO.": "32-18-2", "SCH. NO.": 1719, "ADHAR CARD": 289267221639, "SSSMID": 172580398, "FAMILY ID": 37978609, "BANK AC. NO.": 890010110003064, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NATH", "CATE.": "OBC", "MOB. NO.": 9669716791, "HOUSE NO.": "55", "ADDRESS": "BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 10th row 24 [enrolled]: YATHARTH GARODA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  'YATHARTH',
  'GARODA',
  '2010-09-16'::date,
  '688689705451',
  '180521077',
  '38356208',
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
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  '2026-27',
  '10',
  null,
  '75-17-1',
  '1532',
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
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  'father',
  'HEMANT',
  null,
  '9098036606',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  'mother',
  'SHEELA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  'MADHUBAN COLOPNY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  null,
  '63028278671',
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
  '68de251e-bf8d-4c29-a953-c98d44b86d27'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 24, "section": "enrolled", "corrections": [], "data": {"NAME": "YATHARTH", "SURNAME": "GARODA", "FATHER": "HEMANT", "MOTHER": "SHEELA", "DOB": "16.09.2010", "ADM NO.": "75-17-1", "SCH. NO.": 1532, "ADHAR CARD": 688689705451, "SSSMID": 180521077, "FAMILY ID": 38356208, "BANK AC. NO.": 63028278671, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "MOB. NO.": 9098036606, "HOUSE NO.": "223", "ADDRESS": "MADHUBAN COLOPNY"}}'::jsonb
);

-- CLASS 10th row 25 [enrolled]: NUPUR PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
  'NUPUR',
  'PARMAR',
  '2010-01-11'::date,
  '418422119938',
  '200099991',
  '44511861',
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
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
  '2026-27',
  '10',
  null,
  '13-24-8',
  '2186',
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
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
  'father',
  'DINESH',
  null,
  '7803876866',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
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
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
  'RAMRAHIM NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
  null,
  '20289761046',
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
  '3f6e1a86-297b-4a68-85eb-44d68eb5754a'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 25, "section": "enrolled", "corrections": [], "data": {"NAME": "NUPUR", "SURNAME": "PARMAR", "FATHER": "DINESH", "MOTHER": "MANJU", "DOB": "11.01-2010", "ADM NO.": "13-24-8", "SCH. NO.": 2186, "ADHAR CARD": 418422119938, "SSSMID": 200099991, "FAMILY ID": 44511861, "BANK AC. NO.": 20289761046, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BHIL", "CATE.": "ST", "MOB. NO.": 7803876866, "HOUSE NO.": "35", "ADDRESS": "RAMRAHIM NAGAR"}}'::jsonb
);

-- CLASS 10th row 26 [enrolled]: HIMANSHU YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
  'HIMANSHU',
  'YADAV',
  '2010-07-13'::date,
  '407117669982',
  '193052467',
  '42961273',
  'HINDU',
  'GAVALI',
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
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
  '2026-27',
  '10',
  null,
  '35-24-8',
  '2224',
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
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
  'father',
  'RAJESH',
  null,
  '9926756305',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
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
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
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
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
  null,
  '373502010018106',
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
  'aafb51e5-cebe-4589-bfcf-4331a40b9106'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 26, "section": "enrolled", "corrections": [], "data": {"NAME": "HIMANSHU", "SURNAME": "YADAV", "FATHER": "RAJESH", "MOTHER": "PUSHPA", "DOB": "13.07-2010", "ADM NO.": "35-24-8", "SCH. NO.": 2224, "ADHAR CARD": 407117669982, "SSSMID": 193052467, "FAMILY ID": 42961273, "BANK AC. NO.": 373502010018106, "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "GAVALI", "CATE.": "OBC", "MOB. NO.": 9926756305, "HOUSE NO.": "62/2", "ADDRESS": "BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 10th row 27 [enrolled]: AYUSH PRAJAPATI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
  'AYUSH',
  'PRAJAPATI',
  '2011-07-26'::date,
  '222214737548',
  '116086790',
  '23959408',
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
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
  '2026-27',
  '10',
  null,
  '41-24-8',
  '2206',
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
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
  'father',
  'RAVI',
  null,
  '9074210857',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
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
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
  'SIYA PURA DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
  null,
  '227104000216241',
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
  '0349180c-24e4-49f2-9fd7-6cb8736a21db'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 27, "section": "enrolled", "corrections": [], "data": {"NAME": "AYUSH", "SURNAME": "PRAJAPATI", "FATHER": "RAVI", "MOTHER": "POOJA", "DOB": "26.07-2011", "ADM NO.": "41-24-8", "SCH. NO.": 2206, "ADHAR CARD": 222214737548, "SSSMID": 116086790, "FAMILY ID": 23959408, "BANK AC. NO.": 227104000216241, "IFSC CODE": "IBKL0000227", "RELIGION": "HINDU", "CASTE": "KUMHAR", "CATE.": "OBC", "MOB. NO.": 9074210857, "HOUSE NO.": null, "ADDRESS": "SIYA PURA DEWAS"}}'::jsonb
);

-- CLASS 10th row 28 [enrolled]: RAGINI YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
  'RAGINI',
  'YADAV',
  '2010-11-06'::date,
  '547531591580',
  '198563204',
  '44187534',
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
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
  '2026-27',
  '10',
  null,
  'RT-N-29-14',
  '1619',
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
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
  'father',
  'DINESH',
  null,
  '9826927181',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
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
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
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
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
  null,
  '5208543741',
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
  'ae86a0c1-e96a-4501-ade6-0df474aaaf24'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 28, "section": "enrolled", "corrections": [], "data": {"NAME": "RAGINI", "SURNAME": "YADAV", "FATHER": "DINESH", "MOTHER": "KAVITA", "DOB": "06.11.2010", "ADM NO.": "RT-N-29-14", "SCH. NO.": 1619, "ADHAR CARD": 547531591580, "SSSMID": 198563204, "FAMILY ID": 44187534, "BANK AC. NO.": 5208543741, "IFSC CODE": "CBIN0280762", "RELIGION": "HINDU", "CASTE": "GAWLI", "CATE.": "OBC", "MOB. NO.": 9826927181, "HOUSE NO.": "62/2", "ADDRESS": "BHAWANI SAGAR"}}'::jsonb
);

-- CLASS 10th row 29 [enrolled]: RAKSHA BHASKAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c50c3048-dc7c-4fd1-b40f-f6eaf17cef7a'::uuid,
  'RAKSHA',
  'BHASKAR',
  '2011-02-22'::date,
  '995840722919',
  '1988934813',
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
  'c50c3048-dc7c-4fd1-b40f-f6eaf17cef7a'::uuid,
  '2026-27',
  '10',
  null,
  'RT-N-34-14',
  '1620',
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
  'c50c3048-dc7c-4fd1-b40f-f6eaf17cef7a'::uuid,
  'father',
  'SANTOSH',
  null,
  '8224927804 7771991731',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c50c3048-dc7c-4fd1-b40f-f6eaf17cef7a'::uuid,
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
  'c50c3048-dc7c-4fd1-b40f-f6eaf17cef7a'::uuid,
  'CHAMUNDAPURI',
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
  'c50c3048-dc7c-4fd1-b40f-f6eaf17cef7a'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 29, "section": "enrolled", "corrections": [], "data": {"NAME": "RAKSHA", "SURNAME": "BHASKAR", "FATHER": "SANTOSH", "MOTHER": "KIRAN", "DOB": "22.02.2011", "ADM NO.": "RT-N-34-14", "SCH. NO.": 1620, "ADHAR CARD": 995840722919, "SSSMID": 1988934813, "FAMILY ID": 37834020, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "8224927804 7771991731", "HOUSE NO.": "45", "ADDRESS": "CHAMUNDAPURI"}}'::jsonb
);

-- CLASS 10th row 30 [enrolled]: RITUKA YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
  'RITUKA',
  'YADAV',
  '2011-03-23'::date,
  '252311368824',
  '191267314',
  '42586919',
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
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
  '2026-27',
  '10',
  null,
  'RT-28-14-N',
  '1615',
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
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
  'father',
  'JAVEEN',
  null,
  '8878858758',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
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
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
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
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
  null,
  '33984491357',
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
  '11c074e7-809c-4d75-bf82-725e2a73dc7a'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 30, "section": "enrolled", "corrections": [], "data": {"NAME": "RITUKA", "SURNAME": "YADAV", "FATHER": "JAVEEN", "MOTHER": "KAVITA", "DOB": "23.03.2011", "ADM NO.": "RT-28-14-N", "SCH. NO.": 1615, "ADHAR CARD": 252311368824, "SSSMID": 191267314, "FAMILY ID": 42586919, "BANK AC. NO.": 33984491357, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "BAGRI", "CATE.": "SC", "MOB. NO.": 8878858758, "HOUSE NO.": "57/5", "ADDRESS": "RADHAGANJ"}}'::jsonb
);

-- CLASS 10th row 31 [enrolled]: SALONI PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
  'SALONI',
  'PARMAR',
  '2011-01-19'::date,
  '673585282587',
  '191705245',
  '42680884',
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
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
  '2026-27',
  '10',
  null,
  'RT-31-14-N',
  '1618',
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
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
  'father',
  'GOURAV',
  null,
  '99075 43956, 96176 51999',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
  'mother',
  'SONIYA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
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
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
  null,
  '890110110000377',
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
  'a4a804cb-8fc1-4e1d-8be8-41939d48c01e'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 31, "section": "enrolled", "corrections": [], "data": {"NAME": "SALONI", "SURNAME": "PARMAR", "FATHER": "GOURAV", "MOTHER": "SONIYA", "DOB": "19.01.2011", "ADM NO.": "RT-31-14-N", "SCH. NO.": 1618, "ADHAR CARD": 673585282587, "SSSMID": 191705245, "FAMILY ID": 42680884, "BANK AC. NO.": 890110110000377, "IFSC CODE": "BKID0008900", "RELIGION": "HINDU", "CASTE": "NAI", "CATE.": "OBC", "MOB. NO.": "99075 43956, 96176 51999", "HOUSE NO.": null, "ADDRESS": "RADHAGANJ"}}'::jsonb
);

-- CLASS 10th row 32 [enrolled]: TANUSHKA MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '79148523-77d4-4f86-ab48-3791656bf541'::uuid,
  'TANUSHKA',
  'MALVIYA',
  '2010-11-07'::date,
  '371830841898',
  '198848167',
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
  '79148523-77d4-4f86-ab48-3791656bf541'::uuid,
  '2026-27',
  '10',
  null,
  'RT-N-25-14',
  '1617',
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
  '79148523-77d4-4f86-ab48-3791656bf541'::uuid,
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
  '79148523-77d4-4f86-ab48-3791656bf541'::uuid,
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
  '79148523-77d4-4f86-ab48-3791656bf541'::uuid,
  'CHAMUNDA PALACE',
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
  '79148523-77d4-4f86-ab48-3791656bf541'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 32, "section": "enrolled", "corrections": [], "data": {"NAME": "TANUSHKA", "SURNAME": "MALVIYA", "FATHER": "DINESH", "MOTHER": "ALKA", "DOB": "07.11.2010", "ADM NO.": "RT-N-25-14", "SCH. NO.": 1617, "ADHAR CARD": 371830841898, "SSSMID": 198848167, "FAMILY ID": 38444407, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 7389323734, "HOUSE NO.": "7", "ADDRESS": "CHAMUNDA PALACE"}}'::jsonb
);

-- CLASS 10th row 33 [enrolled]: UJJWAL GOTHI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  'UJJWAL',
  'GOTHI',
  '2010-11-01'::date,
  '281270263499',
  '190416379',
  '42394501',
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
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  '2026-27',
  '10',
  null,
  '25-42-9th',
  '2303',
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
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  'father',
  'MURLIDHAR',
  null,
  '9907510410',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  'mother',
  'HIRAMANI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  'GOKULDHAM',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  null,
  '35282157449',
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
  '02c786e7-0a1d-400d-99ea-93229eb25348'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 33, "section": "enrolled", "corrections": [], "data": {"NAME": "UJJWAL", "SURNAME": "GOTHI", "FATHER": "MURLIDHAR", "MOTHER": "HIRAMANI", "DOB": "2010-11-01 00:00:00", "ADM NO.": "25-42-9th", "SCH. NO.": 2303, "ADHAR CARD": 281270263499, "SSSMID": 190416379, "FAMILY ID": 42394501, "BANK AC. NO.": 35282157449, "IFSC CODE": "SBIN0030194", "RELIGION": "HINDU", "CASTE": "KULMI", "CATE.": "OBC", "MOB. NO.": 9907510410, "HOUSE NO.": "25", "ADDRESS": "GOKULDHAM"}}'::jsonb
);

-- CLASS 10th row 34 [enrolled]: RAJ SHIVANI BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
  'RAJ SHIVANI',
  'BAIS',
  '2012-05-05'::date,
  '565906051344',
  '306929791',
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
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
  '2026-27',
  '10',
  null,
  '25-64-9th',
  '2302',
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
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
  'father',
  'PRITHVIRAJ SINGH',
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
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
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
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
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
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
  null,
  '20374171288',
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
  '0c48ed61-9552-436b-bfb7-fa34d2afe7b4'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 34, "section": "enrolled", "corrections": [], "data": {"NAME": "RAJ SHIVANI", "SURNAME": "BAIS", "FATHER": "PRITHVIRAJ SINGH", "MOTHER": "RENUKA", "DOB": "2012-05-05 00:00:00", "ADM NO.": "25-64-9th", "SCH. NO.": 2302, "ADHAR CARD": 565906051344, "SSSMID": 306929791, "FAMILY ID": 46346666, "BANK AC. NO.": 20374171288, "IFSC CODE": "SBIN0003864", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "MOB. NO.": 9907046647, "HOUSE NO.": null, "ADDRESS": "VISHRAM BAG DEWAS"}}'::jsonb
);

-- CLASS 10th row 35 [enrolled]: PRINCE MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
  'PRINCE',
  'MALVIYA',
  '2012-01-01'::date,
  '379705752815',
  '192437274',
  '42815343',
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
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
  '2026-27',
  '10',
  null,
  '25-73-9th',
  '2305',
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
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
  'father',
  'KAMAL',
  null,
  '9907778210',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
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
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
  'MADHUBAN COLONY DEWAS',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
  null,
  '996610110006320',
  'BKID0009966',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '125da3dc-09c2-4fe4-b345-6af1f20295c6'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 35, "section": "enrolled", "corrections": [], "data": {"NAME": "PRINCE", "SURNAME": "MALVIYA", "FATHER": "KAMAL", "MOTHER": "REKHA", "DOB": "2012-01-01 00:00:00", "ADM NO.": "25-73-9th", "SCH. NO.": 2305, "ADHAR CARD": 379705752815, "SSSMID": 192437274, "FAMILY ID": 42815343, "BANK AC. NO.": 996610110006320, "IFSC CODE": "BKID0009966", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": 9907778210, "HOUSE NO.": null, "ADDRESS": "MADHUBAN COLONY DEWAS"}}'::jsonb
);

-- CLASS 10th row 36 [enrolled]: SAMRADHHI VASUDEVAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
  'SAMRADHHI',
  'VASUDEVAN',
  '2010-04-22'::date,
  '783891879438',
  null,
  null,
  'HINDU',
  'BRAMAN',
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
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
  '2026-27',
  '10',
  null,
  '26-33-10th',
  '2353',
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
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
  'father',
  'MURLI',
  null,
  '9752847557, 8827327338',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
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
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
  'KESHAR VIHAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
  null,
  '2716101009025',
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
  '342fdf55-0da1-4659-b85e-6222409edff2'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 36, "section": "enrolled", "corrections": [], "data": {"NAME": "SAMRADHHI", "SURNAME": "VASUDEVAN", "FATHER": "MURLI", "MOTHER": "JYOTI", "DOB": "2010-04-22 00:00:00", "ADM NO.": "26-33-10th", "SCH. NO.": 2353, "ADHAR CARD": 783891879438, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": 2716101009025, "IFSC CODE": "CNRB0002716", "RELIGION": "HINDU", "CASTE": "BRAMAN", "CATE.": "GEN.", "MOB. NO.": "9752847557, 8827327338", "HOUSE NO.": "7", "ADDRESS": "KESHAR VIHAR"}}'::jsonb
);

-- CLASS 10th row 37 [enrolled]: NAINCY DHAKAD
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  'NAINCY',
  'DHAKAD',
  '2011-07-31'::date,
  '737905328415',
  '310198861',
  '479500334',
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
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  '2026-27',
  '10',
  null,
  '26-07-10th',
  '2354',
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
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  'father',
  'HAKIM',
  null,
  '9302898307 , 9244762991',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  'mother',
  'SHANTI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  'B.N.P COLONY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  null,
  '36045994569',
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
  'b6c3e52a-f220-4f1f-a583-521941d95f15'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 37, "section": "enrolled", "corrections": [], "data": {"NAME": "NAINCY", "SURNAME": "DHAKAD", "FATHER": "HAKIM", "MOTHER": "SHANTI", "DOB": "2011-07-31 00:00:00", "ADM NO.": "26-07-10th", "SCH. NO.": 2354, "ADHAR CARD": 737905328415, "SSSMID": 310198861, "FAMILY ID": 479500334, "BANK AC. NO.": 36045994569, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "MOB. NO.": "9302898307 , 9244762991", "HOUSE NO.": "Q. 5179", "ADDRESS": "B.N.P COLONY"}}'::jsonb
);

-- CLASS 10th row 38 [enrolled]: KRISHNA BANAFAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
  'KRISHNA',
  'BANAFAR',
  '2010-08-07'::date,
  '898372546692',
  '100109234',
  '20258027',
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
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
  '2026-27',
  '10',
  null,
  '26-43-10th',
  '2358',
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
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
  'father',
  'JITENDRA',
  null,
  '99777 94028, 88898 34831',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
  'mother',
  'SONAL',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
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
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
  null,
  '2261231143042050',
  'AUBL0002311',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '142b9989-daec-4bfb-be55-9cb1bd8c6c41'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 38, "section": "enrolled", "corrections": [], "data": {"NAME": "KRISHNA", "SURNAME": "BANAFAR", "FATHER": "JITENDRA", "MOTHER": "SONAL", "DOB": "2010-08-07 00:00:00", "ADM NO.": "26-43-10th", "SCH. NO.": 2358, "ADHAR CARD": 898372546692, "SSSMID": 100109234, "FAMILY ID": 20258027, "BANK AC. NO.": 2261231143042050, "IFSC CODE": "AUBL0002311", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN.", "MOB. NO.": "99777 94028, 88898 34831", "HOUSE NO.": null, "ADDRESS": "CHAMUNDA PALACE"}}'::jsonb
);

-- CLASS 10th row 39 [enrolled]: YASHRAJ SINGH GOHIL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
  'YASHRAJ SINGH',
  'GOHIL',
  '2010-09-15'::date,
  '453713284491',
  '113403396',
  '23297255',
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
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
  '2026-27',
  '10',
  null,
  '26-55-10th',
  '2366',
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
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
  'father',
  'BALRAM',
  null,
  '70498 21603, 93408 84355',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
  'mother',
  'RADHAKUNWAR',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
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
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
  null,
  '8925101100000100',
  'BKID00008925',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '13d0fa4c-1b46-4ebc-a99e-4925a3b916d0'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 39, "section": "enrolled", "corrections": [], "data": {"NAME": "YASHRAJ SINGH", "SURNAME": "GOHIL", "FATHER": "BALRAM", "MOTHER": "RADHAKUNWAR", "DOB": "2010-09-15 00:00:00", "ADM NO.": "26-55-10th", "SCH. NO.": 2366, "ADHAR CARD": 453713284491, "SSSMID": 113403396, "FAMILY ID": 23297255, "BANK AC. NO.": 8925101100000100, "IFSC CODE": "BKID00008925", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN.", "MOB. NO.": "70498 21603, 93408 84355", "HOUSE NO.": "40", "ADDRESS": "CHAMUNDAPURI"}}'::jsonb
);

-- CLASS 10th row 40 [enrolled]: KASHISH YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  'KASHISH',
  'YADAV',
  '2010-12-21'::date,
  null,
  null,
  null,
  'HINDU',
  'GWALI',
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
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  '2026-27',
  '10',
  null,
  '26-48-10th',
  '2362',
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
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  'father',
  'RAKESH',
  null,
  '62629 18491, 99930 80301',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  'mother',
  'SHUSHILA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  'LAKXMI BAI MARG NAHAR DRWAJA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  null,
  'A-07248100019736',
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
  '91fa5c17-47b1-4ffb-9258-53779f912185'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 40, "section": "enrolled", "corrections": [], "data": {"NAME": "KASHISH", "SURNAME": "YADAV", "FATHER": "RAKESH", "MOTHER": "SHUSHILA", "DOB": "2010-12-21 00:00:00", "ADM NO.": "26-48-10th", "SCH. NO.": 2362, "ADHAR CARD": null, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": "A-07248100019736", "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "GWALI", "CATE.": "OBC", "MOB. NO.": "62629 18491, 99930 80301", "HOUSE NO.": null, "ADDRESS": "LAKXMI BAI MARG NAHAR DRWAJA"}}'::jsonb
);

-- CLASS 10th row 42 [left]: MAHEE SANGTE
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
  'MAHEE',
  'SANGTE',
  '2011-04-15'::date,
  'A-445728483240',
  '191643454',
  '38457489',
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
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
  '2026-27',
  '10',
  null,
  'RT-33-14-N',
  '1623',
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
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
  'father',
  'NARENDRA',
  null,
  'M-9826035434, 9977828826',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
  'mother',
  'SHASHI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
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
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
  null,
  'SBI32755824331',
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
  '1c65a82f-48c1-414c-ae70-d5ad3b0df467'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 42, "section": "left", "corrections": [], "data": {"NAME": "MAHEE", "SURNAME": "SANGTE", "FATHER": "NARENDRA", "MOTHER": "SHASHI", "DOB": "15.04.2011", "ADM NO.": "RT-33-14-N", "SCH. NO.": 1623, "ADHAR CARD": "A-445728483240", "SSSMID": 191643454, "FAMILY ID": 38457489, "BANK AC. NO.": "SBI32755824331", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "MAHTER", "CATE.": "SC", "MOB. NO.": "M-9826035434, 9977828826", "HOUSE NO.": null, "ADDRESS": "AWAS NAGAR"}}'::jsonb
);

-- CLASS 10th row 43 [left]: ARPIT TAWAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '02c3b1f4-d5b2-4826-926c-6180d786cf96'::uuid,
  'ARPIT',
  'TAWAR',
  '2011-03-31'::date,
  'A-972001673408',
  '100980175',
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
  '02c3b1f4-d5b2-4826-926c-6180d786cf96'::uuid,
  '2026-27',
  '10',
  null,
  '63-14-N',
  '1569',
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
  '02c3b1f4-d5b2-4826-926c-6180d786cf96'::uuid,
  'father',
  'RAJESH',
  null,
  'M-9993678589',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '02c3b1f4-d5b2-4826-926c-6180d786cf96'::uuid,
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
  '02c3b1f4-d5b2-4826-926c-6180d786cf96'::uuid,
  'BILAWALI AB ROAD -91',
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
  '02c3b1f4-d5b2-4826-926c-6180d786cf96'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 43, "section": "left", "corrections": [], "data": {"NAME": "ARPIT", "SURNAME": "TAWAR", "FATHER": "RAJESH", "MOTHER": "ALKA", "DOB": "31.03.2011", "ADM NO.": "63-14-N", "SCH. NO.": 1569, "ADHAR CARD": "A-972001673408", "SSSMID": 100980175, "FAMILY ID": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "MOB. NO.": "M-9993678589", "HOUSE NO.": null, "ADDRESS": "BILAWALI AB ROAD -91"}}'::jsonb
);

-- CLASS 10th row 44 [left]: LAKSHYA -24 YADAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '8e25427d-30f7-448a-a708-89c2d7c8b5c9'::uuid,
  'LAKSHYA -24',
  'YADAV',
  '2011-09-17'::date,
  'A.555159209203',
  '200249773',
  '44549092',
  'HINDU',
  'GAVALI',
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
  '8e25427d-30f7-448a-a708-89c2d7c8b5c9'::uuid,
  '2026-27',
  '10',
  null,
  '48-24-8',
  '2242',
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
  '8e25427d-30f7-448a-a708-89c2d7c8b5c9'::uuid,
  'father',
  'RAJESH',
  null,
  'M.7987553595',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8e25427d-30f7-448a-a708-89c2d7c8b5c9'::uuid,
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
  '8e25427d-30f7-448a-a708-89c2d7c8b5c9'::uuid,
  'AWAS NAGAR',
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
  '8e25427d-30f7-448a-a708-89c2d7c8b5c9'::uuid,
  '2026-27',
  '10',
  '9-10.xlsx',
  'CLASS 10th',
  '{"sheet_name": "CLASS 10th", "row_number": 44, "section": "left", "corrections": [], "data": {"NAME": "LAKSHYA -24", "SURNAME": "YADAV", "FATHER": "RAJESH", "MOTHER": "SULOCHANA", "DOB": "17.09-2011", "ADM NO.": "48-24-8", "SCH. NO.": 2242, "ADHAR CARD": "A.555159209203", "SSSMID": 200249773, "FAMILY ID": 44549092, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "GAVALI", "CATE.": "OBC", "MOB. NO.": "M.7987553595", "HOUSE NO.": null, "ADDRESS": "AWAS NAGAR"}}'::jsonb
);

commit;
