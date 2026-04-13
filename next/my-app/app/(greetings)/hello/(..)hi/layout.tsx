import Link from 'next/link';
import type { PropsWithChildren } from 'react';
import { TIMES } from '../../hi/constants';

export default function HelloHiLayout({ children }: PropsWithChildren) {
  return (
    <div className="border-2 border-green-300 text-center">
      <h1 className="">Hello/(..)hi Layout</h1>
      <div className="flex gap-3 justify-center">
        {TIMES.map((time) => (
          <Link key={time} href={`/hi/${time}`}>
            {time}
          </Link>
        ))}
      </div>

      {children}
    </div>
  );
}
