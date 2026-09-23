export type Json = string | number | boolean | null | { [key: string]: Json | undefined } | Json[];

export type Database = {
  public: {
    Tables: {
      schools: {
        Row: {
          id: string;
          code: string;
          name: string;
          legal_name: string | null;
          timezone: string;
          currency_code: string;
          is_active: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          code: string;
          name: string;
          legal_name?: string | null;
          timezone?: string;
          currency_code?: string;
          is_active?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["schools"]["Insert"]>;
        Relationships: [];
      };
      school_user_memberships: {
        Row: {
          id: string;
          school_id: string;
          user_id: string;
          role: string;
          is_active: boolean;
          created_at: string;
        };
        Insert: {
          id?: string;
          school_id: string;
          user_id: string;
          role: string;
          is_active?: boolean;
          created_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["school_user_memberships"]["Insert"]>;
        Relationships: [];
      };
      students: {
        Row: {
          id: string;
          school_id: string;
          first_name: string;
          last_name: string | null;
          date_of_birth: string | null;
          aadhaar_number: string | null;
          sssm_id: string | null;
          family_id: string | null;
          religion: string | null;
          caste: string | null;
          category: string | null;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          school_id: string;
          first_name: string;
          last_name?: string | null;
          date_of_birth?: string | null;
          aadhaar_number?: string | null;
          sssm_id?: string | null;
          family_id?: string | null;
          religion?: string | null;
          caste?: string | null;
          category?: string | null;
          created_at?: string;
          updated_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["students"]["Insert"]>;
        Relationships: [];
      };
      student_academic_registrations: {
        Row: {
          id: string;
          school_id: string;
          student_id: string;
          academic_year: string;
          class_name: string;
          section: string | null;
          admission_number: string | null;
          scholar_number: string | null;
          enrollment_number: string | null;
          admission_date: string | null;
          admission_class: string | null;
          board_registration_number: string | null;
          admission_mode: string | null;
          last_school_name: string | null;
          tc_status: string | null;
          is_rte_student: boolean;
          is_active: boolean;
          created_at: string;
          updated_at: string;
        };
        Insert: {
          id?: string;
          school_id: string;
          student_id: string;
          academic_year: string;
          class_name: string;
          section?: string | null;
          admission_number?: string | null;
          scholar_number?: string | null;
          enrollment_number?: string | null;
          admission_date?: string | null;
          admission_class?: string | null;
          board_registration_number?: string | null;
          admission_mode?: string | null;
          last_school_name?: string | null;
          tc_status?: string | null;
          is_rte_student?: boolean;
          is_active?: boolean;
          created_at?: string;
          updated_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["student_academic_registrations"]["Insert"]>;
        Relationships: [];
      };
      student_guardians: {
        Row: {
          id: string;
          student_id: string;
          relationship: string;
          full_name: string;
          occupation: string | null;
          mobile_primary: string | null;
          mobile_secondary: string | null;
          created_at: string;
        };
        Insert: {
          id?: string;
          student_id: string;
          relationship: string;
          full_name: string;
          occupation?: string | null;
          mobile_primary?: string | null;
          mobile_secondary?: string | null;
          created_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["student_guardians"]["Insert"]>;
        Relationships: [];
      };
      student_addresses: {
        Row: {
          id: string;
          student_id: string;
          address_line: string;
          city: string | null;
          state: string | null;
          pincode: string | null;
          address_type: string;
          created_at: string;
        };
        Insert: {
          id?: string;
          student_id: string;
          address_line: string;
          city?: string | null;
          state?: string | null;
          pincode?: string | null;
          address_type?: string;
          created_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["student_addresses"]["Insert"]>;
        Relationships: [];
      };
      student_bank_accounts: {
        Row: {
          id: string;
          student_id: string;
          bank_name: string | null;
          account_number: string | null;
          ifsc_code: string | null;
          account_holder_name: string | null;
          created_at: string;
        };
        Insert: {
          id?: string;
          student_id: string;
          bank_name?: string | null;
          account_number?: string | null;
          ifsc_code?: string | null;
          account_holder_name?: string | null;
          created_at?: string;
        };
        Update: Partial<Database["public"]["Tables"]["student_bank_accounts"]["Insert"]>;
        Relationships: [];
      };
    };
    Views: Record<string, never>;
    Functions: Record<string, never>;
    Enums: Record<string, never>;
    CompositeTypes: Record<string, never>;
  };
};
