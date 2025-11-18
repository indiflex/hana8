const assert = require('assert');
const arr = [1, 2, 3, 4];
const push = (array, ...args) => [...array, ...args];
const pop = (array, cnt = 1) => {
  if (cnt <= 0) return array;
  return cnt === 1 ? array.at(-1) : array.slice(-cnt);
};
assert.deepStrictEqual(push(arr, 5, 6), [1, 2, 3, 4, 5, 6]);
assert.deepStrictEqual(pop(arr), 4);
assert.deepStrictEqual(pop(arr, 2), [3, 4]); // 2개 팝!

const unshift = (array, ...args) => [...args, ...array];
assert.deepStrictEqual(unshift(arr, 0), [0, 1, 2, 3, 4]);
assert.deepStrictEqual(unshift(arr, 7, 8), [7, 8, 1, 2, 3, 4]);

//  0  1  2  3  4
// [1, 2, 3, 4, 5]
const shift = (array, cnt = 1) => [array.slice(0, cnt), array.slice(cnt)];
// const [, left] = shift(arr, 2);
// [ [shift되는 원소들], [남은 원소들] ]
assert.deepStrictEqual(shift(arr), [[1], [2, 3, 4]]);
assert.deepStrictEqual(shift(arr, 2), [
  [1, 2],
  [3, 4],
]); // 2개 shift
assert.deepStrictEqual(arr, [1, 2, 3, 4]);
