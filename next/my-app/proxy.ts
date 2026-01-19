import { type NextRequest, NextResponse } from 'next/server';
import { auth } from './lib/auth';

const WithAuth = ['/about/caches', '/adm'];

const getPath = (req: NextRequest) => {
  const hostname = req.headers.get('host') || '';
  const pathname = req.nextUrl.pathname;
  if (pathname.startsWith('/adm')) return pathname;

  let path = null;
  if (hostname.includes('jade.com'))
    path = pathname.startsWith('/about') ? pathname : `/about${pathname}`;
  else if (hostname.includes('local.mydeal.com'))
    path = pathname.startsWith('/hello') ? pathname : `/hello${pathname}`;

  return path;
};

export async function proxy(req: NextRequest) {
  const pathname = getPath(req);
  console.log('🚀 ~ pathname:', pathname);
  // if (WithAuth.includes(req.nextUrl.pathname)) {
  if (WithAuth.includes(pathname || req.nextUrl.pathname)) {
    const session = await auth();
    const didLogin = !!session?.user;
    if (!didLogin) {
      const callbackUrl = encodeURIComponent(req.nextUrl.pathname);
      return NextResponse.redirect(
        new URL(`/sign?callbackUrl=${callbackUrl}`, req.url),
      );
    }
  }

  if (pathname) {
    const url = req.nextUrl.clone();
    url.pathname = pathname;
    console.log('🚀 ~ url.pathname:', url.pathname);
    return NextResponse.rewrite(url); // ← 주소창 변경 안됨
  }

  return NextResponse.next();
}

export const config = {
  // matcher: ['/admin', '/api/books/:path*'],
  matcher: [
    '/',
    '/((?!sign|regist|_next/static|_next/image|auth|api/auth|favicon.ico|robots.txt|images|profile|api/books|$).*)',
    // '/caches',
    // '/api/:path*',
    // 'posts/:postId*/edit',
  ],
};
