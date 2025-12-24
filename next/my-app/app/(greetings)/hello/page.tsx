'use client';

import type { Route } from 'next';
import { usePathname, useRouter, useSearchParams } from 'next/navigation';
import { Suspense } from 'react';
import SayHello from './SayHello';

export default function HelloPage() {
  const pathname = usePathname();
  // const p = useParams();
  // console.log('🚀 ~ p:', p);

  return (
    <>
      <h1>Hello Page: {pathname}</h1>
      <div>
        <Suspense fallback={<h1>...</h1>}>
          <SayHello name={'Next'} />
          <SearchParamId />
        </Suspense>
      </div>
    </>
  );
}

function SearchParamId() {
  const pathname = usePathname();
  const searchParams = useSearchParams();
  const params = new URLSearchParams(searchParams.toString());

  const id = searchParams.get('id');
  // const name = searchParams.get('name');

  const router = useRouter();

  const make200 = () => {
    params.set('id', `200`);
    router.push(`${pathname}?${params.toString()}` as Route);
    // router.push('/');
  };

  return <button onClick={make200}>ID: {id}</button>;
}
