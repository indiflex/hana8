import { useState } from 'react';
import './App.css';
import Hello from './components/Hello';
import My from './components/My';

type Item = {
  id: number;
  name: string;
  price: number;
  isSoldOut?: boolean;
};
export type LoginUser = { id: number; name: string; age: number };
export type Session = {
  loginUser: LoginUser | null;
  cart: Item[];
};

const DefaultSession = {
  loginUser: null,
  // loginUser: { id: 1, name: 'Hong', age: 33 },
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
  const plusCount = () => setCount((prevCount) => prevCount + 1);

  const logout = () => {
    // session.loginUser = null; // fail!!
    setSession({ ...session, loginUser: null });
  };

  return (
    <div className='grid place-items-center h-screen'>
      <h1 className='text-3xl'>count: {count}</h1>
      <My session={session} logout={logout} />
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
