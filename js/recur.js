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

const ma10 = makeArray(10);
console.log('🚀 ~ ma10:', ma10);
// ⇒ [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

function makeArray(n) {
  if (n === 1) return [1];
  // return [...makeArray(n - 1), n]; // asc
  return [n, ...makeArray(n - 1)];
  // [10] --> [9, 10] --> [8, 9, 10]
}

function makeArrayLoop(n) {
  const arr = [];
  for (let i = n; i > 0; i--) {
    arr.push(i);
  }
  return arr;
  // if (n === 1) return 1;
  // return [10];
  // [10] -->
}

// return Array.from({ length: n }, (_, i) => i + 1);
// cf. 위 makeArray를 TCO로 작성하시오.
const maTCO = makeArrayTCO(10);
console.log('🚀 ~ maTCO:', maTCO);
function makeArrayTCO(n, acc = []) {
  if (n === 1) return [1, ...acc];
  return makeArrayTCO(n - 1, [n, ...acc]);
  // [10] --> [9, ...[10]] --> [8, ...[9, 10]]
  // makeArrayTCO(2, [3])
  // makeArrayTCO(1, [2, ...[3]])
}
