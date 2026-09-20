-- RILEN student import for classes 11 and 12
-- Source workbook: 11-12.xlsx
-- Generated records: 46
-- Rules: no RTE section => is_rte_student false; LEFT section => is_active false and tc_status LEFT; suspicious dates => null.

begin;

-- CLASS 11th row 3 [enrolled]: ABHISHEK CHOUDHARY
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
  'ABHISHEK',
  'CHOUDHARY',
  '2008-11-18'::date,
  '686782762280',
  '127871465',
  '26835278',
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
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
  '2026-27',
  '11',
  null,
  '108-19-4',
  '1782',
  null,
  '2019-07-09'::date,
  '4th',
  null,
  'LOCAL',
  'MERIT HIGHER SECONDRY SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
  'father',
  'SANTOSH',
  'FARMER',
  '9174363976, 9171501039',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
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
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
  'VISHRAM BAGH',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
  null,
  '5559101000888',
  'CNRB0005559',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0142c64a-0954-4922-b709-d36618d46483'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 3, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "ABHISHEK", "SURNAME": "CHOUDHARY", "FATHER": "SANTOSH", "MOTHER": "SEEMA", "DOB": "18/11/2008", "ADM NO.": "108-19-4", "SCH. NO.": 1782, "ENROLL": null, "ADHAR CARD": 686782762280, "SSSMID": 127871465, "FAMILY ID": 26835278, "BANK AC. NO.": 5559101000888, "IFSC CODE": "CNRB0005559", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2019-07-09 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "4th", "MOB. NO.": "9174363976, 9171501039", "HOUSE NO.": null, "ADDRESS": "VISHRAM BAGH", "LAST SCHOOL": "MERIT HIGHER SECONDRY SCHOOL", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 4 [enrolled]: ANUSHKA CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
  'ANUSHKA',
  'CHOUHAN',
  '2010-07-06'::date,
  '413066680543',
  '104607628',
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
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
  '2026-27',
  '11',
  null,
  '130-13-N',
  '1446',
  null,
  '2019-07-18'::date,
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
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
  'father',
  'SHIVPAL',
  'FARMER',
  '9977768999',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
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
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
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
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
  null,
  '373502010016009',
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
  'd0e0b662-9d1d-4c41-b0f9-129a2a26671f'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 4, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "ANUSHKA", "SURNAME": "CHOUHAN", "FATHER": "SHIVPAL", "MOTHER": "RADHA", "DOB": "06.07.2010", "ADM NO.": "130-13-N", "SCH. NO.": 1446, "ENROLL": null, "ADHAR CARD": 413066680543, "SSSMID": 104607628, "FAMILY ID": 21125289, "BANK AC. NO.": 373502010016009, "IFSC CODE": "UBIN0537357", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "FARMER", "ADMN.DATE": "2019-07-18 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9977768999, "HOUSE NO.": null, "ADDRESS": "MANGAL MURTI NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 5 [enrolled]: DHERYA PRATAP SINGH CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c3896223-fcb7-437c-aed9-68312f401b72'::uuid,
  'DHERYA PRATAP SINGH',
  'CHOUHAN',
  '2009-11-20'::date,
  '997732041444',
  '190910277',
  '42508905',
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
  'c3896223-fcb7-437c-aed9-68312f401b72'::uuid,
  '2026-27',
  '11',
  null,
  '11-18-03',
  '1697',
  null,
  '2018-04-06'::date,
  '3rd',
  null,
  'LOCAL',
  'JUPITER ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3896223-fcb7-437c-aed9-68312f401b72'::uuid,
  'father',
  'DHEERAJ SINGH',
  'DRIVER',
  '9755493067',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c3896223-fcb7-437c-aed9-68312f401b72'::uuid,
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
  'c3896223-fcb7-437c-aed9-68312f401b72'::uuid,
  'CHAMUNDA DHAM',
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
  'c3896223-fcb7-437c-aed9-68312f401b72'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 5, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "DHERYA PRATAP SINGH", "SURNAME": "CHOUHAN", "FATHER": "DHEERAJ SINGH", "MOTHER": "MANJU", "DOB": "20.11.2009", "ADM NO.": "11-18-03", "SCH. NO.": 1697, "ENROLL": null, "ADHAR CARD": 997732041444, "SSSMID": 190910277, "FAMILY ID": 42508905, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "DRIVER", "ADMN.DATE": "2018-04-06 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "3rd", "MOB. NO.": 9755493067, "HOUSE NO.": 9, "ADDRESS": "CHAMUNDA DHAM", "LAST SCHOOL": "JUPITER ACADEMY", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 6 [enrolled]: HANSRAJ NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
  'HANSRAJ',
  'NAGAR',
  '2009-11-06'::date,
  '544745678719',
  '196074163',
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
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
  '2026-27',
  '11',
  null,
  '53-13-N',
  '1455',
  null,
  '2013-06-11'::date,
  'NURSERY',
  null,
  'B-1115',
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
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
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
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
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
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
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
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
  null,
  '890110510003287',
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
  'a57dc5dc-6f6c-4487-967e-bcefd3cfac41'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 6, "section": "enrolled", "data": {"MODE": "B-1115", "NAME": "HANSRAJ", "SURNAME": "NAGAR", "FATHER": "MANOHAR", "MOTHER": "SAPNA", "DOB": "06.11.2009", "ADM NO.": "53-13-N", "SCH. NO.": 1455, "ENROLL": null, "ADHAR CARD": 544745678719, "SSSMID": 196074163, "FAMILY ID": 43669994, "BANK AC. NO.": 890110510003287, "IFSC CODE": "BKID0008901", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2013-06-11 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9926503024, "HOUSE NO.": null, "ADDRESS": "BILAWALI", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 7 [enrolled]: ISHIKA PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
  'ISHIKA',
  'PATEL',
  '2010-06-28'::date,
  '956622281586',
  '102670111',
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
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
  '2026-27',
  '11',
  null,
  '53-13-N',
  '1427',
  null,
  '2013-07-04'::date,
  'NURSERY',
  null,
  'B-1256',
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
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
  'father',
  'NILESH',
  'FARMER',
  '9770232212',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
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
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
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
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
  null,
  '274210100041086',
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
  'a0c8fbca-26f5-4b30-82ea-a39c18d58996'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 7, "section": "enrolled", "data": {"MODE": "B-1256", "NAME": "ISHIKA", "SURNAME": "PATEL", "FATHER": "NILESH", "MOTHER": "SHOBHA", "DOB": "28.06.2010", "ADM NO.": "53-13-N", "SCH. NO.": 1427, "ENROLL": null, "ADHAR CARD": 956622281586, "SSSMID": 102670111, "FAMILY ID": 20644773, "BANK AC. NO.": 274210100041086, "IFSC CODE": "ANDB0002742", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2013-07-04 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9770232212, "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 8 [enrolled]: MITHLESH MALVIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
  'MITHLESH',
  'MALVIYA',
  '2010-07-15'::date,
  '552517324572',
  '302701904',
  '45077843',
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
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
  '2026-27',
  '11',
  null,
  '88-19-04',
  '1774',
  null,
  '2019-05-22'::date,
  '4th',
  null,
  'LOCAL',
  'M.M. VIDHYALAYA',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
  'father',
  'RAJENDRA',
  'BANK',
  '9179154458',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
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
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
  'CHAMUNDA PLACE',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
  null,
  '321001500017710',
  'PUNB0032100',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '798aefd6-e9fc-4444-8306-41583cbc2cdb'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 8, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "MITHLESH", "SURNAME": "MALVIYA", "FATHER": "RAJENDRA", "MOTHER": "SAROJ", "DOB": "15.07.2010", "ADM NO.": "88-19-04", "SCH. NO.": 1774, "ENROLL": null, "ADHAR CARD": 552517324572, "SSSMID": 302701904, "FAMILY ID": 45077843, "BANK AC. NO.": 321001500017710, "IFSC CODE": "PUNB0032100", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "BANK", "ADMN.DATE": "2019-05-22 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "4th", "MOB. NO.": 9179154458, "HOUSE NO.": null, "ADDRESS": "CHAMUNDA PLACE", "LAST SCHOOL": "M.M. VIDHYALAYA", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 9 [enrolled]: PRITHVIRAJ S. SHAKTAWAT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
  'PRITHVIRAJ S.',
  'SHAKTAWAT',
  '2009-01-26'::date,
  '371803853428',
  '109241893',
  '22276351',
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
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
  '2026-27',
  '11',
  null,
  '40-21-06',
  '1949',
  null,
  '2021-08-10'::date,
  '6th',
  null,
  'LOCAL',
  'VIJAY JYOTI ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
  'father',
  'NAGU SINGH',
  'FARMER',
  '8435347710',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
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
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
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
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
  null,
  '120900101000129',
  'CORP0001209',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '6b7dd4d7-f92f-4c9f-8c63-3cc517206e57'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 9, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "PRITHVIRAJ S.", "SURNAME": "SHAKTAWAT", "FATHER": "NAGU SINGH", "MOTHER": "SARITA", "DOB": "26.01.2009", "ADM NO.": "40-21-06", "SCH. NO.": 1949, "ENROLL": null, "ADHAR CARD": 371803853428, "SSSMID": 109241893, "FAMILY ID": 22276351, "BANK AC. NO.": 120900101000129, "IFSC CODE": "CORP0001209", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "FARMER", "ADMN.DATE": "2021-08-10 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "6th", "MOB. NO.": 8435347710, "HOUSE NO.": null, "ADDRESS": "CHAMUNDAPURI", "LAST SCHOOL": "VIJAY JYOTI ACADEMY", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 10 [enrolled]: RAJEEV NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
  'RAJEEV',
  'NAGAR',
  '2010-09-21'::date,
  '453191252192',
  '187749466',
  '41775036',
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
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
  '2026-27',
  '11',
  null,
  '48-13-N',
  '1475',
  null,
  '2013-06-10'::date,
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
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
  'father',
  'MRITYUNJAY',
  'PVT. JOB',
  '9893350850',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
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
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
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
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
  null,
  '31994433523',
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
  '12f16d8b-4bd5-4340-b345-ba3011a3be8c'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 10, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "RAJEEV", "SURNAME": "NAGAR", "FATHER": "MRITYUNJAY", "MOTHER": "SUNITA", "DOB": "21.09.2010", "ADM NO.": "48-13-N", "SCH. NO.": 1475, "ENROLL": null, "ADHAR CARD": 453191252192, "SSSMID": 187749466, "FAMILY ID": 41775036, "BANK AC. NO.": 31994433523, "IFSC CODE": "SBIN0012291", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2013-06-10 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9893350850, "HOUSE NO.": null, "ADDRESS": "DEVSHREE NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 11 [enrolled]: UJJAWAL PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
  'UJJAWAL',
  'PATEL',
  '2010-03-08'::date,
  '220729078101',
  '116524741',
  '24069707',
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
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
  '2026-27',
  '11',
  null,
  '28-20-5',
  '1871',
  null,
  '2020-06-15'::date,
  '5th',
  null,
  'B-1256',
  'VIJAY JYOTI ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
  'father',
  'SANJAY',
  'FARMER',
  '9926087215',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
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
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
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
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
  null,
  '63036255495',
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
  '93f01f10-b637-4b41-a905-ff0ddc70634e'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 11, "section": "enrolled", "data": {"MODE": "B-1256", "NAME": "UJJAWAL", "SURNAME": "PATEL", "FATHER": "SANJAY", "MOTHER": "SAPNA", "DOB": "08.03.2010", "ADM NO.": "28-20-5", "SCH. NO.": 1871, "ENROLL": null, "ADHAR CARD": 220729078101, "SSSMID": 116524741, "FAMILY ID": 24069707, "BANK AC. NO.": 63036255495, "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2020-06-15 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "5th", "MOB. NO.": 9926087215, "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": "VIJAY JYOTI ACADEMY", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 12 [enrolled]: VINAYAK JAISWAL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
  'VINAYAK',
  'JAISWAL',
  '2010-09-16'::date,
  '445736761566',
  '176978813',
  '39399095',
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
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
  '2026-27',
  '11',
  null,
  '24-13-N',
  '1493',
  null,
  '2013-04-10'::date,
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
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
  'father',
  'MANISH',
  'DRIVER',
  '9826667932,',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
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
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
  'LAXMI BAI MARG',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
  null,
  '63040316178',
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
  'cbb9ea54-4f32-41cf-ae48-68e6676f36ad'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 12, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "VINAYAK", "SURNAME": "JAISWAL", "FATHER": "MANISH", "MOTHER": "REENA", "DOB": "16-9-2010", "ADM NO.": "24-13-N", "SCH. NO.": 1493, "ENROLL": null, "ADHAR CARD": 445736761566, "SSSMID": 176978813, "FAMILY ID": 39399095, "BANK AC. NO.": 63040316178, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "KALAL", "CATE.": "OBC", "OCCUPATION": "DRIVER", "ADMN.DATE": "2013-04-10 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": "9826667932,", "HOUSE NO.": 142, "ADDRESS": "LAXMI BAI MARG", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 13 [enrolled]: YOGITA SEM
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  'YOGITA',
  'SEM',
  '2010-07-22'::date,
  '613258834609',
  '312472156',
  '37866004',
  'HINDU',
  'AHIRWA',
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
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  '2026-27',
  '11',
  null,
  '09-19-03',
  '1791',
  null,
  '2019-07-15'::date,
  '4th',
  null,
  'LOCAL',
  'MAHESHWARI PUBLIC SCHJOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  'father',
  'BHIM',
  'PVT. JOB',
  '9039784639',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  'mother',
  'SANGITA`',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  'NAYAWADI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  null,
  '53013062765',
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
  'c410c0c6-ec1c-4457-b4e1-f76971a32c63'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 13, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "YOGITA", "SURNAME": "SEM", "FATHER": "BHIM", "MOTHER": "SANGITA`", "DOB": "22.07.2010", "ADM NO.": "09-19-03", "SCH. NO.": 1791, "ENROLL": null, "ADHAR CARD": 613258834609, "SSSMID": 312472156, "FAMILY ID": 37866004, "BANK AC. NO.": 53013062765, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "AHIRWA", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2019-07-15 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "4th", "MOB. NO.": 9039784639, "HOUSE NO.": null, "ADDRESS": "NAYAWADI", "LAST SCHOOL": "MAHESHWARI PUBLIC SCHJOOL", "TC": null}}'::jsonb
);

