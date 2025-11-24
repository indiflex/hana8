// ⇔ function declareFn(name) {
const expressFn = function (name) {
  // if, 'use strict' ?
  this.name = name;
  console.log(this, new.target, this.name, name);
};

const arrowFn = name => {
  this.name = name;
  console.log(this, new.target, this.name, name);
};

const hong = { id: 1, name: 'Hong' };
const kim = { id: 2, name: 'Kim' };

// expressFn.apply(hong, ['expfn']);
// arrowFn.call(kim, 'afn');

// const dfn = new expressFn('D');
// const afn = new arrowFn('A'); // error!
const Dog = function (name) {
  // console.log(this, new.target, this instanceof Dog);
  this.name = name;
  this.bark = function () {
    console.log('bark=', new.target, this.name, name);
  };
  this.bark2 = () => console.log('bark2=', new.target, this.name, name);
};

const dog = Dog('Doggy');
const lucy = new Dog('Lucy');
// console.log('lucy>>', lucy instanceof Dog, lucy);
// Dog.bark(); // ?
// lucy.bark(); // ?
// lucy.bark2(); // ?
// console.log('type=', typeof dog); // ?
// console.log('type=', typeof lucy); // ?

this.x = 'module';
const Cat = name => {
  console.log('Cat>>', this, new.target);
  this.name = name;

  this.bark = function () {
    console.log('bark=', new.target, this.name, name);
  };

  this.bark2 = () => console.log('bark2=', this.name, name);

  return this;
};

const cat = Cat('Coco');
// console.log(this === cat);
// const cat = new Cat(''); // error!!
cat.bark(); // ?
cat.bark2(); // ?
// Cat.bark(); // ?
console.log('type=', typeof cat); // ?

// cf. FunctionEnvironmentRecord.[[ThisValue]]
// constructor
class Man {
  constructor(id, name) {
    this.id = id;
    this.name = name;
  }

  getUserInfo() {}
}

// const m1 = Man();
const m2 = new Man();

// factory function
function createUser(id, name) {
  return {
    id: id,
    name: name,
    getUserInfo() {
      return `${this.id}. ${this.name}`;
    },
  };
}

const lee = createUser(3, 'Lee');
console.log('lee>>', lee.getUserInfo());
const park = createUser(4, 'Park');
console.log('park>>', park.getUserInfo());
console.log('-------------------------');
globalThis.name = 'Global Name';

let obj = {
  name: 'Obj Name',
  printName() {
    console.log(this.name);
  },
};

const printName = obj.printName; // <f.o> address
obj = null;
printName();
// obj.printName(); // Obj Name

console.log('-------------------------');
const dogx = {
  name: 'Maxx',
  showMyName() {
    console.log(`My name is ${this.name}.`);
  },
  whatsYourName() {
    // setTimeout(this.showMyName, 1000);
    // setTimeout(showMyName.bind(this), 1000);
    // var self = this;
    // setTimeout(function() {
    //   self.showMyName();
    // }, 1000);
    // setTimeout(() => this.showMyName(), 1000);
  },
};

dogx.whatsYourName();
console.log('++++++++++++++++');
for (var i = 0; i < 5; i += 1) {
  // setTimeout(console.log, 100, i); // (나)
  // setTimeout(a => console.log(i), 100);
}

console.log('========================');
// function debounce() {}
const debounce = (cb, delay) => {
  let timer;
  return function (...args) {
    if (timer) {
      clearTimeout(timer);
    }
    timer = setTimeout(cb.bind(this), delay, ...args);
  };
};
const f = function (a, b) {
  console.log('f>>', new Date(), a + b, this.x);
};

const throttle = (cb, delay) => {
  let timer;
  return function (...args) {
    if (timer) return;
    timer = setTimeout(() => {
      cb.call(this, ...args);
      // cb.apply(this, args);
      timer = undefined;
    }, delay);
  };
};

// const search = debounce(f, 200);
const search = throttle(f, 200);
let cnt = 0;
const intl = setInterval(() => {
  console.log('intl', cnt, new Date());
  if (++cnt > 10) clearInterval(intl);
  search.bind({ x: 999 })(1, 2);
}, 100);
