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

function time<T extends () => void>(
  f: typeof setTimeout | typeof setInterval,
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  // const [timer, setTimer] = useState<ReturnType<typeof f>>();
  const timerRef = useRef<ReturnType<typeof f>>(undefined);

  const setTime = () => {
    timerRef.current = f(cb, delay, ...args);
  };
  // const clear = () =>
  //   f === setTimeout
  //     ? clearTimeout(timerRef.current)
  //     : clearInterval(timerRef.current);
  const clear = () =>
    (f === setTimeout ? clearTimeout : clearInterval)(timerRef.current);

  const reset = () => {
    clear();
    setTime();
  };

  useEffect(() => {
    setTime();

    return clear;
  }, []);

  return { clear, reset };
}
function time_OLD<T extends () => void>(
  f: typeof setTimeout | typeof setInterval,
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  const [timer, setTimer] = useState<ReturnType<typeof f>>();

  const setTime = () => {
    const timer = f(cb, delay, ...args);
    setTimer(timer);
    return timer;
  };
  const clear = (t?: ReturnType<typeof f>) =>
    f === setTimeout ? clearTimeout(t || timer) : clearInterval(t || timer);
  const reset = () => {
    clear();
    // setTimer(f(cb, delay, ...args));
    setTime();
  };

  useEffect(() => {
    // const timer = f(cb, delay, ...args);
    // setTimer(timer);

    // setTimer(f(cb, delay, ...args));
    const timer = setTime();

    // return () => clearTimeout(timer);
    return () => clear(timer);
  }, []);

  return { clear, reset };
}

export function useInterval<T extends (...args: Parameters<T>) => void>(
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  return time(setInterval, cb, delay, ...args);
}

export function useTimeout<T extends () => void>(
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  return time(setTimeout, cb, delay, ...args);
}
