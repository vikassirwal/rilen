type CacheEntry<T> = {
  expiresAt: number;
  value: T;
};

const values = new Map<string, CacheEntry<unknown>>();
const inFlight = new Map<string, Promise<unknown>>();

export async function cachedRequest<T>(
  key: string,
  loader: () => Promise<T>,
  options: { ttlMs: number; force?: boolean },
): Promise<T> {
  const now = Date.now();
  const cached = values.get(key) as CacheEntry<T> | undefined;

  if (!options.force && cached && cached.expiresAt > now) {
    return cached.value;
  }

  const pending = inFlight.get(key) as Promise<T> | undefined;
  if (pending) return pending;

  const request = loader()
    .then((value) => {
      values.set(key, { value, expiresAt: Date.now() + options.ttlMs });
      return value;
    })
    .finally(() => {
      inFlight.delete(key);
    });

  inFlight.set(key, request);
  return request;
}

export function invalidateCachedRequests(prefix: string) {
  for (const key of values.keys()) {
    if (key.startsWith(prefix)) values.delete(key);
  }
}
