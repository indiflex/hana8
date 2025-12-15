import { PlusIcon } from 'lucide-react';
import { useEffect, useRef, useState } from 'react';
import { useSession } from '../hooks/SessionContext';
import Item from './Item';
import Login from './Login';
import Profile, { type ProfileHandler } from './Profile';
import Button from './ui/Button';

export default function My() {
  const { session } = useSession();
  const [isAdding, setAdding] = useState(false);
  const profileHandlerRef = useRef<ProfileHandler>(null);

  const item101 = session.cart.find((item) => item.id === 101);
  useEffect(() => {
    console.log('🚀 ~ item101:', item101);
  }, [item101]);

  return (
    <>
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
              toggleAdding={() => setAdding(false)}
            />
          ) : (
            <Button onClick={() => setAdding(true)} className=''>
              <PlusIcon />
            </Button>
          )}
        </li>
      </ul>
    </>
  );
}
