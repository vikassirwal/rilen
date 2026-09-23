export class DataAccessError extends Error {
  constructor(message: string) {
    super(message);
    this.name = "DataAccessError";
  }
}

/** Returns a user-safe message without exposing provider or database details. */
export function getUserSafeError(error: unknown, fallback: string): string {
  return error instanceof DataAccessError ? error.message : fallback;
}
