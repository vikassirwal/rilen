import { AuthGate } from "./features/auth/AuthGate";
import { RilenAssistant } from "./features/assistant/RilenAssistant";
import { FeeWorkspace } from "./features/fees/FeeWorkspace";
import { StudentWorkspace } from "./features/students/StudentWorkspace";
import { useEffect, useState } from "react";
import { AppNavigation, type AppWorkspace } from "./components/navigation/AppNavigation";

const NAV_PREFERENCE_KEY = "rilen.navigation.collapsed";

export default function App() {
  const [workspace, setWorkspace] = useState<AppWorkspace>("students");
  const [isNavigationCollapsed, setIsNavigationCollapsed] = useState(() => localStorage.getItem(NAV_PREFERENCE_KEY) === "true");
  const [isMobileNavigationOpen, setIsMobileNavigationOpen] = useState(false);

  useEffect(() => {
    localStorage.setItem(NAV_PREFERENCE_KEY, String(isNavigationCollapsed));
  }, [isNavigationCollapsed]);

  return (
    <AuthGate>
      <div className={`app-layout ${isNavigationCollapsed ? "app-layout--nav-collapsed" : ""}`}>
        <AppNavigation activeWorkspace={workspace} isCollapsed={isNavigationCollapsed} isMobileOpen={isMobileNavigationOpen} onNavigate={setWorkspace} onToggleCollapsed={() => setIsNavigationCollapsed((current) => !current)} onToggleMobile={() => setIsMobileNavigationOpen((current) => !current)} />
        <div className="app-layout__content">
          {workspace === "students" ? <StudentWorkspace /> : <FeeWorkspace />}
          <RilenAssistant />
        </div>
      </div>
    </AuthGate>
  );
}
