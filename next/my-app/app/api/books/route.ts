import { type NextRequest, NextResponse } from 'next/server';
import { books } from './bookdata';

export async function GET(req: NextRequest) {
  const { searchParams } = req.nextUrl;
  const searchStr = searchParams.get('q') ?? '';

  return NextResponse.json(
    books.filter((book) => book.title.includes(searchStr)),
  );
}

export async function GET1(req: NextRequest) {
  const { host, hostname, searchParams, origin, pathname, basePath } =
    req.nextUrl;
  return NextResponse.json({
    host,
    hostname,
    pathname,
    origin,
    basePath,
    q: searchParams.get('q'),
  });
}
