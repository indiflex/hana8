// 'use client';

import { headers } from 'next/headers';
import Link from 'next/link';
// import { useSession } from 'next-auth/react';
import { ModeToggle } from '@/components/ModeToggle';
import UserProfile from '@/components/UserProfile';
import { Separator } from '@/components/ui/separator';
import { auth } from '@/lib/auth';

export default async function Nav() {
  const header = await headers();
  const hostname = header.get('host') || '';
  const session = await auth();
  // const { data: session } = useSession();
  console.log('🚀 Nav - session:', session?.user, hostname);

  return (
    <nav className="flex items-center justify-between">
      <div className="flex h-5 [&>div.shrink-0]:m-1 [&>div.shrink-0]:bg-red-500">
        Navigator
        <Link href="/hello">Hello</Link>
        <Separator orientation="vertical" className="bg-secondary-foreground" />
        <Link href="/hi">Hi</Link>
        <Separator orientation="vertical" />
        <Link href="/shop/123">123</Link>
        <Separator orientation="vertical" />
        <Link href="/shop/123/456">456</Link>
        <Separator orientation="vertical" />
        <Link href="/intercept">Intercept</Link>
        <Separator orientation="vertical" />
        <Link href="/photos">Photos</Link>
        <Separator orientation="vertical" />
        <Link href="/about">about</Link>
        <Separator orientation="vertical" />
        <Link href="/caches">caches</Link>
        <Separator orientation="vertical" />
        <Link href="/adm">Adm</Link>
        <Separator orientation="vertical" />
        {session?.user ? (
          <Link href="/api/auth/signout">{session.user.name}</Link>
        ) : (
          <Link href="/sign">sign</Link>
        )}
      </div>
      <div className="flex items-center">
        <ModeToggle />
        {!!session?.user && <UserProfile data={session} />}
      </div>
    </nav>
  );
}
