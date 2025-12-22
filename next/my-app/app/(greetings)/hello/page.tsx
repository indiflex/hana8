'use client';

import { usePathname, useRouter, useSearchParams } from 'next/navigation';
import SayHello from './SayHello';

export default function HelloPage() {
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const params = new URLSearchParams(searchParams.toString());

  const id = searchParams.get('id');
  const name = searchParams.get('name');

  const router = useRouter();

  const make200 = () => {
    params.set('id', `200`);
    router.push(`${pathname}?${params.toString()}`);
    // router.push('/');
  };

  return (
    <>
      <h1>
        Hello Page: {id} - {pathname}
      </h1>
      <div>
        {/* <Suspense fallback={<h1>...</h1>}> */}
        <SayHello name={name ?? 'Next'} />
        {/* </Suspense> */}
        <button onClick={make200}>make200</button>
      </div>
    </>
  );
}
