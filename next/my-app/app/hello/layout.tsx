import Link from 'next/link';
import type { PropsWithChildren } from 'react';

export default function HelloLayout({ children }: PropsWithChildren) {
  return (
    <>
      <h1>Hello Layout</h1>
      <Link href={'/'}>Home</Link>
      <div className="border p-5 text-center">{children}</div>
    </>
  );
}
