const isStringNumber = (value: unknown): value is [string, number] =>
  Array.isArray(value) &&
  value.length === 2 &&
  typeof value[0] === 'string' &&
  typeof value[1] === 'number';

const f1 = (value: number | string | boolean | [string, number]) => {
  if (isStringNumber(value)) {
    console.log(value[0].toUpperCase(), value[1].toFixed());
  }
};
f1(['item', 1000]);

interface Animal {}
interface Dog extends Animal {
  name: string;
}
interface Cat extends Animal {
  punch(): void;
}
class Navi implements Cat {
  punch() {
    console.log('kukuki');
  }
}
console.log('navi is dog:', isDog(new Navi()));
class Retriever implements Dog {
  name: string;
  constructor(name: string) {
    this.name = name;
  }
}
const r = new Retriever('Maxx');
console.log('Maxx is dog:', isDog(r));

function isDog(a: Animal): a is Dog {
  return !!a && typeof a === 'object' && 'name' in a && !('punch' in a);
}

//------------
// 문제1) 다음에서 T1과 동일한 타입으로 T2를 정의하시오.

const cart = {
  X: 1,
  Y: 2,
  Z: 3,
};

// type T1 = "X" | "Y" | "Z";
type T2 = keyof typeof cart;
const t: T2 = 'X';
console.log('🚀 ~ t:', t);

// 문제2) 다음에서 T3과 동일한 타입으로 T4를 정의하시오.

const constCart = {
  X: 1,
  Y: 2,
  Z: 3,
} as const;

// type T3 = 1 | 2 | 3;
type T4 = (typeof constCart)[keyof typeof constCart];
const t4: T4 = 1;
console.log('🚀 ~ t4:', t4);

// --
const hasMessageError = (error: unknown): error is Error =>
  error instanceof Error ||
  (error !== null &&
    typeof error === 'object' &&
    'message' in error &&
    typeof error.message === 'string');

const messageError = (error: unknown) =>
  hasMessageError(error) ? error.message : JSON.stringify(error);

try {
  throw new Error('some error!!!!'); // 가
  // throw 'some string error!!!'; // 나
  // throw ['some', 'array', 'error']; // 다
} catch (error) {
  console.log(messageError(error)); // (라)
}

// ---
const arr = [1, 2, 3, 4];
const Hong = { id: 1, name: 'Hong' };
const Kim = { id: 2, name: 'Kim' };
const Lee = { id: 3, name: 'Lee' };
const users = [Hong, Kim, Lee];

type TUser = (typeof users)[number];

const deleteArray1 = (
  array: number[] | TUser[],
  startOrKey: number | keyof TUser,
  endOrValue: number | TUser[keyof TUser] = array.length
) =>
  array.filter(
    typeof startOrKey === 'number' && typeof endOrValue === 'number'
      ? (_, i) =>
          i < Math.min(startOrKey, endOrValue) ||
          i >= Math.max(startOrKey, endOrValue)
      : a =>
          typeof a !== 'number' &&
          typeof startOrKey !== 'number' &&
          a[startOrKey] !== endOrValue
  );

const deleteArray = (
  array: number[] | TUser[],
  startOrKey: number | keyof TUser,
  endOrValue: number | TUser[keyof TUser] = array.length
) =>
  array.filter(
    typeof startOrKey === 'number'
      ? (_, i) =>
          i < Math.min(startOrKey, endOrValue as number) ||
          i >= Math.max(startOrKey, endOrValue as number)
      : a => typeof a !== 'number' && a[startOrKey] !== endOrValue
  );

console.log(deleteArray1(arr, 2)); // [1, 2]
console.log(deleteArray(arr, 1, 3)); // [1, 4]
console.log(arr); // [1, 2, 3, 4]

console.log(deleteArray(users, 2)); // [Hong, Kim]
console.log(deleteArray(users, 1, 2)); // [Hong, Lee]
console.log(deleteArray(users, 'id', 2)); // [Hong, Lee]
console.log(deleteArray(users, 'name', 'Lee')); // [Hong, Kim]

import assert from 'assert';
assert.deepStrictEqual(deleteArray(arr, 2), [1, 2]);
assert.deepStrictEqual(deleteArray(arr, 1, 3), [1, 4]);
assert.deepStrictEqual(deleteArray(users, 2), [Hong, Kim]);
assert.deepStrictEqual(deleteArray(users, 'id', 2), [Hong, Lee]);
