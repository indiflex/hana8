'use client';

import { usePathname } from 'next/navigation';
import { parseAsInteger, useQueryState, useQueryStates } from 'nuqs';
import { Suspense } from 'react';
// import type { Route } from 'next';
// import { usePathname, useRouter, useSearchParams } from 'next/navigation';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
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
  // const router = useRouter();
  // const pathname = usePathname();
  // const searchParams = useSearchParams();
  // const params = new URLSearchParams(searchParams.toString());
  // const id = searchParams.get('id');
  // const make200 = () => {
  //   params.set('id', `200`);
  //   router.push(`${pathname}?${params.toString()}` as Route);
  // };
  // const [id, setId] = useQueryState('id', parseAsInteger.withDefault(0));
  const [{ id }, setId] = useQueryStates({ id: parseAsInteger.withDefault(0) });

  // const name = searchParams.get('name');
  const [name, setName] = useQueryState('name', {
    defaultValue: '',
  });
  console.log('🚀 ~ name:', name, id);

  return (
    <>
      <h1 className="text-2xl">Hello</h1>
      <Input
        type="text"
        value={name}
        onChange={(e) => setName(e.target.value)}
      />
      <Button onClick={() => setId({ id: id + 1 })}>
        ID/Name: {id}/{name}
      </Button>
    </>
  );
}
