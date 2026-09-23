import { useEffect, useMemo, useState } from "react";
import { Brain, LayoutList, LogOut, ReceiptText, UserRoundPlus, UsersRound } from "lucide-react";
import { Button } from "../../components/ui/Button";
import { useStudents } from "../../hooks/useStudents";
import type { Student, StudentFilters } from "../../types/student";
import { uniqueValues } from "./utils/studentSearch";
import { StudentDetailPanel } from "./components/StudentDetailPanel";
import { StudentFilters as StudentFiltersView } from "./components/StudentFilters";
import { StudentList } from "./components/StudentList";
import { StudentOnboardingForm } from "./components/StudentOnboardingForm";
import { useStudentDirectory } from "./hooks/useStudentDirectory";
import { supabase } from "../../lib/supabase/client";
import { useAuth } from "../auth/useAuth";
import { updateStudent } from "./api/studentRepository";

type WorkspaceMode = "directory" | "onboarding";

const defaultFilters: StudentFilters = {
  query: "",
  className: "",
  section: "",
  city: "",
  status: "all",
  rteStatus: "all",
};

type StudentWorkspaceProps = {
  onOpenFees: () => void;
};

export function StudentWorkspace({ onOpenFees }: StudentWorkspaceProps) {
  const [mode, setMode] = useState<WorkspaceMode>("directory");
  const [filters, setFilters] = useState<StudentFilters>(defaultFilters);
  const { addStudent } = useStudents();
  const { user } = useAuth();
  const { students, activeStudents, source, isLoading, error, health, refresh, replaceStudent } = useStudentDirectory(filters);
  const [selectedStudent, setSelectedStudent] = useState<Student | null>(null);

  const classOptions = useMemo(
    () => uniqueValues(students.map((student) => student.academicRegistration.className)),
    [students],
  );
  const sectionOptions = useMemo(
    () => uniqueValues(students.map((student) => student.academicRegistration.section)),
    [students],
  );
  const cityOptions = useMemo(() => uniqueValues(students.map((student) => student.address.city)), [students]);

  const completionCount = students.filter((student) => {
    const hasGuardian = student.guardians.some((guardian) => guardian.fullName && guardian.mobilePrimary);
    return !student.dateOfBirth || !student.address.city || !hasGuardian;
  }).length;

  useEffect(() => {
    if (!selectedStudent && students.length > 0) {
      setSelectedStudent(students[0]);
    }
    if (selectedStudent) {
      const updatedSelection = students.find((student) => student.id === selectedStudent.id);
      if (updatedSelection && updatedSelection !== selectedStudent) {
        setSelectedStudent(updatedSelection);
      }
    }
  }, [selectedStudent, students]);

  async function saveStudent(student: Student) {
    await updateStudent(student);
    setSelectedStudent(student);
    replaceStudent(student);
  }

  return (
    <main className="app-shell">
      <header className="topbar">
        <div className="brand-mark">R</div>
        <div>
          <p>RILEN</p>
          <h1>Student directory</h1>
        </div>
        <div className="mode-toggle" aria-label="Student workspace mode">
          <Button
            variant={mode === "directory" ? "primary" : "secondary"}
            icon={<LayoutList size={17} />}
            onClick={() => setMode("directory")}
          >
            Directory
          </Button>
          <Button
            variant={mode === "onboarding" ? "primary" : "secondary"}
            icon={<UserRoundPlus size={17} />}
            onClick={() => setMode("onboarding")}
          >
            New student
          </Button>
          <Button variant="secondary" icon={<ReceiptText size={17} />} onClick={onOpenFees}>
            Fees
          </Button>
          {user && (
            <Button variant="secondary" icon={<LogOut size={17} />} onClick={() => supabase?.auth.signOut()}>
              Sign out
            </Button>
          )}
        </div>
      </header>

      <section className="operating-brief">
        <div>
          <span className="eyebrow">Today</span>
          <h2>{activeStudents.length} active students</h2>
          <p>{completionCount} records need basic intake completion</p>
        </div>
        <div className="brief-metric">
          <UsersRound size={19} />
          <span>{classOptions.length}</span>
          <p>classes</p>
        </div>
        <div className="brief-metric">
          <Brain size={19} />
          <span>{cityOptions.length}</span>
          <p>cities</p>
        </div>
      </section>

      {health && source === "supabase" && students.length === 0 && (
        <section className="diagnostic-strip">
          <strong>Database check</strong>
          <span>Auth: {health.isAuthenticated ? "signed in" : "not signed in"}</span>
          <span>Visible students: {health.studentCount}</span>
          <span>Visible registrations: {health.registrationCount}</span>
          {(health.studentError || health.registrationError || health.authError) && (
            <span>Access check failed. Verify account permissions, then refresh.</span>
          )}
        </section>
      )}

      {mode === "onboarding" ? (
        <div className="workspace workspace--form">
          {source === "supabase" && (
            <div className="warning-strip">
              <strong>Preview only</strong>
              <span>New student records are not saved until the secured onboarding endpoint is available.</span>
            </div>
          )}
          <StudentOnboardingForm
            students={students}
            onCreate={addStudent}
            onCreated={(student) => {
              setSelectedStudent(student);
              setMode("directory");
            }}
          />
        </div>
      ) : (
        <div className="workspace">
          <section className="directory-panel">
            {error && (
              <div className="warning-strip" role="alert">
                <strong>Students unavailable</strong>
                <span>{error}</span>
              </div>
            )}
            <StudentFiltersView
              filters={filters}
              classOptions={classOptions}
              sectionOptions={sectionOptions}
              cityOptions={cityOptions}
              onChange={setFilters}
            />
            <div className="list-summary">
              <strong>{isLoading ? "Loading students" : `${students.length} students`}</strong>
              <span>
                {filters.className ? `Class ${filters.className}` : "All classes"}
                {filters.city ? ` · ${filters.city}` : ""}
                {filters.rteStatus !== "all" ? ` · ${filters.rteStatus === "rte" ? "RTE" : "Non-RTE"}` : ""}
              </span>
            </div>
            <StudentList
              students={students}
              selectedStudentId={selectedStudent?.id ?? null}
              onSelect={setSelectedStudent}
            />
          </section>
          <StudentDetailPanel student={selectedStudent} onClose={() => setSelectedStudent(null)} onSave={saveStudent} />
        </div>
      )}
    </main>
  );
}
