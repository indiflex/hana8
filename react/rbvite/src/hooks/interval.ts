// useInterval(() => setGoodSec((p) => p + 1, 1000);

import { useEffect } from 'react';

// useInterval(console.log, 1000, x, y, z);
export function useInterval<T extends (...args: Parameters<T>) => void>(
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

export function useTimeout<T extends () => void>(
  cb: T,
  delay: number,
  ...args: Parameters<T>
) {
  useEffect(() => {
    const timer = setTimeout(cb, delay, ...args);

    return () => clearTimeout(timer);
  }, []);
}
