import type { PropsWithChildren } from 'react';
import Button from './ui/Button';

type Prop = PropsWithChildren<{
  name?: string;
  age?: number;
  setCount: (cb: (c: number) => number) => void;
}>;

export default function Hello({
  name = 'guest',
  age,
  children,
  setCount,
}: Prop) {
  return (
    <div className='border border-red-300 p-3 text-center'>
      <h2 className='text-2xl'>
        Hello, {name}
        {age && <small className='text-sm'>({age})</small>}
      </h2>
      <div>{children}</div>
      <Button className='font-bold' onClick={() => setCount((c) => c + 1)}>
        count + 1
      </Button>
    </div>
  );
}
