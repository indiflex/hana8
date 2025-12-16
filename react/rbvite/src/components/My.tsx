import { PlusIcon } from 'lucide-react';
import { useEffect, useReducer, useRef, useState } from 'react';
import { useInterval } from '../hooks/interval';
import { useSession } from '../hooks/SessionContext';
import Item from './Item';
import Login from './Login';
import Profile, { type ProfileHandler } from './Profile';
import Button from './ui/Button';

export default function My() {
  const { session } = useSession();
  // const [isAdding, setAdding] = useState(false);
  // const toggleAdding = () => setAdding((pre) => !pre);
  const [isAdding, toggleAdding] = useReducer((pre) => !pre, false);
  // const [totalPrice, addPrice] = useReducer((pre, action) => pre + action, 0);
  // addPrice(1000)
  /*
  function useReducer(reducer, initValueOrFunction) {
    const [state, setState] = useState(initValueOrFunction);
    const dispatch = (action) => {
      setState(reducer(preState, action));
    };

    return [state, dispatch];
  }
  */

  const profileHandlerRef = useRef<ProfileHandler>(null);

  const item101 = session.cart.find((item) => item.id === 101);
  // useEffect(() => {
  //   console.log('🚀 ~ item101:', item101);
  // }, [item101]);

  const [badSec, setBadSec] = useState(0);
  const [goodSec, setGoodSec] = useState(0);

  useEffect(() => {
    setInterval(() => setBadSec((p) => p + 1), 1000);
  }, []);

  // useEffect(() => {
  //   const intl = setInterval(() => setGoodSec((p) => p + 1), 1000);
  //   return () => clearInterval(intl);
  // }, []);

  // const f = () => setGoodSec((p) => p + 1);

  const ff = (n: number) => {
    console.log('🚀 ~ n:', n, goodSec); // n은 영원히 1 (: )
    // setGoodSec(n + 1); // 위 goodSec는 영원히 0
    setGoodSec((p) => p + 1);
  };
  // goodSec + 1 의 값이
  console.log('🚀 ~ goodSec:', goodSec);
  useInterval(ff, 1000, goodSec + 1);
  // useInterval(setGoodSec, 1000, goodSec + 1);
  // useInterval(() => setGoodSec((p) => p + 1), 1000);
  // useInterval(f, 1000);

  return (
    <>
      <h1 className='text-xl'>
        bad: {badSec}, good: {goodSec}
      </h1>
      {session?.loginUser ? <Profile ref={profileHandlerRef} /> : <Login />}
      <hr />
      <a
        href='#!'
        onClick={(e) => {
          e.preventDefault();
          profileHandlerRef.current?.showLoginUser();
          console.log('xxx>>', profileHandlerRef.current?.xxx);
        }}
      >
        {item101?.name}
      </a>
      <ul>
        {session.cart.map((item) => (
          <li key={item.id}>
            <Item item={item} />
          </li>
        ))}
        <li className='text-center'>
          {isAdding ? (
            <Item
              item={{ id: 0, name: 'New Item', price: 3000 }}
              toggleAdding={toggleAdding}
            />
          ) : (
            <Button onClick={toggleAdding} className=''>
              <PlusIcon />
            </Button>
          )}
        </li>
      </ul>
    </>
  );
}
