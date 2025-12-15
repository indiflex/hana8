import type { PropsWithChildren } from 'react';
import { useCounter } from '../hooks/CounterContext';
import { useSession } from '../hooks/SessionContext';
import Button from './ui/Button';

export default function Hello({ children }: PropsWithChildren) {
  const { plusCount } = useCounter();
  const {
    session: { loginUser },
  } = useSession();
  const { name = 'Guest', age } = loginUser || {};

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
