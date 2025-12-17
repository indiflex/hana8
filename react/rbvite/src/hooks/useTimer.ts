// useInterval(() => setGoodSec((p) => p + 1, 1000);

import { useEffect, useRef, useState } from 'react';

// useInterval(console.log, 1000, x, y, z);
export function useInterval_OLD<T extends (...args: Parameters<T>) => void>(
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  console.log('args>>', args);
  useEffect(() => {
    console.log('11111111111111');
    const intl = setInterval(() => {
      console.log('*********', args);
      cb(...args);
    }, delay);
    // cb(...args);
    return () => {
      console.log('2222222222222');
      clearInterval(intl);
    };
  }, []);
}

function useTime<T extends (...args: Parameters<T>) => void>(
  f: typeof setTimeout | typeof setInterval,
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  // const [timer, setTimer] = useState<ReturnType<typeof f>>();
  // const dtimer = useDeferredValue(timer);
  const timerRef = useRef<ReturnType<typeof f>>(undefined);

  const setTime = () => {
    timerRef.current = f(() => {
      cb(...args);
      timerRef.current = undefined;
    }, delay);
  };
  // const clear = () =>
  //   f === setTimeout
  //     ? clearTimeout(timerRef.current)
  //     : clearInterval(timerRef.current);
  const clear = () => {
    if (!timerRef.current) return;
    (f === setTimeout ? clearTimeout : clearInterval)(timerRef.current);
    timerRef.current = undefined;
  };

  const reset = () => {
    clear();
    setTime();
  };

  useEffect(() => {
    setTime();

    return clear;
  }, []);

  return { clear, reset, timerRef };
}
// function time_OLD<T extends () => void>(
//   f: typeof setTimeout | typeof setInterval,
//   cb: T,
//   delay: number,
//   ...args: Parameters<T>
// ) {
//   const [timer, setTimer] = useState<ReturnType<typeof f>>();

//   const setTime = () => {
//     const timer = f(cb, delay, ...args);
//     setTimer(timer);
//     return timer;
//   };
//   const clear = (t?: ReturnType<typeof f>) =>
//     f === setTimeout ? clearTimeout(t || timer) : clearInterval(t || timer);
//   const reset = () => {
//     clear();
//     // setTimer(f(cb, delay, ...args));
//     setTime();
//   };

//   useEffect(() => {
//     // const timer = f(cb, delay, ...args);
//     // setTimer(timer);

//     // setTimer(f(cb, delay, ...args));
//     const timer = setTime();

//     // return () => clearTimeout(timer);
//     return () => clear(timer);
//   }, []);

//   return { clear, reset };
// }

export function useInterval<T extends (...args: Parameters<T>) => void>(
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  return useTime(setInterval, cb, delay, ...args);
}

export function useTimeout<T extends (...args: Parameters<T>) => void>(
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  return useTime(setTimeout, cb, delay, ...args);
}

// const [searchStr, setSearchStr] = useState('');
// const dv = useDebounce(searchStr, delay) ===> filter
export function useDebounce<T>(state: T, delay: number, deps: unknown[] = []) {
  const [debouncedValue, setDebouncedValue] = useState<T>(state);
  const { reset } = useTimeout(() => setDebouncedValue(state), delay);
  useEffect(() => {
    reset(); // clear & setTimeout
  }, [state, ...deps]);

  return debouncedValue;
}

export function useDebounceWithoutTimerHook<T>(
  state: T,
  delay: number,
  deps: unknown[] = []
) {
  const [debouncedValue, setDebouncedValue] = useState<T>(state);
  useEffect(() => {
    const timer = setTimeout(() => setDebouncedValue(state), delay);

    return () => clearTimeout(timer);
  }, [state, ...deps]);

  return debouncedValue;
}

export function useThrottle<T>(state: T, delay: number, deps: unknown[] = []) {
  const [throttledValue, setThrottledValue] = useState<T>(state);
  const { timerRef, reset } = useTimeout(setThrottledValue, delay, state);
  useEffect(() => {
    if (timerRef.current) return;
    reset();
  }, [state, ...deps]);

  return throttledValue;
}
export function useThrottleWithoutTimeHook<T>(
  state: T,
  delay: number,
  deps: unknown[] = []
) {
  const [throttledValue, setThrottledValue] = useState<T>(state);
  const timerRef = useRef<ReturnType<typeof setTimeout>>(undefined);
  useEffect(() => {
    if (timerRef.current) return;

    timerRef.current = setTimeout(() => {
      setThrottledValue(state);
      timerRef.current = undefined;
    }, delay);

    // return () => {
    //   clearTimeout(timerRef.current);
    //   timerRef.current = undefined;
    // };
  }, [state, ...deps]);

  return throttledValue;
}
