'use strict';
// NaN = 9;
console.log('🚀 ~ NaN:', NaN);
function f() {
  console.log('fffff');
}
// delete f;
f();

console.log(this);

function Component() {
  function f1() {}
  const f2 = () => {};
}