-- CLASS 11th row 14 [enrolled]: DEEPIKA THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
  'DEEPIKA',
  'THAKUR',
  '2009-08-30'::date,
  '7692456620068',
  '199012943',
  '38457713',
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
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
  '2026-27',
  '11',
  null,
  '26-13-N',
  '1517',
  null,
  '2013-02-19'::date,
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
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
  'father',
  'SHAILENDRA',
  'PVT. JOB',
  '9977203963',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
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
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
  'RADHA GANJ',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
  null,
  '2414000000300',
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
  '82005a20-a7ac-4e44-a053-85e2aad7543a'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 14, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "DEEPIKA", "SURNAME": "THAKUR", "FATHER": "SHAILENDRA", "MOTHER": "MANJU", "DOB": "30.08.2009", "ADM NO.": "26-13-N", "SCH. NO.": 1517, "ENROLL": null, "ADHAR CARD": 7692456620068, "SSSMID": 199012943, "FAMILY ID": 38457713, "BANK AC. NO.": 2414000000300, "IFSC CODE": "IOBA0002414", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2013-02-19 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9977203963, "HOUSE NO.": 10, "ADDRESS": "RADHA GANJ", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 15 [enrolled]: RAJVEER MALI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
  'RAJVEER',
  'MALI',
  '2010-08-15'::date,
  '658731628612',
  '198404733',
  '39533709',
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
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
  '2026-27',
  '11',
  null,
  '21-13-N',
  '1515',
  null,
  '2013-02-18'::date,
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
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
  'father',
  'SANTOSH',
  'SHOP',
  '9826248457',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
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
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
  'SIDDHARTH NAGAR',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
  null,
  '7240100034006',
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
  'ed65ce5e-1c4a-46a9-ab5d-f2957c8e2b8d'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 15, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "RAJVEER", "SURNAME": "MALI", "FATHER": "SANTOSH", "MOTHER": "RANI", "DOB": "15.08.2010", "ADM NO.": "21-13-N", "SCH. NO.": 1515, "ENROLL": null, "ADHAR CARD": 658731628612, "SSSMID": 198404733, "FAMILY ID": 39533709, "BANK AC. NO.": 7240100034006, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "MALI", "CATE.": "OBC", "OCCUPATION": "SHOP", "ADMN.DATE": "2013-02-18 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9826248457, "HOUSE NO.": 10, "ADDRESS": "SIDDHARTH NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 16 [enrolled]: VISHAL DEVDA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  'VISHAL',
  'DEVDA',
  '2008-09-13'::date,
  null,
  '195545743',
  '37252371',
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
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  '2026-27',
  '11',
  null,
  '20-13-N',
  '1514',
  null,
  '2013-02-20'::date,
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
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  'father',
  'ANAND',
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
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  'mother',
  'TINA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  'BIRAKHEDI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  null,
  '75901505542',
  'ICIC0000759',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '37371caa-6dd5-4632-852c-d3fe270bf9bb'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 16, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "VISHAL", "SURNAME": "DEVDA", "FATHER": "ANAND", "MOTHER": "TINA", "DOB": "13.09.2008", "ADM NO.": "20-13-N", "SCH. NO.": 1514, "ENROLL": null, "ADHAR CARD": null, "SSSMID": 195545743, "FAMILY ID": 37252371, "BANK AC. NO.": 75901505542, "IFSC CODE": "ICIC0000759", "RELIGION": "HINDU", "CASTE": null, "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2013-02-20 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": null, "HOUSE NO.": null, "ADDRESS": "BIRAKHEDI", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 17 [enrolled]: NIRANJAN NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '73f5ae6c-e917-41b3-8147-0209aa7c32ee'::uuid,
  'NIRANJAN',
  'NAGAR',
  '2009-12-14'::date,
  '278410733600',
  '192442433',
  '42831340',
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
  '73f5ae6c-e917-41b3-8147-0209aa7c32ee'::uuid,
  '2026-27',
  '11',
  null,
  '24-52-9th',
  '2222',
  null,
  '2024-06-11'::date,
  '9th',
  null,
  'LOCAL',
  'MAA JINWANI',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '73f5ae6c-e917-41b3-8147-0209aa7c32ee'::uuid,
  'father',
  'SOHAN',
  'FARMER',
  '7697184787',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '73f5ae6c-e917-41b3-8147-0209aa7c32ee'::uuid,
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
  '73f5ae6c-e917-41b3-8147-0209aa7c32ee'::uuid,
  'ADARSH NAGAR',
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
  '73f5ae6c-e917-41b3-8147-0209aa7c32ee'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 17, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "NIRANJAN", "SURNAME": "NAGAR", "FATHER": "SOHAN", "MOTHER": "REENA", "DOB": "14.12.2009", "ADM NO.": "24-52-9th", "SCH. NO.": 2222, "ENROLL": null, "ADHAR CARD": 278410733600, "SSSMID": 192442433, "FAMILY ID": 42831340, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2024-06-11 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "9th", "MOB. NO.": 7697184787, "HOUSE NO.": null, "ADDRESS": "ADARSH NAGAR", "LAST SCHOOL": "MAA JINWANI", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 18 [enrolled]: PRATIGYA NO
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
  'PRATIGYA',
  'NO',
  '2011-02-21'::date,
  '391482496655',
  '101528683',
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
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
  '2026-27',
  '11',
  null,
  '24-25-9th',
  '2210',
  null,
  '2024-04-18'::date,
  '9th',
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
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
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
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
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
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
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
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
  null,
  '35999631316',
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
  'c9f2c3b1-30c4-42ec-84a6-a8df419594d8'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 18, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "PRATIGYA", "SURNAME": "NO", "FATHER": "ARJUN", "MOTHER": "NARMADA", "DOB": "21.02.2011", "ADM NO.": "24-25-9th", "SCH. NO.": 2210, "ENROLL": null, "ADHAR CARD": 391482496655, "SSSMID": 101528683, "FAMILY ID": 20357836, "BANK AC. NO.": 35999631316, "IFSC CODE": "SBIN0030511", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "ARMY", "ADMN.DATE": "2024-04-18 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "9th", "MOB. NO.": 9424807164, "HOUSE NO.": 32, "ADDRESS": "FATANPUR", "LAST SCHOOL": "NEW MALWANCHAL", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 19 [enrolled]: AASTHA PARIHAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
  'AASTHA',
  'PARIHAR',
  '2010-08-17'::date,
  '499085953893',
  '192793668',
  '41735043',
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
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
  '2026-27',
  '11',
  null,
  '24-73-9th',
  '2235',
  null,
  '2024-06-21'::date,
  '9th',
  null,
  'LOCAL',
  'SANSKAR H.S. SCHOOL DEWAS',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
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
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
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
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
  'CHAMVNDA',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
  null,
  '274212010001588',
  'UBIN0827478',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'edf3f3ab-1eb3-4a08-b7a1-a0679e4e51d3'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 19, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "AASTHA", "SURNAME": "PARIHAR", "FATHER": "DILIP", "MOTHER": "LAXMI", "DOB": "17.08.2010", "ADM NO.": "24-73-9th", "SCH. NO.": 2235, "ENROLL": null, "ADHAR CARD": 499085953893, "SSSMID": 192793668, "FAMILY ID": 41735043, "BANK AC. NO.": 274212010001588, "IFSC CODE": "UBIN0827478", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "TAILOR", "ADMN.DATE": "2024-06-21 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "9th", "MOB. NO.": 9009049943, "HOUSE NO.": 65, "ADDRESS": "CHAMVNDA", "LAST SCHOOL": "SANSKAR H.S. SCHOOL DEWAS", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 20 [enrolled]: SANTOSHI NO
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '3e30fc4f-4f40-492d-8945-c39cf5f4c8ca'::uuid,
  'SANTOSHI',
  'NO',
  '2011-09-25'::date,
  '673942511719',
  null,
  null,
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
  '3e30fc4f-4f40-492d-8945-c39cf5f4c8ca'::uuid,
  '2026-27',
  '11',
  null,
  '24-87-9th',
  '2244',
  null,
  '2024-07-19'::date,
  '9th',
  null,
  'LOCAL',
  'SDAM KANPUR',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3e30fc4f-4f40-492d-8945-c39cf5f4c8ca'::uuid,
  'father',
  'NANDU',
  'BUSINESS',
  '7067861039',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '3e30fc4f-4f40-492d-8945-c39cf5f4c8ca'::uuid,
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
  '3e30fc4f-4f40-492d-8945-c39cf5f4c8ca'::uuid,
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
  '3e30fc4f-4f40-492d-8945-c39cf5f4c8ca'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 20, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "SANTOSHI", "SURNAME": "NO", "FATHER": "NANDU", "MOTHER": "KIRAN", "DOB": "25-09-2011", "ADM NO.": "24-87-9th", "SCH. NO.": 2244, "ENROLL": null, "ADHAR CARD": 673942511719, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": null, "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "19-07-24", "BOARD R.N.": null, "ADM .CLASS": "9th", "MOB. NO.": 7067861039, "HOUSE NO.": null, "ADDRESS": "AWAS NAGAR", "LAST SCHOOL": "SDAM KANPUR", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 21 [enrolled]: KANAK PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  'KANAK',
  'PATEL',
  '2009-09-14'::date,
  '838027860088',
  '311743342',
  '48330786',
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
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  '2026-27',
  '11',
  null,
  '25-30-10th',
  '2289',
  null,
  '2025-06-19'::date,
  '10th',
  null,
  'BUS',
  'THE EVEREST SCHOOL DEWAS',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  'father',
  'SOHAN',
  'BUSINESS',
  '9039532949',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  'mother',
  'SHARMILA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  'SUN CITY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  null,
  '68050100004153',
  'BARB0UJDEWA',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  'a1daf890-ef9f-4d41-af3c-fdd76f1f98d6'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 21, "section": "enrolled", "data": {"MODE": "BUS", "NAME": "KANAK", "SURNAME": "PATEL", "FATHER": "SOHAN", "MOTHER": "SHARMILA", "DOB": "14-09-2009", "ADM NO.": "25-30-10th", "SCH. NO.": 2289, "ENROLL": null, "ADHAR CARD": 838027860088, "SSSMID": 311743342, "FAMILY ID": 48330786, "BANK AC. NO.": 68050100004153, "IFSC CODE": "BARB0UJDEWA", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "19-06-2025", "BOARD R.N.": null, "ADM .CLASS": "10th", "MOB. NO.": 9039532949, "HOUSE NO.": 224, "ADDRESS": "SUN CITY", "LAST SCHOOL": "THE EVEREST SCHOOL DEWAS", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 22 [enrolled]: DEEPIKA PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
  'DEEPIKA',
  'PATEL',
  '2009-11-30'::date,
  '277581612557',
  '192832290',
  '37373174',
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
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
  '2026-27',
  '11',
  null,
  '25-29-10th',
  '2288',
  null,
  '2025-06-19'::date,
  '10th',
  null,
  'BUS',
  'ACADEMIK CONVENT DEWAS',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
  'father',
  'RAKESH',
  'BUSINESS',
  '8839945734',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
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
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
  'SUN CITY',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
  null,
  '17010410000563',
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
  '9ffcc0d4-ba18-442d-85d7-e70fcf5a5026'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 22, "section": "enrolled", "data": {"MODE": "BUS", "NAME": "DEEPIKA", "SURNAME": "PATEL", "FATHER": "RAKESH", "MOTHER": "RANI", "DOB": "30-11-2009", "ADM NO.": "25-29-10th", "SCH. NO.": 2288, "ENROLL": null, "ADHAR CARD": 277581612557, "SSSMID": 192832290, "FAMILY ID": 37373174, "BANK AC. NO.": 17010410000563, "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "19-06-2025", "BOARD R.N.": null, "ADM .CLASS": "10th", "MOB. NO.": 8839945734, "HOUSE NO.": 446, "ADDRESS": "SUN CITY", "LAST SCHOOL": "ACADEMIK CONVENT DEWAS", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 23 [enrolled]: AAKASH RAJPUT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
  'AAKASH',
  'RAJPUT',
  '2009-10-10'::date,
  '779773521504',
  '141027872',
  '30005222',
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
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
  '2026-27',
  '11',
  null,
  '25-41-2025',
  '2310',
  null,
  '2025-06-28'::date,
  '10th',
  null,
  'LOCAL',
  'GRAVITY CONVENT SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
  'father',
  'RAJENDRA SINGH',
  'PVT. JOB',
  '9977592645',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
  'mother',
  'CHANDR KANTA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
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
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
  null,
  '500101012849796',
  'CIUB0000703',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '0097aeb6-6576-47b3-bcb9-6f7769e0095a'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 23, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "AAKASH", "SURNAME": "RAJPUT", "FATHER": "RAJENDRA SINGH", "MOTHER": "CHANDR KANTA", "DOB": "2009-10-10 00:00:00", "ADM NO.": "25-41-2025", "SCH. NO.": 2310, "ENROLL": null, "ADHAR CARD": 779773521504, "SSSMID": 141027872, "FAMILY ID": 30005222, "BANK AC. NO.": 500101012849796, "IFSC CODE": "CIUB0000703", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "28/06/25", "BOARD R.N.": null, "ADM .CLASS": "10th", "MOB. NO.": 9977592645, "HOUSE NO.": 47, "ADDRESS": "MADHUBAN COLONY", "LAST SCHOOL": "GRAVITY CONVENT SCHOOL", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 25 [left]: RAJVEER SINGH SHAKTAWAT
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
  'RAJVEER SINGH',
  'SHAKTAWAT',
  '2010-04-20'::date,
  'A-727396704783',
  '109245521',
  '22276351',
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
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
  '2026-27',
  '11',
  null,
  '39-21-06',
  '1948',
  null,
  '2021-08-10'::date,
  '6th',
  null,
  'LOCAL',
  'VIJAY JYOTI ACADEMY',
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
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
  'father',
  'JAYPAL S.',
  'FARMER',
  '8435347710',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
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
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
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
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
  null,
  '520101213188186',
  'CORP0001209',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '5793cc3a-b552-4644-a854-3ffe3c7fc1d7'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 25, "section": "left", "data": {"MODE": "LOCAL", "NAME": "RAJVEER SINGH", "SURNAME": "SHAKTAWAT", "FATHER": "JAYPAL S.", "MOTHER": "KOMAL", "DOB": "20.04.2010", "ADM NO.": "39-21-06", "SCH. NO.": 1948, "ENROLL": null, "ADHAR CARD": "A-727396704783", "SSSMID": 109245521, "FAMILY ID": 22276351, "BANK AC. NO.": 520101213188186, "IFSC CODE": "CORP0001209", "RELIGION": "HINDU", "CASTE": "RAJPUT", "CATE.": "GEN", "OCCUPATION": "FARMER", "ADMN.DATE": "2021-08-10 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "6th", "MOB. NO.": 8435347710, "HOUSE NO.": "-", "ADDRESS": "CHAMUNDAPURI", "LAST SCHOOL": "VIJAY JYOTI ACADEMY", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 26 [left]: JIYA TUMRAM
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
  'JIYA',
  'TUMRAM',
  '2010-03-11'::date,
  'A-768182285398',
  '200218602',
  '38456985',
  'HINDU',
  'GOND',
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
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
  '2026-27',
  '11',
  null,
  '122-13-N',
  '1460',
  null,
  '2013-07-08'::date,
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
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
  'father',
  'SUNIL',
  'BNP',
  '9165861010',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
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
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
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
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
  null,
  'SBI63005388884',
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
  'f85cfaf8-12eb-45d0-b65c-1caf1c69084c'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 26, "section": "left", "data": {"MODE": "LOCAL", "NAME": "JIYA", "SURNAME": "TUMRAM", "FATHER": "SUNIL", "MOTHER": "VINITA", "DOB": "11.03.2010", "ADM NO.": "122-13-N", "SCH. NO.": 1460, "ENROLL": null, "ADHAR CARD": "A-768182285398", "SSSMID": 200218602, "FAMILY ID": 38456985, "BANK AC. NO.": "SBI63005388884", "IFSC CODE": "SBIN00030130", "RELIGION": "HINDU", "CASTE": "GOND", "CATE.": "ST", "OCCUPATION": "BNP", "ADMN.DATE": "2013-07-08 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9165861010, "HOUSE NO.": 3391, "ADDRESS": "BNP COLONY", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 27 [left]: ADITI RANA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
  'ADITI',
  'RANA',
  '2010-01-25'::date,
  'A-408282874297',
  '304581881',
  '38126223',
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
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
  '2026-27',
  '11',
  null,
  '33-13-N',
  '1442',
  null,
  '2013-05-02'::date,
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
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
  'father',
  'PANKAJ SINGH',
  'PVT. JOB',
  '9893199979',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
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
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
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
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
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
  '7b7ceb68-0180-434e-8747-d5bd2a80de51'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 27, "section": "left", "data": {"MODE": "LOCAL", "NAME": "ADITI", "SURNAME": "RANA", "FATHER": "PANKAJ SINGH", "MOTHER": "SUDHA", "DOB": "25.01.2010", "ADM NO.": "33-13-N", "SCH. NO.": 1442, "ENROLL": null, "ADHAR CARD": "A-408282874297", "SSSMID": 304581881, "FAMILY ID": 38126223, "BANK AC. NO.": "SBI32598120057", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "THAKUR", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2013-05-02 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9893199979, "HOUSE NO.": "--", "ADDRESS": "CHAMUNDA PURI", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 28 [left]: AJINKYA NAGAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
  'AJINKYA',
  'NAGAR',
  '2010-02-17'::date,
  'A-931958162864',
  '112981389',
  '23194981',
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
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
  '2026-27',
  '11',
  null,
  '16-19-4',
  '1745',
  null,
  '2019-04-04'::date,
  '4th',
  null,
  'LOCAL',
  'SANTHOM ACADEMY',
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
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
  'father',
  'SHIVAM',
  'FARMER',
  '9827655771',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
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
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
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
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
  null,
  'BOI890110110022961',
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
  'ec542d0d-c6b0-457f-8ed8-76243a1db1d5'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 28, "section": "left", "data": {"MODE": "LOCAL", "NAME": "AJINKYA", "SURNAME": "NAGAR", "FATHER": "SHIVAM", "MOTHER": "BABITA", "DOB": "2010-02-17 00:00:00", "ADM NO.": "16-19-4", "SCH. NO.": 1745, "ENROLL": null, "ADHAR CARD": "A-931958162864", "SSSMID": 112981389, "FAMILY ID": 23194981, "BANK AC. NO.": "BOI890110110022961", "IFSC CODE": "BKID0008901", "RELIGION": "HINDU", "CASTE": "DHAKAD", "CATE.": "OBC", "OCCUPATION": "FARMER", "ADMN.DATE": "2019-04-04 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "4th", "MOB. NO.": 9827655771, "HOUSE NO.": ".33/7", "ADDRESS": "RADHAGANJ", "LAST SCHOOL": "SANTHOM ACADEMY", "TC": "NO"}}'::jsonb
);

-- CLASS 11th row 29 [left]: MAYANK PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
  'MAYANK',
  'PATEL',
  '2010-06-18'::date,
  'A-743433717446',
  '196045568',
  '43662669',
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
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
  '2026-27',
  '11',
  null,
  '39-2013',
  '1464',
  null,
  '2013-06-01'::date,
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
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
  'father',
  'PINKESH',
  'PVT. JOB',
  '9826660183',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
  'mother',
  'SONU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
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
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
  null,
  'SBI33089778982',
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
  'a5c3c06e-c6c9-486d-afe3-44ee77d8a62d'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 29, "section": "left", "data": {"MODE": "LOCAL", "NAME": "MAYANK", "SURNAME": "PATEL", "FATHER": "PINKESH", "MOTHER": "SONU", "DOB": "18.06.2010", "ADM NO.": "39-2013", "SCH. NO.": 1464, "ENROLL": null, "ADHAR CARD": "A-743433717446", "SSSMID": 196045568, "FAMILY ID": 43662669, "BANK AC. NO.": "SBI33089778982", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2013-06-01 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9826660183, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 30 [left]: SHRUTI PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
  'SHRUTI',
  'PATEL',
  '2010-06-18'::date,
  'A-811695949673',
  '196045610',
  '43662669',
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
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
  '2026-27',
  '11',
  null,
  '38-13-N',
  '1483',
  null,
  '2013-06-01'::date,
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
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
  'father',
  'PINKESH',
  'PVT. JOB',
  '9826660183',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
  'mother',
  'SONU',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
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
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
  null,
  'SBI33089778982',
  'SBIN0030000',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '780db5e8-7545-4629-93ef-7b327d5512f0'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 30, "section": "left", "data": {"MODE": "LOCAL", "NAME": "SHRUTI", "SURNAME": "PATEL", "FATHER": "PINKESH", "MOTHER": "SONU", "DOB": "18.06.2010", "ADM NO.": "38-13-N", "SCH. NO.": 1483, "ENROLL": null, "ADHAR CARD": "A-811695949673", "SSSMID": 196045610, "FAMILY ID": 43662669, "BANK AC. NO.": "SBI33089778982", "IFSC CODE": "SBIN0030000", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2013-06-01 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9826660183, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 31 [left]: SONAKSHI BAJAJ
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  'SONAKSHI',
  'BAJAJ',
  '2010-10-18'::date,
  'A-615744212863',
  '197296166',
  '43933976',
  'HINDU',
  'BANIYA',
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
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  '2026-27',
  '11',
  null,
  '76-13-N',
  '1484',
  null,
  '2013-06-19'::date,
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
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  'father',
  'HARSH',
  'BUSINESS',
  '9893505551',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  'mother',
  'MADHURI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  'A.B.ROAD',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  null,
  'BOI890010110016611',
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
  '8a9b1bbe-3d7a-49c0-b08c-c10b4049c1df'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 31, "section": "left", "data": {"MODE": "LOCAL", "NAME": "SONAKSHI", "SURNAME": "BAJAJ", "FATHER": "HARSH", "MOTHER": "MADHURI", "DOB": "18.10.2010", "ADM NO.": "76-13-N", "SCH. NO.": 1484, "ENROLL": null, "ADHAR CARD": "A-615744212863", "SSSMID": 197296166, "FAMILY ID": 43933976, "BANK AC. NO.": "BOI890010110016611", "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BANIYA", "CATE.": "GEN", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2013-06-19 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9893505551, "HOUSE NO.": null, "ADDRESS": "A.B.ROAD", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 11th row 32 [left]: NIRALI THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
  'NIRALI',
  'THAKUR',
  '2009-11-10'::date,
  'A-268706065683',
  '104088393',
  '44543182',
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
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
  '2026-27',
  '11',
  null,
  '69-23-8',
  '2122',
  null,
  '2023-06-30'::date,
  '8th',
  null,
  'LOCAL',
  'MAHARISHI VIDYA MANDIR',
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
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
  'father',
  'KAPIL',
  'PVT. JOB',
  '9752654606',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
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
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
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
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
  null,
  'UCO05240110070956',
  'UCBA0000524',
  null
);
insert into public.student_import_rows (
  student_id,
  academic_year,
  class_name,
  source_file_name,
  source_sheet_name,
  raw_row_data
) values (
  '298c92bb-654e-43a7-a11f-ebb15fd1c572'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 32, "section": "left", "data": {"MODE": "LOCAL", "NAME": "NIRALI", "SURNAME": "THAKUR", "FATHER": "KAPIL", "MOTHER": "VARSHA", "DOB": "10.11.2009", "ADM NO.": "69-23-8", "SCH. NO.": 2122, "ENROLL": null, "ADHAR CARD": "A-268706065683", "SSSMID": 104088393, "FAMILY ID": 44543182, "BANK AC. NO.": "UCO05240110070956", "IFSC CODE": "UCBA0000524", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2023-06-30 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "8th", "MOB. NO.": 9752654606, "HOUSE NO.": 3, "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": "MAHARISHI VIDYA MANDIR", "TC": "YES"}}'::jsonb
);

-- CLASS 11th row 33 [left]: SANNIDHYA VERMA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
  'SANNIDHYA',
  'VERMA',
  '2010-03-23'::date,
  'A-521876335668',
  '111135432',
  '22740599',
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
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
  '2026-27',
  '11',
  null,
  '25-69-1TH',
  '2306',
  null,
  '2025-07-05'::date,
  '10th',
  null,
  null,
  'CM.RISE MODEL SCHOOL DEWAS',
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
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
  'father',
  'NITIN',
  'TEACHER',
  '8889072723',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
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
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
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
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
  null,
  'SBI- 36998073947',
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
  '343f3efb-f661-42d9-8255-5fc0a58d8e23'::uuid,
  '2026-27',
  '11',
  '11-12.xlsx',
  'CLASS 11th',
  '{"sheet_name": "CLASS 11th", "row_number": 33, "section": "left", "data": {"MODE": null, "NAME": "SANNIDHYA", "SURNAME": "VERMA", "FATHER": "NITIN", "MOTHER": "HEMLATA", "DOB": "2010-03-23 00:00:00", "ADM NO.": "25-69-1TH", "SCH. NO.": 2306, "ENROLL": null, "ADHAR CARD": "A-521876335668", "SSSMID": 111135432, "FAMILY ID": 22740599, "BANK AC. NO.": "SBI- 36998073947", "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "TEACHER", "ADMN.DATE": "2025-07-05 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "10th", "MOB. NO.": 8889072723, "HOUSE NO.": 11, "ADDRESS": "CHAMUNDA PALACE", "LAST SCHOOL": "CM.RISE MODEL SCHOOL DEWAS", "TC": null}}'::jsonb
);

-- CLASS 12th row 3 [enrolled]: ANIRUDH BAIS
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
  'ANIRUDH',
  'BAIS',
  '2009-05-29'::date,
  '932456316715',
  '101207234',
  '20285906',
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
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
  '2026-27',
  '12',
  null,
  '61-12-N',
  '1392',
  null,
  '2012-04-18'::date,
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
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
  'father',
  'YASHPAL',
  'PVT. JOB',
  '9826508978',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
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
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
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
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
  null,
  '11502151001166',
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
  'b138c881-e557-4070-a7de-06b5a512ab23'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 3, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "ANIRUDH", "SURNAME": "BAIS", "FATHER": "YASHPAL", "MOTHER": "BABITA", "DOB": "29.05.2009", "SCH. NO.": 1392, "ADM NO.": "61-12-N", "ENROLL": null, "ADHAR CARD": 932456316715, "SSSMID": 101207234, "FAMILY ID": 20285906, "BANK AC. NO.": 11502151001166, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "THAKUR", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2012-04-18 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9826508978, "HOUSE NO.": null, "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 4 [enrolled]: DEVRAJ THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
  'DEVRAJ',
  'THAKUR',
  '2009-03-28'::date,
  '290261549659',
  '195541519',
  '38523844',
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
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
  '2026-27',
  '12',
  null,
  '102-12-N',
  '1403',
  null,
  '2012-07-02'::date,
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
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
  'father',
  'JITENDRA',
  'PVT. JOB',
  '8085841274',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
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
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
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
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
  null,
  '63001951355',
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
  '9dd3a37d-a5f5-4d49-94f1-1b426bbc2cb9'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 4, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "DEVRAJ", "SURNAME": "THAKUR", "FATHER": "JITENDRA", "MOTHER": "ALKA", "DOB": "28.03.2009", "SCH. NO.": 1403, "ADM NO.": "102-12-N", "ENROLL": null, "ADHAR CARD": 290261549659, "SSSMID": 195541519, "FAMILY ID": 38523844, "BANK AC. NO.": 63001951355, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "THAKUR", "CATE.": "GEN", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2012-07-02 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 8085841274, "HOUSE NO.": 17, "ADDRESS": "AWAS NAGAR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 5 [enrolled]: HARIOM PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
  'HARIOM',
  'PATEL',
  '2008-04-28'::date,
  '251872309471',
  '114486786',
  '23560981',
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
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
  '2026-27',
  '12',
  null,
  '41-12-N',
  '1405',
  null,
  '2012-06-14'::date,
  'NURSERY',
  null,
  'B-1256',
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
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
  'father',
  'ARJUN',
  'FARMAR',
  '9174404650',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
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
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
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
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
  null,
  '11210400014437',
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
  'c7576faf-c747-495b-ad2a-f793b9bc5d8e'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 5, "section": "enrolled", "data": {"MODE": "B-1256", "NAME": "HARIOM", "SURNAME": "PATEL", "FATHER": "ARJUN", "MOTHER": "REENA", "DOB": "28.04.2008", "SCH. NO.": 1405, "ADM NO.": "41-12-N", "ENROLL": null, "ADHAR CARD": 251872309471, "SSSMID": 114486786, "FAMILY ID": 23560981, "BANK AC. NO.": 11210400014437, "IFSC CODE": "BKID0NAMRGB", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMAR", "ADMN.DATE": "2012-06-14 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9174404650, "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 6 [enrolled]: HARIOM PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
  'HARIOM',
  'PATEL',
  '2009-02-05'::date,
  '901757827145',
  '104651420',
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
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
  '2026-27',
  '12',
  null,
  '82-12-N',
  '1406',
  null,
  '2012-06-22'::date,
  'NURSERY',
  null,
  'B-1256',
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
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
  'father',
  'ASHISH',
  'FARMAR',
  '8120331153',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
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
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
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
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
  null,
  '20352819305',
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
  'c4ebc6d9-2b6b-4514-87b1-f52824840075'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 6, "section": "enrolled", "data": {"MODE": "B-1256", "NAME": "HARIOM", "SURNAME": "PATEL", "FATHER": "ASHISH", "MOTHER": "USHA", "DOB": "05.02.2009", "SCH. NO.": 1406, "ADM NO.": "82-12-N", "ENROLL": null, "ADHAR CARD": 901757827145, "SSSMID": 104651420, "FAMILY ID": null, "BANK AC. NO.": 20352819305, "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMAR", "ADMN.DATE": "2012-06-22 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 8120331153, "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 7 [enrolled]: HARSH THAKUR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
  'HARSH',
  'THAKUR',
  '2009-04-21'::date,
  '714738913689',
  '197557811',
  '38440669',
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
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
  '2026-27',
  '12',
  null,
  '105-12-N',
  '1407',
  null,
  '2012-07-02'::date,
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
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
  'father',
  'SANJEEV',
  'BUSINESS',
  '9755996540',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
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
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
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
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
  null,
  '890010110000847',
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
  'dfd7bc5e-9366-45f1-a8e5-21da8af42242'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 7, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "HARSH", "SURNAME": "THAKUR", "FATHER": "SANJEEV", "MOTHER": "MAMTA", "DOB": "21.04.2009", "SCH. NO.": 1407, "ADM NO.": "105-12-N", "ENROLL": null, "ADHAR CARD": 714738913689, "SSSMID": 197557811, "FAMILY ID": 38440669, "BANK AC. NO.": 890010110000847, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2012-07-02 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9755996540, "HOUSE NO.": "24/1", "ADDRESS": "CHAMUNDAPURI", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 8 [enrolled]: KARAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
  'KARAN',
  null,
  '2009-01-07'::date,
  '912125609161',
  '131504958',
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
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
  '2026-27',
  '12',
  null,
  '41-19-05',
  '1764',
  null,
  '2019-06-20'::date,
  '5TH',
  null,
  'LOCAL',
  'KINDER H.S. SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
  'father',
  'LAKHAN',
  'ARMY',
  '7024811142',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
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
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
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
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
  null,
  '37198543720',
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
  '2f9946be-bada-4a27-98fc-da75cf422f8d'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 8, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "KARAN", "SURNAME": null, "FATHER": "LAKHAN", "MOTHER": "SEEMA", "DOB": "07.01.2009", "SCH. NO.": 1764, "ADM NO.": "41-19-05", "ENROLL": null, "ADHAR CARD": 912125609161, "SSSMID": 131504958, "FAMILY ID": null, "BANK AC. NO.": 37198543720, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "ARMY", "ADMN.DATE": "2019-06-20 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "5TH", "MOB. NO.": 7024811142, "HOUSE NO.": null, "ADDRESS": "VRINDAVAN DHAM", "LAST SCHOOL": "KINDER H.S. SCHOOL", "TC": "NO"}}'::jsonb
);

-- CLASS 12th row 9 [enrolled]: KASHISH PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
  'KASHISH',
  'PATEL',
  '2009-05-05'::date,
  '248095762136',
  '116534643',
  '24071710',
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
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
  '2026-27',
  '12',
  null,
  '76-12-N',
  '1872',
  null,
  '2012-06-20'::date,
  'NURSERY',
  null,
  'B-1256',
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
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
  'father',
  'RAJENDRA',
  'BUSINESS',
  '9926087215',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
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
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
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
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
  null,
  '63034750241',
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
  'a144e854-b82d-48bb-b2c3-b23c1b31a690'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 9, "section": "enrolled", "data": {"MODE": "B-1256", "NAME": "KASHISH", "SURNAME": "PATEL", "FATHER": "RAJENDRA", "MOTHER": "SANGITA", "DOB": "05.05.2009", "SCH. NO.": 1872, "ADM NO.": "76-12-N", "ENROLL": null, "ADHAR CARD": 248095762136, "SSSMID": 116534643, "FAMILY ID": 24071710, "BANK AC. NO.": 63034750241, "IFSC CODE": "SBIN0030320", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "BUSINESS", "ADMN.DATE": "2012-06-20 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9926087215, "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 10 [enrolled]: KUMKUM
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
  'KUMKUM',
  null,
  '2008-12-04'::date,
  '4541064437645',
  '195837809',
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
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
  '2026-27',
  '12',
  null,
  '29-23-9',
  '2100',
  null,
  '2023-04-26'::date,
  '9TH',
  null,
  'LOCAL',
  'K.V DEWAS',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
  'father',
  'BHAGIRATH',
  'B.N.P',
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
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
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
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
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
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
  null,
  '36211136221',
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
  'd0fa317a-c889-487a-8340-25ebbd401f86'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 10, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "KUMKUM", "SURNAME": null, "FATHER": "BHAGIRATH", "MOTHER": "REENA", "DOB": "04.12.2008", "SCH. NO.": 2100, "ADM NO.": "29-23-9", "ENROLL": null, "ADHAR CARD": 4541064437645, "SSSMID": 195837809, "FAMILY ID": 43614790, "BANK AC. NO.": 36211136221, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "B.N.P", "ADMN.DATE": "26.04.2023", "BOARD R.N.": null, "ADM .CLASS": "9TH", "MOB. NO.": 7566790429, "HOUSE NO.": null, "ADDRESS": "B.N.P COLONY", "LAST SCHOOL": "K.V DEWAS", "TC": "YES"}}'::jsonb
);

-- CLASS 12th row 11 [enrolled]: NIRANJAN PARMAR
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '4551118d-73cf-4e6c-8d3a-351b1cf8abcc'::uuid,
  'NIRANJAN',
  'PARMAR',
  '2008-04-09'::date,
  '968297319614',
  '303188560',
  '45224315',
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
  '4551118d-73cf-4e6c-8d3a-351b1cf8abcc'::uuid,
  '2026-27',
  '12',
  null,
  '91-12-N',
  '1412',
  null,
  '2012-06-26'::date,
  'NURSERY',
  null,
  'B-1115',
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
  '4551118d-73cf-4e6c-8d3a-351b1cf8abcc'::uuid,
  'father',
  'VISHANU',
  'PVT. JOB',
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
  '4551118d-73cf-4e6c-8d3a-351b1cf8abcc'::uuid,
  'mother',
  'SHAKUNTALA',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  '4551118d-73cf-4e6c-8d3a-351b1cf8abcc'::uuid,
  'BILAWLI',
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
  '4551118d-73cf-4e6c-8d3a-351b1cf8abcc'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 11, "section": "enrolled", "data": {"MODE": "B-1115", "NAME": "NIRANJAN", "SURNAME": "PARMAR", "FATHER": "VISHANU", "MOTHER": "SHAKUNTALA", "DOB": "09.04.2008", "SCH. NO.": 1412, "ADM NO.": "91-12-N", "ENROLL": null, "ADHAR CARD": 968297319614, "SSSMID": 303188560, "FAMILY ID": 45224315, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2012-06-26 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9977261486, "HOUSE NO.": null, "ADDRESS": "BILAWLI", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 12 [enrolled]: RAJVEER SINGH SENDHAV
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'b5cdef20-549d-4364-9b66-f5ab6d7adf94'::uuid,
  'RAJVEER SINGH',
  'SENDHAV',
  '2008-04-19'::date,
  '550809860701',
  '104140138',
  '21007828',
  'HINDU',
  'JHALA',
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
  'b5cdef20-549d-4364-9b66-f5ab6d7adf94'::uuid,
  '2026-27',
  '12',
  null,
  '98-19-05',
  '1790',
  null,
  '2019-07-05'::date,
  '5th',
  null,
  'LOCAL',
  'PIONEER INTER NATIONAL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b5cdef20-549d-4364-9b66-f5ab6d7adf94'::uuid,
  'father',
  'GYAN SINGH',
  'FARMAR',
  '9893221695',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'b5cdef20-549d-4364-9b66-f5ab6d7adf94'::uuid,
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
  'b5cdef20-549d-4364-9b66-f5ab6d7adf94'::uuid,
  'RADHAGANJ',
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
  'b5cdef20-549d-4364-9b66-f5ab6d7adf94'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 12, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "RAJVEER SINGH", "SURNAME": "SENDHAV", "FATHER": "GYAN SINGH", "MOTHER": "RITU", "DOB": "19.04.2008", "SCH. NO.": 1790, "ADM NO.": "98-19-05", "ENROLL": null, "ADHAR CARD": 550809860701, "SSSMID": 104140138, "FAMILY ID": 21007828, "BANK AC. NO.": null, "IFSC CODE": null, "RELIGION": "HINDU", "CASTE": "JHALA", "CATE.": "GEN", "OCCUPATION": "FARMAR", "ADMN.DATE": "2019-07-05 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "5th", "MOB. NO.": 9893221695, "HOUSE NO.": "33", "ADDRESS": "RADHAGANJ", "LAST SCHOOL": "PIONEER INTER NATIONAL", "TC": "NO"}}'::jsonb
);

-- CLASS 12th row 13 [enrolled]: TINKU PATEL
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
  'TINKU',
  'PATEL',
  '2008-07-18'::date,
  '581504020668',
  '115632581',
  '23845407',
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
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
  '2026-27',
  '12',
  null,
  '43-12-N',
  '1375',
  null,
  '2012-06-12'::date,
  'NURSERY',
  null,
  'B-1256',
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
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
  'father',
  'ASHOK',
  'FARMAR',
  '9717710174',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
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
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
  'BILAWLI',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
  null,
  '2716101008833',
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
  'bf8087c7-bbd0-4d90-b47f-2702a681f132'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 13, "section": "enrolled", "data": {"MODE": "B-1256", "NAME": "TINKU", "SURNAME": "PATEL", "FATHER": "ASHOK", "MOTHER": "ALKA", "DOB": "18.07.2008", "SCH. NO.": 1375, "ADM NO.": "43-12-N", "ENROLL": null, "ADHAR CARD": 581504020668, "SSSMID": 115632581, "FAMILY ID": 23845407, "BANK AC. NO.": 2716101008833, "IFSC CODE": "CNRB0002716", "RELIGION": "HINDU", "CASTE": "KHATI", "CATE.": "OBC", "OCCUPATION": "FARMAR", "ADMN.DATE": "2012-06-12 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "NURSERY", "MOB. NO.": 9717710174, "HOUSE NO.": null, "ADDRESS": "BILAWLI", "LAST SCHOOL": null, "TC": null}}'::jsonb
);

-- CLASS 12th row 14 [enrolled]: VAIBHAV DANGI
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
  'VAIBHAV',
  'DANGI',
  '2007-04-15'::date,
  '540566388822',
  null,
  null,
  'HINDU',
  'DANGI',
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
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
  '2026-27',
  '12',
  null,
  '100-15-01',
  '1383',
  null,
  '2015-07-02'::date,
  '1st',
  null,
  'LOCAL',
  'WELCOMR SCHOOL',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
  'father',
  'RAJESH',
  'POLICE',
  '8839682116',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
  'mother',
  'BHURI BAI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
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
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
  null,
  '32400210608',
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
  'a0702b97-433e-4811-84ee-82bd21fe29da'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 14, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "VAIBHAV", "SURNAME": "DANGI", "FATHER": "RAJESH", "MOTHER": "BHURI BAI", "DOB": "15.04.2007", "SCH. NO.": 1383, "ADM NO.": "100-15-01", "ENROLL": null, "ADHAR CARD": 540566388822, "SSSMID": null, "FAMILY ID": null, "BANK AC. NO.": 32400210608, "IFSC CODE": "SBIN0030007", "RELIGION": "HINDU", "CASTE": "DANGI", "CATE.": "OBC", "OCCUPATION": "POLICE", "ADMN.DATE": "2015-07-02 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "1st", "MOB. NO.": 8839682116, "HOUSE NO.": null, "ADDRESS": "ARJUN NAGAR", "LAST SCHOOL": "WELCOMR SCHOOL", "TC": null}}'::jsonb
);

-- CLASS 12th row 15 [enrolled]: JAYESH GANAVA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
  'JAYESH',
  'GANAVA',
  '2008-11-06'::date,
  '2065511241236',
  '189438374',
  '38360716',
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
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
  '2026-27',
  '12',
  null,
  '83-22-08',
  '2309',
  null,
  '2022-07-01'::date,
  '8th',
  null,
  'LOCAL',
  'VIJAY JYOTI ACADEMY',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
  'father',
  'MANOJ',
  'DOCT.',
  '9754358858',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
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
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
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
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
  null,
  '33567806668',
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
  'ae23f311-3e4d-4f47-96bd-5936c14bbd54'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 15, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "JAYESH", "SURNAME": "GANAVA", "FATHER": "MANOJ", "MOTHER": "KIRAN", "DOB": "06.11.2008", "SCH. NO.": 2309, "ADM NO.": "83-22-08", "ENROLL": null, "ADHAR CARD": 2065511241236, "SSSMID": 189438374, "FAMILY ID": 38360716, "BANK AC. NO.": 33567806668, "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "BHILALA", "CATE.": "ST", "OCCUPATION": "DOCT.", "ADMN.DATE": "2022-07-01 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "8th", "MOB. NO.": 9754358858, "HOUSE NO.": "35", "ADDRESS": "RAM RAHIM NAGAR", "LAST SCHOOL": "VIJAY JYOTI ACADEMY", "TC": "YES"}}'::jsonb
);

