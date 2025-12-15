import './App.css';
import Hello from './components/Hello';
import My from './components/My';
import { useCounter } from './hooks/CounterContext';
import { SessionProvider } from './hooks/SessionContext';

function App() {
  // const [count, setCount] = useState(0);
  const { count } = useCounter();

  return (
    <div className='grid place-items-center h-screen mx-2'>
      <h1 className='text-3xl'>count: {count}</h1>
      <SessionProvider>
        <My />
        <Hello>반갑습니다</Hello>
      </SessionProvider>
    </div>
  );
}

export default App;
