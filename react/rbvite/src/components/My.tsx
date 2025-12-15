import { PlusIcon } from 'lucide-react';
import { useEffect, useRef, useState, type RefObject } from 'react';
import type { ItemType, LoginFunction, Session } from '../App';
import Item from './Item';
import Login, { type LoginHandler } from './Login';
import Profile, { type ProfileHandler } from './Profile';
import Button from './ui/Button';

type Prop = {
  session: Session;
  logout: () => void;
  login: LoginFunction;
  loginHandlerRef: RefObject<LoginHandler | null>;
  removeItem: (id: number) => void;
  saveItem: ({ id, name, price }: ItemType) => void;
};

export default function My({
  session,
  logout,
  login,
  loginHandlerRef,
  removeItem,
  saveItem,
}: Prop) {
  const [isAdding, setAdding] = useState(false);
  const profileHandlerRef = useRef<ProfileHandler>(null);

  const item101 = session.cart.find((item) => item.id === 101);
  useEffect(() => {
    console.log('🚀 ~ item101:', item101);
  }, [item101]);

  return (
    <>
      {session?.loginUser ? (
        <Profile
          loginUser={session.loginUser}
          logout={logout}
          ref={profileHandlerRef}
        />
      ) : (
        <Login login={login} ref={loginHandlerRef} />
      )}
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
            <Item item={item} removeItem={removeItem} saveItem={saveItem} />
          </li>
        ))}
        <li className='text-center'>
          {isAdding ? (
            <Item
              item={{ id: 0, name: 'New Item', price: 3000 }}
              saveItem={saveItem}
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
