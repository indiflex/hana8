interface IUser {
  id: number;
  age: number;
  name?: string;
}

interface IDept {
  id: number;
  age: string;
  dname: string;
  captain: string;
}

// type PartialRequired<T, R extends keyof T> = Required<Pick<Partial<T>, R>>
// type PartialRequired<T, R extends keyof T> = Partial<T> & Required<Pick<T, R>>;
type PartialRequired<T, R extends keyof T> = {
  [k in keyof T as k extends R ? never : k]?: T[k];
} & {
  [k in keyof T as k extends R ? k : never]-?: T[k];
};
type User = PartialRequired<IUser, 'name'>; // name만 required
// type User2 = PartialRequired<IUser, 'addr'>; // Error(: addr is not exists)

// let missName: User = {}; // Error! (: name is required)
let nameOnly: User = { name: 'Hong' }; // OK
let nameWithId: User = { name: 'Hong', id: 2 }; // OK
// let nameWithExtra: User = { name: 'Hong', idd: 2 }; // Fail(idd is not exists)
console.log('🚀 ~', nameWithId, nameOnly);
// console.log('🚀 ~', missName, nameOnly,
//                     nameWithId, nameWithExtra);
type CombineExclude<T, U, E> = {
  [k in keyof (T & U) as k extends E ? never : k]: k extends keyof T & keyof U
    ? T[k] | U[k]
    : (T & U)[k];
};

type ICombineExclude = CombineExclude<IUser, IDept, 'name' | 'dname'>;

let combineExclude: ICombineExclude = {
  id: 0,
  age: 33,
  captain: 'ccc',
};
console.log('🚀 ~ combineExclude:', combineExclude);

// -- ComponentProps<Compo>  :  <Comp name={...} age={33} />
function registUserObj({ name, age }: { name: string; age: number }) {
  const id = 100;
  return { id, name, age };
}

type ComponentProps<F extends Function> = F extends (
  ...args: infer ARGS
) => void
  ? ARGS[0]
  : never;
type RegistUserObj = Parameters<typeof registUserObj>[number];
type RegistUserObj2 = ComponentProps<typeof registUserObj>;

const paramObj: RegistUserObj = { name: 'Hong', age: 32 };
const newUser2 = registUserObj(paramObj);
console.log('🚀  newUser2:', newUser2);

// --
// debounce와 throttle 함수를 TypeScript로 작성하시오.
const debounce = <T extends (...a: Parameters<T>) => void>(
  cb: T,
  delay: number
) => {
  let timer: ReturnType<typeof setTimeout>;
  return (...args: Parameters<T>) => {
    if (timer) clearTimeout(timer);
    timer = setTimeout(() => cb(...args), delay);
  };
};

const throttle = <T extends unknown[]>(
  cb: (...args: T) => void,
  delay: number
) => {
  let timer: ReturnType<typeof setTimeout> | null;
  return (...args: T) => {
    if (timer) return;
    timer = setTimeout(() => {
      cb(...args);
      timer = null;
    }, delay);
  };
};

// test
const debo = debounce((a: number, b: string) => console.log(a + 1, b), 1000);
for (let i = 10; i < 15; i++) debo(i, 'abc'); // 15, 'abc'

const thro = throttle((a: number) => console.log(a + 1), 1000);
for (let i = 10; i < 15; i++) thro(i); // 11

// JS 시간에 작성했던 memoized 함수를 범용성을 고려하여 TS로 작성하시오.
// function memoized<P extends unknown[], R>(fn: (...args: P) => R) {
//   const cache: Record<string, R> = {};
//   return function (...args: P) {
//     const k = JSON.stringify(args); // f(1, 2) ==> `[1,2]` <==> [2,1]
//     // const k = args.toSorted().toString(); // [2,1] ==> [1,2]
//     return cache[k] ?? (cache[k] = fn(...args));
//   };
// }
function memoized<T extends (...args: Parameters<T>) => ReturnType<T>>(fn: T) {
  const cache: Record<string, ReturnType<T>> = {};
  return function (...args: Parameters<T>) {
    const k = JSON.stringify(args); // f(1, 2) ==> `[1,2]` <==> [2,1]
    // const k = args.toSorted().toString(); // [2,1] ==> [1,2]
    return cache[k] ?? (cache[k] = fn(...args));
  };
}

// test
const memoizeAdd = memoized((a: number, b: number) => {
  return a + b;
});

console.log(memoizeAdd(1, 2)); // 3
console.log(memoizeAdd(3, 4)); // 7

const memoizeFactorial = memoized((n: number): number => {
  if (n <= 1) return 1;

  return n * memoizeFactorial(n - 1);
});

console.log(memoizeFactorial(3), 6);
console.log(memoizeFactorial(5), 120);
