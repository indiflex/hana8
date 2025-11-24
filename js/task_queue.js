setImmediate(() => console.log('setImmediate11', new Date()));
setTimeout(() => console.log('setTimeout11', new Date()));
// process.nextTick(() => console.log('nextTick'));
process.nextTick(function () {
  console.log('nextTick11');
});

// i/o polling
const fs = require('fs'); // CJS
fs.readFile('hello.jsx', function F(result) {
  console.log('+++++++++++++++++');
  setTimeout(() => {
    console.log('setTimeout22');
  }, 0);

  setImmediate(() => {
    console.log('setImmediate22');
  });
  process.nextTick(() => console.log('nextTick22'));
});

const f3 = () => x => x ** 2;
// function f33() {
//   return function (x) {
//     return x ** 2
//   }
// }
const f33 = () => {}; // function f3() {}
const fx = x => x ** 2; // function fx(x) { return x ** 2;}
const f44 = () => fx; // function f44() { return fx; }
const f = f3();
