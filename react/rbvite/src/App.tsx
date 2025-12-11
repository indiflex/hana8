import { useState } from 'react';
import './App.css';

const Hello = () => <h2>Hello</h2>;

function App() {
  const [count, setCount] = useState(0)
  
  return (
    <>
      <h1 className='text-3xl'>React {1 + 2}</h1>
      <div className="card">
        <button onClick={() => setCount((count) => count + 1)}>
          count is {count}
        </button>
        <Hello />
      </div>
    </>
  )
}

export default App
