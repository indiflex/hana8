import { NextResponse } from 'next/server';

export class HttpError extends Error {
  status: number;

  constructor(message: string, status: number) {
    super(message);
    this.status = status;
  }
}

type WithMessage = {
  message: string;
};

export const errorResponse = (err: unknown) => {
  let message = '';
  let status = 500;

  if (err instanceof HttpError) {
    message = err.message;
    status = err.status;
  } else if (isErrorWithMessage(err)) {
    message = err.message;
  } else {
    message = JSON.stringify(err);
  }

  return NextResponse.json({ message, status }, { status });
};

export const isErrorWithMessage = (err: unknown): err is WithMessage =>
  err instanceof Error ||
  (typeof err === 'object' &&
    err !== null &&
    'message' in err &&
    typeof err.message === 'string');
