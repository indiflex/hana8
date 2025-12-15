import { PlusIcon } from 'lucide-react';
import { useEffect, useState } from 'react';
import type { ItemType, LoginFunction, Session } from '../App';
import Item from './Item';
import Login from './Login';
import Profile from './Profile';
import Button from './ui/Button';

type Prop = {
  session: Session;
  logout: () => void;
  login: LoginFunction;
  removeItem: (id: number) => void;
  saveItem: ({ id, name, price }: ItemType) => void;
};

export default function My({
  session,
  logout,
  login,
  removeItem,
  saveItem,
}: Prop) {
  const [isAdding, setAdding] = useState(false);

  const item101 = session.cart.find((item) => item.id === 101);
  useEffect(() => {
    console.log('🚀 ~ item101:', item101);
  }, [item101]);

  return (
    <>
      {session?.loginUser ? (
        <Profile loginUser={session.loginUser} logout={logout} />
      ) : (
        <Login login={login} />
      )}
      <hr />
      {item101?.name}
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
