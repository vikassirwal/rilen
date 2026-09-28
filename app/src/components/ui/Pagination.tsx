import { ChevronLeft, ChevronRight } from "lucide-react";

type PaginationProps = {
  page: number;
  pageSize: number;
  totalCount: number;
  onPageChange: (page: number) => void;
  onPageSizeChange: (pageSize: number) => void;
};

export function Pagination({ page, pageSize, totalCount, onPageChange, onPageSizeChange }: PaginationProps) {
  const pageCount = Math.max(1, Math.ceil(totalCount / pageSize));
  const start = totalCount === 0 ? 0 : (page - 1) * pageSize + 1;
  const end = Math.min(page * pageSize, totalCount);

  return (
    <nav className="pagination" aria-label="Results pages">
      <span>{start}-{end} of {totalCount}</span>
      <label>
        Rows
        <select value={pageSize} onChange={(event) => onPageSizeChange(Number(event.target.value))}>
          <option value={25}>25</option>
          <option value={50}>50</option>
          <option value={100}>100</option>
        </select>
      </label>
      <button type="button" aria-label="Previous page" disabled={page <= 1} onClick={() => onPageChange(page - 1)}>
        <ChevronLeft size={18} />
      </button>
      <span>Page {Math.min(page, pageCount)} of {pageCount}</span>
      <button type="button" aria-label="Next page" disabled={page >= pageCount} onClick={() => onPageChange(page + 1)}>
        <ChevronRight size={18} />
      </button>
    </nav>
  );
}
