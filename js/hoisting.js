x = 1;
var x;
f();
function f() {
  console.log('fffff');
}
let y;
y = 9;

var x;

{
  var xx = 0;
}

function fx({ a, b, ...c }) {
  console.log(a, b, c);
}

fx({ a: 1, b: 2, x: 100, y: 200 });

class Dog {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  getName() {
    return this.name;
  }
  getAge() {
    return this.age;
  }
}

const name = 'Hong';

const maxx = new Dog('Maxx', 45);
console.log('🚀 ~ maxx:', maxx);

const { name: namex, age } = maxx;

console.log('🚀 ~ Maxx:', namex, age);
