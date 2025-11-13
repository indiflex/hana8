const assert = require('assert');

assert.equal(loopFibonacci(5), 5);
assert.equal(loopFibonacci(7), 13);
assert.equal(loopFibonacci(30), 832040);
function loopFibonacci(n) {
  const seqs = [0, 1];
  for (let i = 2; i <= n; i++) {
    seqs.push(seqs[i - 2] + seqs[i - 1]);
  }
  return seqs[n];
}

assert.equal(recurFibonacci(5), 5);
assert.equal(recurFibonacci(7), 13);
assert.equal(recurFibonacci(30), 832040);
function recurFibonacci(n) {
  if (n <= 1) return n;
  return recurFibonacci(n - 2) + recurFibonacci(n - 1);
}

const memoFibonacci = memoized(function (n) {
  if (n <= 1) return n;
  return memoFibonacci(n - 2) + memoFibonacci(n - 1);
});
assert.equal(memoFibonacci(5), 5);
assert.equal(memoFibonacci(7), 13);
assert.equal(memoFibonacci(30), 832040);

function memoized(fn) {
  const cache = {};
  return function (n) {
    return cache[n] ?? (cache[n] = fn(n));
  };
}

function runFn(fn) {
  console.time(fn.name || 'memoFibonacci');
  for (let i = 10; i < 1000; i += 10) {
    fn(i);
  }
  console.timeEnd(fn.name || 'memoFibonacci');
}
runFn(loopFibonacci);
runFn(memoFibonacci);