-- CLASS 12th row 16 [enrolled]: ANJALI- CHOUHAN
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
  'ANJALI-',
  'CHOUHAN',
  '2009-05-21'::date,
  '321651032861',
  '194943880',
  '43399566',
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
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
  '2026-27',
  '12',
  null,
  '25-67-11th',
  '2296',
  null,
  '2025-06-28'::date,
  '11th',
  null,
  'LOCAL',
  'PROGRESSIVE GLOBAL SCHOOL BHOURASA',
  null,
  false,
  true
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
  'father',
  'KAILASH',
  'PVT. JOB',
  '9202463831',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
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
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
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
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
  null,
  '7248100034581',
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
  '2801d03d-3a2d-490e-ba02-b99affa9a039'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 16, "section": "enrolled", "data": {"MODE": "LOCAL", "NAME": "ANJALI-", "SURNAME": "CHOUHAN", "FATHER": "KAILASH", "MOTHER": "HEMLATA", "DOB": "21/05/2009", "SCH. NO.": 2296, "ADM NO.": "25-67-11th", "ENROLL": null, "ADHAR CARD": 321651032861, "SSSMID": 194943880, "FAMILY ID": 43399566, "BANK AC. NO.": 7248100034581, "IFSC CODE": "BARB0DEWASX", "RELIGION": "HINDU", "CASTE": "BALAI", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "28-06-2025", "BOARD R.N.": null, "ADM .CLASS": "11th", "MOB. NO.": 9202463831, "HOUSE NO.": "C-55", "ADDRESS": "POLICE LINE", "LAST SCHOOL": "PROGRESSIVE GLOBAL SCHOOL BHOURASA", "TC": "YES"}}'::jsonb
);

