const assert = require('assert');

const hong = { id: 1, name: 'Hong' };
const choi = { id: 5, name: 'Choi' };
const kim = { id: 2, name: 'kim' };
const lee = { id: 3, name: 'Lee' };
const park = { id: 4, name: 'Park' };
const users = [kim, lee, park]; // 오염되면 안됨!!

const reduce = (array, fn, initValue) => {
  let i = 0;
  let acc = initValue === undefined ? array[i++] : initValue;
  for (; i < array.length; i++) {
    acc = fn(acc, array[i], i, array);
  }

  return acc;
};

const a10 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
assert.deepStrictEqual(
  reduce(a10, (acc, cur) => acc + cur, 0),
  a10.reduce((acc, cur) => acc + cur, 0)
);

assert.deepStrictEqual(
  reduce(users, (acc, user) => acc + user.name),
  users.reduce((acc, user) => acc + user.name)
);

assert.deepStrictEqual(
  reduce([1, 2, 3], (acc, a, i) => `${acc}+${a}-${i}`, null),
  [1, 2, 3].reduce((acc, a, i) => `${acc}+${a}-${i}`, null)
);

assert.deepStrictEqual(
  reduce(a10, (acc, cur) => acc + cur, 0),
  a10.reduce((acc, cur) => acc + cur, 0)
);
assert.deepStrictEqual(
  reduce(a10, (acc, cur) => acc + cur),
  a10.reduce((acc, cur) => acc + cur)
);
assert.deepStrictEqual(
  reduce([1, 2, 3, 4, 5], (a, b) => a * b, 1),
  [1, 2, 3, 4, 5].reduce((a, b) => a * b, 1)
);

assert.deepStrictEqual(
  reduce(users, (acc, user) => acc + user.name),
  users.reduce((acc, user) => acc + user.name)
);

console.log('----------------------------------');
const arr = [1, 2, 3, 4, 5];
const square = n => n ** 2;
const sqrt = n => Math.sqrt(n);
const cube = n => n ** 3;
const xr1 = arr.map(square).map(sqrt).map(cube);
console.log('xr1>>', xr1);
assert.deepStrictEqual(xr1, [1, 8, 27, 64, 125]);

const xr2 = arr.map(a => [square, sqrt, cube].reduce((acc, fn) => fn(acc), a));
console.log('🚀  xr2:', xr2);
const xr3 = arr.map(a => [cube, square, sqrt].reduce((acc, fn) => fn(acc), a));
console.log('🚀  xr3:', xr3);
const xr4 = arr.map(a =>
  [square, cube, n => n + 1].reduce((acc, fn) => fn(acc), a)
);
console.log('🚀  xr4:', xr4);
