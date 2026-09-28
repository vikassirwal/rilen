import { GraduationCap, LogOut, Menu, PanelLeftClose, PanelLeftOpen, ReceiptText, X } from "lucide-react";
import { useAuth } from "../../features/auth/useAuth";
import { supabase } from "../../lib/supabase/client";

export type AppWorkspace = "students" | "fees";

type AppNavigationProps = {
  activeWorkspace: AppWorkspace;
  isCollapsed: boolean;
  isMobileOpen: boolean;
  onNavigate: (workspace: AppWorkspace) => void;
  onToggleCollapsed: () => void;
  onToggleMobile: () => void;
};

const destinations = [
  { id: "students" as const, label: "Students", icon: GraduationCap },
  { id: "fees" as const, label: "Fees", icon: ReceiptText },
];

export function AppNavigation({
  activeWorkspace,
  isCollapsed,
  isMobileOpen,
  onNavigate,
  onToggleCollapsed,
  onToggleMobile,
}: AppNavigationProps) {
  const { user } = useAuth();

  return (
    <>
      <button className="mobile-nav-trigger" type="button" aria-label="Open navigation" aria-expanded={isMobileOpen} onClick={onToggleMobile}>
        <Menu size={20} />
      </button>
      {isMobileOpen && <button className="app-nav-backdrop" type="button" aria-label="Close navigation" onClick={onToggleMobile} />}
      <aside className={`app-nav ${isCollapsed ? "app-nav--collapsed" : ""} ${isMobileOpen ? "app-nav--open" : ""}`}>
        <div className="app-nav__brand">
          <div className="brand-mark" aria-hidden="true">R</div>
          <div className="app-nav__brand-copy"><strong>RILEN</strong><span>Operations</span></div>
          <button className="app-nav__mobile-close" type="button" aria-label="Close navigation" onClick={onToggleMobile}><X size={19} /></button>
        </div>
        <nav className="app-nav__links" aria-label="Primary navigation">
          <span className="app-nav__section-label">Workspace</span>
          {destinations.map(({ id, label, icon: Icon }) => (
            <button
              className={`app-nav__link ${activeWorkspace === id ? "is-active" : ""}`}
              type="button"
              key={id}
              aria-current={activeWorkspace === id ? "page" : undefined}
              aria-label={label}
              title={isCollapsed ? label : undefined}
              onClick={() => { onNavigate(id); if (isMobileOpen) onToggleMobile(); }}
            >
              <Icon size={20} /><span>{label}</span>
            </button>
          ))}
        </nav>
        <div className="app-nav__footer">
          {user && (
            <button className="app-nav__link" type="button" aria-label="Sign out" title={isCollapsed ? "Sign out" : undefined} onClick={() => supabase?.auth.signOut()}>
              <LogOut size={20} /><span>Sign out</span>
            </button>
          )}
          <button className="app-nav__collapse" type="button" aria-label={isCollapsed ? "Expand navigation" : "Collapse navigation"} title={isCollapsed ? "Expand navigation" : "Collapse navigation"} onClick={onToggleCollapsed}>
            {isCollapsed ? <PanelLeftOpen size={19} /> : <PanelLeftClose size={19} />}<span>{isCollapsed ? "Expand" : "Collapse"}</span>
          </button>
        </div>
      </aside>
    </>
  );
}
