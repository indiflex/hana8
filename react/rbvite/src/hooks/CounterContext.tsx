import {
  createContext,
  use,
  useCallback,
  useReducer,
  type PropsWithChildren,
} from 'react';

type ContextValue = {
  count: number;
  plusCount: () => void;
  minusCount: () => void;
  multiCount: (n: number) => void;
};

// 1. createContext
const CounterContext = createContext<ContextValue>({
  count: 0,
  plusCount: () => {},
  minusCount: () => {},
  multiCount: () => {},
});

type Action = {
  type: 'plus' | 'minus' | 'multi';
  payload: number;
};

const reducer = (preCount: number, { type, payload }: Action) => {
  switch (type) {
    case 'plus':
    case 'minus':
      return preCount + payload;
    case 'multi':
      return preCount * payload;
    default:
      return preCount;
  }
};

// 2. Provider
// CounterContext.Provider value={{x:1, y: () => {}}}
export function CounterProvider({ children }: PropsWithChildren) {
  const [count, dispatch] = useReducer(reducer, 0);
  // const [count, setCount] = useState(0);
  // const plusCount = () => setCount((prevCount) => prevCount + 1);
  // const minusCount = () => setCount((prevCount) => prevCount - 1);
  const plusCount = useCallback(
    () => dispatch({ type: 'plus', payload: 1 }),
    []
  );
  const minusCount = useCallback(
    () => dispatch({ type: 'minus', payload: -1 }),
    []
  );
  const multiCount = useCallback(
    (payload: number) => dispatch({ type: 'multi', payload }),
    []
  );

  return (
    <CounterContext.Provider
      value={{ count, plusCount, minusCount, multiCount }}
    >
      {children}
    </CounterContext.Provider>
  );
}

// 3. useCounter
export const useCounter = () => use(CounterContext);
// const useCounter = () => useContext(CounterContext);
