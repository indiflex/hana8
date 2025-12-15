import { createContext, use, useState, type PropsWithChildren } from 'react';

type ContextValue = {
  count: number;
  plusCount: () => void;
};

// 1. createContext
const CounterContext = createContext<ContextValue>({
  count: 0,
  plusCount: () => {},
});

// 2. Provider
// CounterContext.Provider value={{x:1, y: () => {}}}
export function CounterProvider({ children }: PropsWithChildren) {
  const [count, setCount] = useState(0);
  const plusCount = () => setCount((prevCount) => prevCount + 1);

  return (
    <CounterContext.Provider value={{ count, plusCount }}>
      {children}
    </CounterContext.Provider>
  );
}

// 3. useCounter
// eslint-disable-next-line react-refresh/only-export-components
export const useCounter = () => use(CounterContext);
// const useCounter = () => useContext(CounterContext);
