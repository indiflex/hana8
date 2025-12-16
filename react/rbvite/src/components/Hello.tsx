import { type PropsWithChildren } from 'react';
import { useCounter } from '../hooks/CounterContext';
import { useSession } from '../hooks/SessionContext';
import { useFetch } from '../hooks/useFetch';
import { useToggle } from '../hooks/useToggle';
import Button from './ui/Button';

export default function Hello({ children }: PropsWithChildren) {
  const { count, plusCount } = useCounter();
  // const [toggler, toggle] = useReducer((p) => !p, false);
  const [toggler, toggle] = useToggle();
  const {
    session: { loginUser },
  } = useSession();
  const { name = 'Guest', age } = loginUser || {};

  const {
    data: user,
    isLoading,
    error,
  } = useFetch<{ username: string }>(
    `https://jsonplaceholder.typicode.com/users/${count + 1}`,
    [count]
  );

  // useEffect(() => {
  //   plusCount();
  //   // console.log('🚀 ~ count:', toggler);
  //   return () => minusCount();
  // }, [plusCount, minusCount, toggler]);
  // }, [plusCount, minusCount, count, toggler]);

  // (주의) 의존 관계 배열 지정 시 고려 사항 (cf. 19.2)
  // const primitive = 123;
  // useEffect(() => {
  //   console.log('effect primitive 123!!!');
  // }, [primitive]);

  // useEffect(() => {
  //   const array = [1, 2, 3];
  //   console.log('effect Array!!!', array);
  // }, []);

  return (
    <div className='border border-red-300 p-3 text-center'>
      {error && <h2 className='text-red-500'>Error: {error}</h2>}
      <h2 className='text-2xl'>
        {count + 1}: {isLoading ? '...' : user?.username}
      </h2>
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
