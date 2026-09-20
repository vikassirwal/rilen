declare module "*.css";

interface ImportMetaEnv {
  readonly VITE_SUPABASE_URL?: string;
  readonly VITE_SUPABASE_PUBLISHABLE_KEY?: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}

declare namespace React {
  type ReactNode = unknown;
}

declare namespace JSX {
  interface IntrinsicElements {
    [elementName: string]: any;
  }
}

declare module "react" {
  export type ReactNode = unknown;
  export type ButtonHTMLAttributes<T> = any;
  export type InputHTMLAttributes<T> = any;
  export type SelectHTMLAttributes<T> = any;
  export type FormEvent = any;
  export function useEffect(effect: () => void | (() => void), deps?: unknown[]): void;
  export function useCallback<T extends (...args: any[]) => any>(callback: T, deps: unknown[]): T;
  export function useMemo<T>(factory: () => T, deps: unknown[]): T;
  export function useState<T>(initial: T | (() => T)): [T, (value: T | ((current: T) => T)) => void];
  const React: {
    StrictMode: any;
    useEffect: typeof useEffect;
    useCallback: typeof useCallback;
    useMemo: typeof useMemo;
    useState: typeof useState;
  };
  export default React;
}

declare module "react-dom/client" {
  export default {};
  export function createRoot(element: Element): {
    render(children: unknown): void;
  };
}

declare module "react/jsx-runtime" {
  export const jsx: any;
  export const jsxs: any;
  export const Fragment: any;
}
