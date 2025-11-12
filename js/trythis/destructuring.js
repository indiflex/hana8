const hong = { id: 1, name: 'Hong' };
const lee = { id: 2, name: 'Lee' };
f1(hong);
f2(hong); //  ⇒ 1, 'Hong'
f1(lee);
f2(lee); // ⇒ 2, 'Lee'

function f1(user) {
  const { id, name } = user;
  console.log(id, name);
}
function f2({ id, name }) {
  console.log(id, name);
}

console.log('-------------------------');
const arr = [[{ id: 1 }], [{ id: 2 }, { id: 3 }]];
//cf. const id1 = arr[0][0].id; // Bad
const [[{ id: id1 }], [{ id: id2 }, { id: id3 }]] = arr;
console.log(id1, id2, id3);
// 출력결과: 1 2 3

console.log('-------------------------');
const user = { name: 'Hong', passwd: 'xyz', addr: 'Seoul' };
function getUserValueExceptInitial(k) {
  const { [k]: val } = user; // user[k] vs user.k
  const [, ...rest] = val;
  return rest.join('');
}
console.log(getUserValueExceptInitial('name')); // 'ong'
console.log(getUserValueExceptInitial('passwd')); // 'yz'
console.log(getUserValueExceptInitial('addr')); // 'eoul'
console.log('-------------------------');

const ar = [1, 2];
[ar[0], ar[1]] = [ar[1], ar[0]];
console.log(ar);
// 출력결과: [2, 1]
