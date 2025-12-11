import { useState } from 'react';
import './App.css';
import Hello from './components/Hello';

function App() {
  const [count, setCount] = useState(0)
  const x = count;
  console.log('🚀 ~ x:', x);
  // const f = () => { };
  
  return (
    <div className='grid place-items-center h-screen'>
      <h1 className='text-3xl'>React {1 + 2}</h1>
      <div className="card">
        <button className='border py-1 px-2 rounded-md cursor-pointer' onClick={() => setCount((c) => c + 1)}>
          count is {count}
        </button>
        <Hello name="Jade">
          hhh
        </Hello>

      </div>
    </div>
  )
}

export default App
