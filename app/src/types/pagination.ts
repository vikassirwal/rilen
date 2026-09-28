export type PageRequest = {
  page: number;
  pageSize: number;
};

export type PaginatedResult<T> = {
  items: T[];
  totalCount: number;
};
