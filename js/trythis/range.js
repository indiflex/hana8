const assert = require('assert');
const range = (s, e, step = s > e ? -1 : 1) => {
  console.log('range>>', s, e, step);
  if (s === e || step === 0) return [s];
  // if (s > e && step > 0) return [];
  // if (s < e && step < 0) return [];
  if ((s - e) * step > 0) return [];

  // if (e === undefined) {
  //   if (s > 0) {
  //     e = s;
  //     s = 1;
  //   } else if (s < 0) {
  //     e = -1;
  //   } else {
  //     return [0];
  //   }
  // }

  const tmps = s;
  e = e ?? (s > 0 ? ((s = 1), tmps) : s === 0 ? 0 : -1);

  const rets = [];
  // let i = s;
  // while (true) {
  //   if (s > e && i < e) break; // 5 4 3 2 1
  //   if (s < e && i > e) break; // 1 2 3 4 5

  //   rets.push(i);
  //   i += step;
  // }
  for (let i = s; s > e ? i >= e : i <= e; i += step) {
    rets.push(i);
  }

  return rets;
};
// assert.deepStrictEqual(range(1, 10, 1), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
// assert.deepStrictEqual(range(1, 10, 2), [1, 3, 5, 7, 9]);
// assert.deepStrictEqual(range(1, 10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
assert.deepStrictEqual(range(10, 1), [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]);

assert.deepStrictEqual(range(5, 5, 0), [5]);
assert.deepStrictEqual(range(1, 5, 0), [1]);
assert.deepStrictEqual(range(5, 5, -1), [5]);
assert.deepStrictEqual(range(5, 5), [5]);
assert.deepStrictEqual(range(0, 0, 5), [0]);
assert.deepStrictEqual(range(1, 5, -1), []);

assert.deepStrictEqual(range(1, 5, 6), [1]);
assert.deepStrictEqual(range(0, 5), [0, 1, 2, 3, 4, 5]);
assert.deepStrictEqual(range(-3, 0), [-3, -2, -1, 0]);

assert.deepStrictEqual(range(5, 1, 1), []);
assert.deepStrictEqual(range(0, -1), [0, -1]);
assert.deepStrictEqual(range(0, -3), [0, -1, -2, -3]);
assert.deepStrictEqual(range(5, 1), [5, 4, 3, 2, 1]);
assert.deepStrictEqual(range(10, 1, -2), [10, 8, 6, 4, 2]);

assert.deepStrictEqual(range(5), [1, 2, 3, 4, 5]);
assert.deepStrictEqual(range(0), [0]);
assert.deepStrictEqual(range(0, 0), [0]);
assert.deepStrictEqual(range(2, 1, -5), [2]);
assert.deepStrictEqual(range(0, -1, -5), [0]);
assert.deepStrictEqual(range(-5), [-5, -4, -3, -2, -1]);
assert.deepStrictEqual(
  range(50),
  Array.from({ length: 50 }, (_, i) => i + 1)
);
assert.deepStrictEqual(
  range(1, 150, 3),
  Array.from({ length: 50 }, (_, i) => i * 3 + 1)
);