-- CLASS 12th row 18 [left]: PRERANA BAMNIYA
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
  'PRERANA',
  'BAMNIYA',
  '2009-06-30'::date,
  'A-329964764284',
  '116654496',
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
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
  '2026-27',
  '12',
  null,
  '55-23-09',
  '2125',
  null,
  '2023-06-17'::date,
  '9th',
  null,
  'B-1256',
  'MALWANCHAL ACADEMY',
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
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
  'father',
  'ROOP SINGH',
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
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
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
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
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
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
  null,
  '35088508149',
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
  '1044c55e-971f-46df-b341-f133d6877e76'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 18, "section": "left", "data": {"MODE": "B-1256", "NAME": "PRERANA", "SURNAME": "BAMNIYA", "FATHER": "ROOP SINGH", "MOTHER": "URMILA", "DOB": "30.06.2009", "SCH. NO.": 2125, "ADM NO.": "55-23-09", "ENROLL": null, "ADHAR CARD": "A-329964764284", "SSSMID": 116654496, "FAMILY ID": 44965279, "BANK AC. NO.": 35088508149, "IFSC CODE": "SBIN0030511", "RELIGION": "HINDU", "CASTE": "CHAMAR", "CATE.": "SC", "OCCUPATION": "PVT. JOB", "ADMN.DATE": "2023-06-17 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "9th", "MOB. NO.": "M-9522458226", "HOUSE NO.": null, "ADDRESS": "FATANPUR", "LAST SCHOOL": "MALWANCHAL ACADEMY", "TC": "YES"}}'::jsonb
);

