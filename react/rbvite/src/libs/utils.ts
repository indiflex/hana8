export function isString(str: unknown): str is string {
  return typeof str === 'string';
}

export const isErrorWithMessage = (err: unknown): err is { message: string } =>
  err instanceof Error ||
  (err !== null &&
    typeof err === 'object' &&
    'message' in err &&
    typeof err.message === 'string');
