import { Search } from "lucide-react";
import { SelectField } from "../../../components/ui/Field";
import type { StudentFilters as StudentFiltersType } from "../../../types/student";

type StudentFiltersProps = {
  filters: StudentFiltersType;
  classOptions: string[];
  sectionOptions: string[];
  cityOptions: string[];
  onChange: (filters: StudentFiltersType) => void;
};

export function StudentFilters({
  filters,
  classOptions,
  sectionOptions,
  cityOptions,
  onChange,
}: StudentFiltersProps) {
  return (
    <div className="filters">
      <div className="filters__search">
        <label className="search-box">
          <Search size={17} />
          <input
            value={filters.query}
            onChange={(event) => onChange({ ...filters, query: event.target.value })}
            placeholder="Search name, city, class, scholar no., guardian, mobile, RTE"
          />
        </label>
      </div>
      <div className="filters__controls">
        <SelectField
          label="Class"
          value={filters.className}
          options={classOptions}
          onChange={(event) => onChange({ ...filters, className: event.target.value })}
        />
        <SelectField
          label="Section"
          value={filters.section}
          options={sectionOptions}
          onChange={(event) => onChange({ ...filters, section: event.target.value })}
        />
        <SelectField
          label="City"
          value={filters.city}
          options={cityOptions}
          onChange={(event) => onChange({ ...filters, city: event.target.value })}
        />
        <label className="field">
          <span>Status</span>
          <select
            value={filters.status}
            onChange={(event) =>
              onChange({ ...filters, status: event.target.value as StudentFiltersType["status"] })
            }
          >
            <option value="all">All</option>
            <option value="active">Active</option>
            <option value="inactive">Inactive</option>
          </select>
        </label>
        <label className="field">
          <span>RTE</span>
          <select
            value={filters.rteStatus}
            onChange={(event) =>
              onChange({ ...filters, rteStatus: event.target.value as StudentFiltersType["rteStatus"] })
            }
          >
            <option value="all">All</option>
            <option value="rte">RTE</option>
            <option value="non-rte">Non-RTE</option>
          </select>
        </label>
      </div>
    </div>
  );
}
