import { useCounter } from '@/hooks/CounterContext';
import { cn } from '@/lib/utils';

export default function Home() {
  const { count } = useCounter();
  return (
    <>
      <h1 className='text-3xl'>{count < 50 && 'Welcome'}</h1>
      <h1 className={cn('text-3xl mt-3 m-5')}>count: {count}</h1>
    </>
  );
}
