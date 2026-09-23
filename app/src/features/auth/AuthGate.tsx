import { FormEvent, useState } from "react";
import { LockKeyhole, LogIn } from "lucide-react";
import { Button } from "../../components/ui/Button";
import { Field } from "../../components/ui/Field";
import { supabase } from "../../lib/supabase/client";
import { useAuth } from "./useAuth";

type AuthGateProps = {
  children: React.ReactNode;
};

export function AuthGate({ children }: AuthGateProps) {
  const { isConfigured, isLoading, session } = useAuth();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [error, setError] = useState<string | null>(null);
  const [isSigningIn, setIsSigningIn] = useState(false);

  async function signIn(event: FormEvent) {
    event.preventDefault();

    if (!supabase) return;

    setIsSigningIn(true);
    setError(null);

    const { error: signInError } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    setIsSigningIn(false);

    if (signInError) {
      setError("We could not sign you in with those credentials. Check them and try again.");
    }
  }

  if (!isConfigured) {
    return <>{children}</>;
  }

  if (isLoading) {
    return (
      <main className="auth-shell">
        <div className="auth-panel">
          <div className="brand-mark">R</div>
          <h1>Loading RILEN</h1>
        </div>
      </main>
    );
  }

  if (session) {
    return <>{children}</>;
  }

  return (
    <main className="auth-shell">
      <form className="auth-panel" onSubmit={signIn}>
        <div className="brand-mark">R</div>
        <div>
          <span className="eyebrow">Secure access</span>
          <h1>Sign in to RILEN</h1>
          <p>Use your authorized institution account to continue.</p>
        </div>

        {error && (
          <div className="warning-strip">
            <strong>Sign-in failed</strong>
            <span>{error}</span>
          </div>
        )}

        <div className="auth-fields">
          <Field
            label="Email"
            type="email"
            value={email}
            onChange={(event) => setEmail(event.target.value)}
            autoComplete="email"
            required
          />
          <Field
            label="Password"
            type="password"
            value={password}
            onChange={(event) => setPassword(event.target.value)}
            autoComplete="current-password"
            required
          />
        </div>

        <Button type="submit" icon={isSigningIn ? <LockKeyhole size={18} /> : <LogIn size={18} />} disabled={isSigningIn}>
          {isSigningIn ? "Signing in" : "Sign in"}
        </Button>
      </form>
    </main>
  );
}
