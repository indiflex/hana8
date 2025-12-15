import { useState } from 'react';
import './App.css';
import Hello from './components/Hello';
import My from './components/My';

export type ItemType = {
  id: number;
  name: string;
  price: number;
  isSoldOut?: boolean;
};
export type LoginUser = { id: number; name: string; age: number };
export type Session = {
  loginUser: LoginUser | null;
  cart: ItemType[];
};
export type LoginFunction = (name: string, age: number) => void;

const DefaultSession = {
  // loginUser: null,
  loginUser: { id: 1, name: 'Hong', age: 33 },
  cart: [
    { id: 100, name: '라면', price: 3000 },
    { id: 101, name: '컵라면', price: 2000 },
    { id: 200, name: '파', price: 5000 },
  ],
};

function App() {
  const [count, setCount] = useState(0);
  const [session, setSession] = useState<Session>(DefaultSession);

  // plusCount(100)
  // const pc = () => setCount(count + 1);
  const plusCount = () => setCount((prevCount) => prevCount + 1);

  const logout = () => {
    // session.loginUser = null; // fail!!
    setSession({ ...session, loginUser: null });
  };

  const login: LoginFunction = (name, age) => {
    if (!name || !age) return alert('Input Name and Age, plz!');

    setSession({ ...session, loginUser: { id: 1, name, age } });
  };

  const removeItem = (id: number) => {
    if (!confirm('Are u sure?')) return;

    // setSession({
    //   ...session,
    //   cart: [...session.cart.filter((item) => item.id !== id)],
    // });

    setSession({
      ...session,
      cart: session.cart.filter((item) => item.id !== id),
    });
  };

  const saveItem = ({ id, name, price }: ItemType) => {
    const item = id && session.cart.find((item) => item.id === id);

    // updateItem
    // session.cart.map(item => item.id === id ? { id: item.id, name, price } : item);

    if (item) {
      // item.name = name;
      // item.price = price;
      setSession({
        ...session,
        cart: session.cart.map((item) =>
          item.id === id ? { id, name, price } : item
        ),
      });
    } else {
      const newItem = {
        id: Math.max(...session.cart.map((item) => item.id), 0) + 1,
        name,
        price,
      };
      setSession({ ...session, cart: [...session.cart, newItem] });
    }
  };

  // const addItem = (name: string, price: number) => {
  //   const newItem = {
  //     id: Math.max(...session.cart.map((item) => item.id), 0) + 1,
  //     name,
  //     price,
  //   };
  //   // session.cart.push(newItem);
  //   // setSession({ ...session });
  //   setSession({ ...session, cart: [...session.cart, newItem] });
  // };

  return (
    <div className='grid place-items-center h-screen mx-2'>
      <h1 className='text-3xl'>count: {count}</h1>
      <My
        session={session}
        logout={logout}
        login={login}
        removeItem={removeItem}
        saveItem={saveItem}
      />
      <Hello
        name={session.loginUser?.name}
        age={session.loginUser?.age}
        plusCount={plusCount}
      >
        반갑습니다
      </Hello>
    </div>
  );
}

export default App;
