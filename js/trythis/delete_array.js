const assert = require('assert');

const deleteArray1 = (array, startOrKey, endOrValue) => {
  if (typeof startOrKey === 'number') {
    return array.filter((_, i) => i < startOrKey || i >= endOrValue);
  }

  return array.filter(a => a[startOrKey] !== endOrValue);
};
const deleteArray2 = (array, startOrKey, endOrValue) => {
  let fn;
  if (typeof startOrKey === 'number')
    fn = (_, i) => i < startOrKey || i >= endOrValue;
  else fn = a => a[startOrKey] !== endOrValue;

  return array.filter(fn);
};
const deleteArray3 = (array, startOrKey, endOrValue) =>
  array.filter(
    typeof startOrKey === 'number'
      ? (_, i) => i < startOrKey || i >= endOrValue
      : a => a[startOrKey] !== endOrValue
  );

const deleteArray = (array, startOrKey, endOrValue = array.length) =>
  array.filter(
    typeof startOrKey === 'number'
      ? (_, i) =>
          i < Math.min(startOrKey, endOrValue) ||
          i >= Math.max(startOrKey, endOrValue)
      : a => a[startOrKey] !== endOrValue
  );

//           0  1  2  3
const arr = [1, 2, 3, 4];
assert.deepStrictEqual(deleteArray(arr, 2), [1, 2]); // 2부터 끝까지 지우고 나머지 리턴
assert.deepStrictEqual(deleteArray(arr, 1, 3), [1, 4]); // 1부터 3미만까지 지우고 나머지 리턴
assert.deepStrictEqual(deleteArray(arr, 3, 1), [1, 4]); // 1부터 3미만까지 지우고 나머지 리턴
assert.deepStrictEqual(arr, [1, 2, 3, 4]);
// cf. 만약 startIndex가 endIndex 보다 크다면??!

const Hong = { id: 1, name: 'Hong' };
const Kim = { id: 2, name: 'Kim' };
const Lee = { id: 3, name: 'Lee' };
const users1 = [Hong, Kim, Lee];

assert.deepStrictEqual(deleteArray(users1, 2), [Hong, Kim]);
assert.deepStrictEqual(deleteArray(users1, 1, 2), [Hong, Lee]);
assert.deepStrictEqual(deleteArray(users1, 'id', 2), [Hong, Lee]);
assert.deepStrictEqual(deleteArray(users1, 'name', 'Lee'), [Hong, Kim]);

console.log('arr>>', arr);
arr.push(true);
arr.push(null);
// const ret1 = arr.map(a => a?.toString());
// const ret1 = arr.map(a => String(a));
const ret1 = arr.map(String);
assert.deepStrictEqual(ret1, ['1', '2', '3', '4', 'true', 'null']);

// ------------------------
const classNames = (...args) =>
  args
    .map(a => a.trim())
    .filter(Boolean)
    .join(' ');
const ret2 = classNames('', 'a b c', ' ', 'd', ' xyz ', 'e');
assert.strictEqual(ret2, 'a b c d xyz e');

console.log('-------------------');
const hong = { id: 1, name: 'Hong' };
const choi = { id: 5, name: 'Choi' };
const kim = { id: 2, name: 'kim' };
const lee = { id: 3, name: 'Lee' };
const park = { id: 4, name: 'Park' };
const users = [kim, lee, park]; // 오염되면 안됨!!

console.log('****>>', Array.prototype === users.__proto__);
// users.__proto__.addUser = function (newer) {
users.addUser = function (newer) {
  return [...this, newer];
};
// users.removeUser = function (toDel) {
users.removeUser = function ({ id: toDelId }) {
  return this.filter(({ id }) => id !== toDelId);
};
users.changeUser = function (from, to) {
  return this.map(user => (user.id === from.id ? to : user));
};
// console.log(
//   'users-functions>>',
//   users.filter(u => {
//     console.log(u, typeof u);
//     return typeof u === 'function';
//   })
// );
// users.push(hong);
// console.log('users>>', Object.keys(users));
Object.keys(users)
  .filter(isNaN)
  .forEach(fname => Object.defineProperty(users, fname, { enumerable: false }));

// Object.defineProperty(users, 'addUser', {
//   enumerable: false,
// });
// Object.defineProperty(users, 'removeUser', {
//   enumerable: false,
// });

assert.deepStrictEqual(users.addUser(hong), [kim, lee, park, hong]);
assert.deepStrictEqual(users, [kim, lee, park]);

assert.deepStrictEqual(users.removeUser(lee), [kim, park]);
assert.deepStrictEqual(users, [kim, lee, park]);

// console.log('users!>>', users);
assert.deepStrictEqual(users.changeUser(kim, choi), [choi, lee, park]);
// assert.deepStrictEqual(users, [kim, lee, park]);
