const assert = require('assert');
const arr = [1, 2, 3, 4, 5];
const hong = { id: 1, name: 'Hing' };
const kim = { id: 2, name: 'Kim' };
const lee = { id: 3, name: 'Lee' };
const users = [hong, lee, kim];
Object.defineProperties(Array.prototype, {
  firstObject: {
    get() {
      return this[0];
    },
    set(val) {
      this[0] = val;
    },
  },
  lastObject: {
    get() {
      // return this.at(-1)
      return this[this.length - 1];
    },
    set(val) {
      this[this.length - 1] = val;
    },
  },
});
assert.deepStrictEqual([arr.firstObject, arr.lastObject], [1, 5]);

Array.prototype.mapBy = function (prop) {
  return this.map(a => a[prop]);
};
assert.deepStrictEqual(users.mapBy('id'), [1, 3, 2]); // users.map(u => u['id'])
assert.deepStrictEqual(users.mapBy('name'), ['Hing', 'Lee', 'Kim']);

Array.prototype.filterBy = function (prop, value, isIncludes = false) {
  const cb = isIncludes
    ? a => a[prop]?.includes(value)
    : a => a[prop] === value;

  return this.filter(cb);
};
assert.deepStrictEqual(users.filterBy('id', 2), [kim]);
assert.deepStrictEqual(users.filterBy('name', 'i', true), [hong, kim]); // key, value일부, isInclude
Array.prototype.rejectBy = function (prop, value, isIncludes = false) {
  const cb = isIncludes
    ? a => !a[prop]?.includes(value)
    : a => a[prop] !== value;

  return this.filter(cb);
};
assert.deepStrictEqual(users.rejectBy('id', 2), [hong, lee]);
assert.deepStrictEqual(users.rejectBy('name', 'i', true), [lee]);

Array.prototype.findBy = function (prop, value) {
  return this.find(a => a[prop] === value);
};
assert.deepStrictEqual(users.findBy('name', 'Kim'), kim);

Array.prototype.sortBy = function (prop_asc) {
  const [prop, order = 'asc'] = prop_asc.split(':');
  const dir = order === 'asc' ? 1 : -1;
  return this.sort((a, b) => (a[prop] > b[prop] ? dir : -dir));
};
assert.deepStrictEqual(users.sortBy('name:desc'), [lee, kim, hong]);
assert.deepStrictEqual(users.sortBy('name'), [hong, kim, lee]);
assert.deepStrictEqual(users.firstObject, hong);
assert.deepStrictEqual(users.lastObject, lee);
users.firstObject = kim;
assert.deepStrictEqual(users.firstObject, kim);
users.lastObject = hong;
assert.deepStrictEqual(users.lastObject, hong);

//---------------------
class Dog {
  constructor(name) {
    this.name = name;
  }

  getName() {
    return this.name;
  }

  fn() {
    return 'FN';
  }

  static sfn() {
    // Dog.sfn
    return 'SFN';
  }
}
const lucy = new Dog('Lucy');
const { sfn } = Dog;
const { fn } = Dog.prototype;
const { name: aa, fn: fnnn, getName } = lucy;

console.log(aa, sfn(), fnnn(), getName); // ?
console.log(getName.bind(lucy)()); // ?
console.log(getName.call(lucy)); // ?
