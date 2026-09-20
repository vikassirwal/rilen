import { AuthGate } from "./features/auth/AuthGate";
import { RilenAssistant } from "./features/assistant/RilenAssistant";
import { FeeWorkspace } from "./features/fees/FeeWorkspace";
import { StudentWorkspace } from "./features/students/StudentWorkspace";
import { useState } from "react";

export default function App() {
  const [workspace, setWorkspace] = useState<"students" | "fees">("students");

  return (
    <AuthGate>
      {workspace === "students" ? (
        <StudentWorkspace onOpenFees={() => setWorkspace("fees")} />
      ) : (
        <FeeWorkspace onBack={() => setWorkspace("students")} />
      )}
      <RilenAssistant />
    </AuthGate>
  );
}
