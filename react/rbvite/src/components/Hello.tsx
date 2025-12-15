import type { PropsWithChildren } from 'react';
// import { useCounter } from '../hooks/CounterContext';
import { useCounter } from '../hooks/CounterContext';
import Button from './ui/Button';

type Prop = PropsWithChildren<{
  name?: string;
  age?: number;
  // setCount: (cb: (c: number) => number) => void;
  // plusCount: () => void;
}>;

export default function Hello({ name = 'guest', age, children }: Prop) {
  const { plusCount } = useCounter();
  return (
    <div className='border border-red-300 p-3 text-center'>
      <h2 className='text-2xl'>
        Hello, {name}
        {age && <small className='text-sm'>({age})</small>}
      </h2>
      <div>{children}</div>
      <Button className='font-bold' onClick={plusCount}>
        count + 1
      </Button>
    </div>
  );
}
