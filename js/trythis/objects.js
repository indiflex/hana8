const assert = require('assert');

const user = { id: 1, name: 'Hong' };
Object.defineProperty(user, 'age', {
  // get: function () { return this.x; },
  get() {
    return this.x;
  },
  set(age) {
    this.x = age;
  },
});
user.age = 33;
console.log(user, user.age);
const n = 9.23;
Object.defineProperties(Number.prototype, {
  length: {
    get() {
      return this.toString().length;
    },
  },
  point: {
    get() {
      const plen =
        this.toString().length - Math.trunc(this).toString().length - 1;
      return +(this % 1).toFixed(plen);
    },
    // set(val) {
    //   console.log('🚀 ~ val:', val, this.toFixed(val));
    //   this = +this.toFixed(val);
    // },
  },
});
Object.defineProperty(Number.prototype, 'setPoint', {
  value: function (value) {
    return Number(this.toFixed(value));
  },
});
Number.prototype.setPoint2 = function (val) {
  return Number(this.toFixed(val));
};
console.log('nn>>', n.length);
n.point = 1;
console.log('pp>>', n.point, n.setPoint(1), n.setPoint2(1));
console.log('-----------------------');

const arr = [100, 200, 300, 400, 500, 600, 700];
for (const k in arr) {
  console.log(k, arr[k]);
}
console.log('-----------------------');

const obj = { name: 'Kim', addr: 'Seoul', level: 1, role: 9, receive: false };
for (const k in obj) {
  console.log(k, ':', obj[k]);
}
// for (const val of Object.values(obj)) console.log('🚀 ~ val:', val);
console.log('- - - - - - - - - - -');
Object.defineProperty(obj, 'level', { enumerable: false });
for (const [k, v] of Object.entries(obj)) {
  console.log(k, ':', v);
}
console.log('obj.level=', obj.level);
Object.freeze(obj, 'role');
// console.log(Object.getOwnPropertyDescriptors(obj));

console.log('=========================');
const data = [
  ['A', 10, 20],
  ['B', 30, 40],
  ['C', 50, 60, 70],
];
function makeObjectFromArray(arr) {
  const ret = {};
  for (const [k, ...v] of arr) {
    ret[k] = v;
  }
  return ret;
}
const newObj = makeObjectFromArray(data);
assert.deepStrictEqual(newObj, {
  A: [10, 20],
  B: [30, 40],
  C: [50, 60, 70],
});

function makeArrayFromObject(obj) {
  const arr = [];
  for (const [k, v] of Object.entries(obj)) {
    arr.push([k, ...v]);
  }
  return arr;
}
const x2 = makeArrayFromObject(newObj);
assert.deepStrictEqual(x2, data);
