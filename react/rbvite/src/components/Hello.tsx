import { useEffect, type PropsWithChildren } from 'react';
import { useCounter } from '../hooks/CounterContext';
import { useSession } from '../hooks/SessionContext';
import { useToggle } from '../hooks/toggle';
import Button from './ui/Button';

export default function Hello({ children }: PropsWithChildren) {
  const { plusCount, minusCount } = useCounter();
  // const [toggler, toggle] = useReducer((p) => !p, false);
  const [toggler, toggle] = useToggle();
  const {
    session: { loginUser },
  } = useSession();
  const { name = 'Guest', age } = loginUser || {};

  useEffect(() => {
    plusCount();
    console.log('🚀 ~ count:', toggler);
    return () => minusCount();
  }, [plusCount, minusCount, toggler]);
  // }, [plusCount, minusCount, count, toggler]);

  // (주의) 의존 관계 배열 지정 시 고려 사항 (cf. 19.2)
  const primitive = 123;
  useEffect(() => {
    console.log('effect primitive 123!!!');
  }, [primitive]);

  useEffect(() => {
    const array = [1, 2, 3];
    console.log('effect Array!!!', array);
  }, []);

  return (
    <div className='border border-red-300 p-3 text-center'>
      <input type='text' onChange={toggle} />
      <h2 className='text-2xl'>
        Hello, {name}
        {age && <small className='text-sm'>({age})</small>}
      </h2>
      <div>{children}</div>
      <Button className='font-bold' onClick={plusCount}>
        count + 1
      </Button>
      <button onClick={toggle}>Toggle</button>
    </div>
  );
}
