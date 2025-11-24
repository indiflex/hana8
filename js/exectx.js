var x = 1;

function f1() {
  console.log(x, this.y, z, arguments); // static: 1, dynamic: 2
  eval('console.log(123, x)');
  // [[OuterEnv]]

  // const ff = function () {this }

  function f1_inner() {
    // dsfdsf this
    // [[OuterEnv]]: f1
  }
}

function f2() {
  var x = 2;
  console.log('🚀 ~ f2:', x, new.target);
  this.y = 999;
  const bf1 = f1.bind({ y: 100 });
  bf1(1, 2);
  f1.call({ y: 100 }, 1, 2);
  f1.apply({ y: 100 }, [1, 2]);
}
global.z = 555; // globalThis.z = 555;
let cnt = 0;

const f3 = function () {
  cnt++;
};

f2();
console.log(' - - - - - ');
new f2();
f3();
console.log(' - - - - - ');
f1();
