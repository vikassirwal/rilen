import { createClient } from "@supabase/supabase-js";
import { getSupabaseEnv } from "../env";
import type { Database } from "./database.types";

const env = getSupabaseEnv();

export const supabase = env
  ? createClient<Database>(env.url, env.publishableKey, {
      auth: {
        autoRefreshToken: true,
        persistSession: true,
        detectSessionInUrl: true,
      },
      db: {
        schema: "public",
      },
    })
  : null;

export function assertSupabaseClient() {
  if (!supabase) {
    throw new Error("Supabase is not configured. Add VITE_SUPABASE_URL and VITE_SUPABASE_PUBLISHABLE_KEY.");
  }

  return supabase;
}