-- CLASS 12th row 19 [left]: YUVRAJ CHOUDHARY
insert into public.students (
  id,
  first_name,
  last_name,
  date_of_birth,
  aadhaar_number,
  sssm_id,
  family_id,
  religion,
  caste,
  category
) values (
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  'YUVRAJ',
  'CHOUDHARY',
  '2008-01-01'::date,
  'A-958801713743',
  '110973332',
  '22702387',
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
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  '2026-27',
  '12',
  null,
  '93-19-05',
  '1781',
  null,
  '2019-07-09'::date,
  '5th',
  null,
  'LOCAL',
  'MERIT HIGHER SEC, SCHOOL',
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
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  'father',
  'RAMESH',
  'FARMAR',
  '7879045617',
  null
);
insert into public.student_guardians (
  student_id,
  relationship,
  full_name,
  occupation,
  mobile_primary,
  mobile_secondary
) values (
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  'mother',
  'MUNNI',
  null,
  null,
  null
);
insert into public.student_addresses (
  student_id,
  address_line,
  city,
  state,
  pincode,
  address_type
) values (
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  'VISHRAM BAGH',
  null,
  null,
  null,
  'home'
);
insert into public.student_bank_accounts (
  student_id,
  bank_name,
  account_number,
  ifsc_code,
  account_holder_name
) values (
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  null,
  'SBI53010703485',
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
  'c16a7080-fccf-4a35-85b7-54c77d45205c'::uuid,
  '2026-27',
  '12',
  '11-12.xlsx',
  'CLASS 12th',
  '{"sheet_name": "CLASS 12th", "row_number": 19, "section": "left", "data": {"MODE": "LOCAL", "NAME": "YUVRAJ", "SURNAME": "CHOUDHARY", "FATHER": "RAMESH", "MOTHER": "MUNNI", "DOB": "01.01.2008", "SCH. NO.": 1781, "ADM NO.": "93-19-05", "ENROLL": null, "ADHAR CARD": "A-958801713743", "SSSMID": 110973332, "FAMILY ID": 22702387, "BANK AC. NO.": "SBI53010703485", "IFSC CODE": "SBIN0030130", "RELIGION": "HINDU", "CASTE": "GARI", "CATE.": "OBC", "OCCUPATION": "FARMAR", "ADMN.DATE": "2019-07-09 00:00:00", "BOARD R.N.": null, "ADM .CLASS": "5th", "MOB. NO.": 7879045617, "HOUSE NO.": null, "ADDRESS": "VISHRAM BAGH", "LAST SCHOOL": "MERIT HIGHER SEC, SCHOOL", "TC": "NO"}}'::jsonb
);

commit;
