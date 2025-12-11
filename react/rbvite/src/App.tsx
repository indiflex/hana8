import { useState } from 'react';
import './App.css';
import Hello from './components/Hello';

type Item = {
  id: number;
  name: string;
  price: number;
  isSoldOut?: boolean;
};
type Session = {
  loginUser: { id: number; name: string; age: number } | null;
  cart: Item[];
};

const DefaultSession = {
  // loginUser: null,
  loginUser: { id: 1, name: 'Hong', age: 33 },
  cart: [],
};

function App() {
  const [count, setCount] = useState(0);
  const [session] = useState<Session>(DefaultSession);

  return (
    <div className='grid place-items-center h-screen'>
      <h1 className='text-3xl'>count: {count}</h1>
      <div className='card'>
        <Hello
          name={session.loginUser?.name}
          age={session.loginUser?.age}
          setCount={setCount}
        >
          반갑습니다
        </Hello>
      </div>
    </div>
  );
}

export default App;
