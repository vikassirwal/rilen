import { useEffect, useState } from "react";
import { Brain, LayoutList, UserRoundPlus, UsersRound } from "lucide-react";
import { Button } from "../../components/ui/Button";
import { Pagination } from "../../components/ui/Pagination";
import { useStudents } from "../../hooks/useStudents";
import type { Student, StudentFilters } from "../../types/student";
import { StudentDetailPanel } from "./components/StudentDetailPanel";
import { StudentFilters as StudentFiltersView } from "./components/StudentFilters";
import { StudentList } from "./components/StudentList";
import { StudentOnboardingForm } from "./components/StudentOnboardingForm";
import { useStudentDetail, useStudentDirectory } from "./hooks/useStudentDirectory";
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

export function StudentWorkspace() {
  const [mode, setMode] = useState<WorkspaceMode>("directory");
  const [filters, setFilters] = useState<StudentFilters>(defaultFilters);
  const [page, setPage] = useState(1);
  const [pageSize, setPageSize] = useState(50);
  const [selectedStudentId, setSelectedStudentId] = useState<string | null>(null);
  const { students: onboardingStudents, addStudent } = useStudents();
  const { students, totalCount, facets, metrics, source, isLoading, error, health, refresh } = useStudentDirectory(filters, { page, pageSize });
  const detail = useStudentDetail(selectedStudentId, source);

  useEffect(() => {
    if (selectedStudentId && !students.some((student) => student.id === selectedStudentId)) setSelectedStudentId(null);
  }, [selectedStudentId, students]);

  async function saveStudent(student: Student) {
    await updateStudent(student);
    detail.replaceStudent(student);
    refresh();
  }

  return (
    <main className="app-shell">
      <header className="topbar">
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
        </div>
      </header>

      <section className="operating-brief">
        <div>
          <span className="eyebrow">Today</span>
          <h2>{metrics.active} active students</h2>
          <p>{metrics.needsCompletion} records need basic intake completion</p>
        </div>
        <div className="brief-metric">
          <UsersRound size={19} />
          <span>{metrics.classCount}</span>
          <p>classes</p>
        </div>
        <div className="brief-metric">
          <Brain size={19} />
          <span>{metrics.cityCount}</span>
          <p>cities</p>
        </div>
      </section>

      {health && source === "supabase" && totalCount === 0 && (
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
            students={onboardingStudents}
            onCreate={addStudent}
            onCreated={(student) => {
              setSelectedStudentId(source === "demo" ? student.id : null);
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
              classOptions={facets.classes}
              sectionOptions={facets.sections}
              cityOptions={facets.cities}
              onChange={(nextFilters) => {
                setFilters(nextFilters);
                setPage(1);
              }}
            />
            <div className="list-summary">
              <strong>{isLoading ? "Loading students" : `${totalCount} students`}</strong>
              <span>
                {filters.className ? `Class ${filters.className}` : "All classes"}
                {filters.city ? ` · ${filters.city}` : ""}
                {filters.rteStatus !== "all" ? ` · ${filters.rteStatus === "rte" ? "RTE" : "Non-RTE"}` : ""}
              </span>
            </div>
            <StudentList
              students={students}
              selectedStudentId={selectedStudentId}
              onSelect={setSelectedStudentId}
            />
            <Pagination
              page={page}
              pageSize={pageSize}
              totalCount={totalCount}
              onPageChange={setPage}
              onPageSizeChange={(value) => {
                setPageSize(value);
                setPage(1);
              }}
            />
          </section>
          {selectedStudentId && detail.isLoading ? (
            <aside className="detail-loading">Loading student details...</aside>
          ) : selectedStudentId && detail.error ? (
            <aside className="detail-loading" role="alert">{detail.error}</aside>
          ) : (
            <StudentDetailPanel student={detail.student} onClose={() => setSelectedStudentId(null)} onSave={saveStudent} />
          )}
        </div>
      )}
    </main>
  );
}
