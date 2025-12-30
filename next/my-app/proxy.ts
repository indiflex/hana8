import { type NextRequest, NextResponse } from 'next/server';
import { auth } from './lib/auth';

export async function proxy(req: NextRequest) {
  const session = await auth();
  const didLogin = !!session?.user;
  // if (!didLogin) return NextResponse.json({ msg: 'Need Login!' });
  if (!didLogin) {
    const callbackUrl = encodeURIComponent(req.nextUrl.pathname);
    return NextResponse.redirect(
      new URL(`/sign?callbackUrl=${callbackUrl}`, req.url),
    );
  }

  return NextResponse.next();
}

export const config = {
  // matcher: ['/admin', '/api/books/:path*'],
  matcher: [
    // '/((?!login|regist|_next/static|_next/image|auth|api/auth|favicon.ico|robots.txt|images|api/books|$).*)',
    '/caches',
    // '/api/:path*',
    // 'posts/:postId*/edit',
  ],
};
