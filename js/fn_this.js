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

// expressFn('expfn');
// arrowFn(afn');

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
