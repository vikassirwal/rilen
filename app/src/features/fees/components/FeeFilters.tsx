import { Search, SlidersHorizontal } from "lucide-react";
import { SelectField, Field } from "../../../components/ui/Field";
import type { FeeFilters as FeeFiltersType } from "../../../types/fees";

type FeeFiltersProps = {
  filters: FeeFiltersType;
  classOptions: string[];
  onChange: (filters: FeeFiltersType) => void;
};

export function FeeFilters({ filters, classOptions, onChange }: FeeFiltersProps) {
  return (
    <div className="fee-filters">
      <label className="search-box fee-filters__search">
        <Search size={19} />
        <input
          value={filters.query}
          onChange={(event) => onChange({ ...filters, query: event.target.value })}
          placeholder="Search name, receipt, scholar no., date"
        />
      </label>
      <div className="fee-filter-strip">
        <SlidersHorizontal size={18} />
        <SelectField
          label="Class"
          value={filters.className}
          onChange={(event) => onChange({ ...filters, className: event.target.value })}
          options={classOptions}
        />
        <SelectField
          label="Status"
          value={filters.status}
          onChange={(event) => onChange({ ...filters, status: event.target.value as FeeFiltersType["status"] })}
          options={["pending", "paid"]}
          placeholder="All"
        />
        <SelectField
          label="Order"
          value={filters.sort}
          onChange={(event) => onChange({ ...filters, sort: event.target.value as FeeFiltersType["sort"] })}
          options={["pending-desc", "pending-asc", "recent-desc", "name-asc"]}
          placeholder="Highest pending"
        />
        <Field
          label="From"
          type="date"
          value={filters.fromDate}
          onChange={(event) => onChange({ ...filters, fromDate: event.target.value })}
        />
        <Field
          label="To"
          type="date"
          value={filters.toDate}
          onChange={(event) => onChange({ ...filters, toDate: event.target.value })}
        />
      </div>
    </div>
  );
}
