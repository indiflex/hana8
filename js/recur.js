function sum100() {
  let sum = 0;
  for (let i = 1; i <= 100; i++) sum += i;
  return sum;
}

console.log('sum100>>', sum100());

function sum100recur(n = 1) {
  if (n === 100) return n;

  return n + sum100recur(n + 1);
  //     1 + 2 + 3 + 4 + ... + 99 + 100
}
console.log('sum100recur>>', sum100recur());

function factorial(n) {
  let ret = 1;
  while (n > 1) {
    ret *= n;
    n--;
  }
  return ret;
}
console.log('🚀 ~ factorial:', factorial(5));

function factorialRecur(n) {
  if (n === 1) return 1;
  return n * factorialRecur(n - 1);
  // 5 * 4 * 3 * 2 * 1
}
console.log('🚀 ~ factorialRecur:', factorialRecur(5));

function factorialTCO(n, acc = 1) {
  if (n === 1) return acc;
  return factorialTCO(n - 1, acc * n);
  // f(5, 1) --> f(4, 5) --> f(3, 5 * 4) --> f(2, 5 * 4 * 3)
}
console.log('🚀 ~ factorialTCO:', factorialTCO(5));
