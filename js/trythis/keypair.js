const assert = require('assert');
const { isDeepStrictEqual } = require('util');

const keyPairOn__2 = (arr, sum) => {
  // const myPairIndex = {};
  for (let i = 0; i < arr.length; i++) {
    for (let j = i + 1; j < arr.length; j++) {
      if (arr[i] + arr[j] === sum) return [i, j];
    }
  }
};
const keyPair = (arr, sum) => {
  const myPairIndex = {};
  for (let i = 0; i < arr.length; i++) {
    const val = arr[i];
    const pairIdx = myPairIndex[val];
    if (pairIdx) return [pairIdx, i];
    myPairIndex[sum - val] = i;
  }
};
assert.deepStrictEqual(keyPair([1, 3, 4, 5], 7), [1, 2]);
assert.deepStrictEqual(keyPair([1, 4, 45, 6, 10, 8], 16), [3, 4]);
assert.deepStrictEqual(keyPair([1, 2, 4, 3, 6], 10), [2, 4]);
const x = keyPair([1, 2, 3, 4, 5, 7], 9);
// console.log(x);
assert.ok(isDeepStrictEqual(x, [3, 4]) || isDeepStrictEqual(x, [1, 5]));
