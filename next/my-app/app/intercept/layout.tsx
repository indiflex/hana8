import Link from 'next/link';
import type { PropsWithChildren } from 'react';

export default function InterceptLayout({ children }: PropsWithChildren) {
  return (
    <>
      <h1 className="text-center">Intercept Layout</h1>
      <div className="flex gap-3">
        <Link href="/intercept/ic1">IC1</Link>
        <Link href="/intercept/ic2">IC2</Link>
        <Link href="/intercept/ic3">IC3</Link>
        <Link href="/about">About</Link>
      </div>

      <div className="border p-3">{children}</div>
    </>
  );
}
