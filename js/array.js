const hong = { id: 1, name: 'Hong' };
const kim = { id: 2, name: 'Kim' };
const lee = { id: 3, name: 'Lee' };
const park = { id: 4, name: 'Park' };
const users = [hong, kim, lee, park];

const find3 = a => a.id === 3;
const idxId2 = users.findIndex(find3);

// Try this: id가 전달 된 pid인 user를 반환하는 findId 함수를 작성하시오.
const findIdx = pid => () =>
  users.find(user => {
    console.log(pid, user, user.id === pid);
    return user.id === pid;
  });
// const user1 = findId(1);
// console.log(user1, user1());
// const idxId11 = users.findLastIndex(findId(1));
// const idxId11 = users.findLastIndex(user => user.id === 1);
// const findId = pid => user => user.id === pid;
const findId =
  pid =>
  ({ id }) =>
    id === pid;
const idxId11 = users.findLastIndex(findId(1));
// const idxId11 = users.findLastIndex(a => a.id === 1);
// console.log(users);
console.log('🚀  idxId11:', idxId11);

//              0  1  2  3  4
// const arr = [1, 2, 3, 4, 5];
const arr = Array.from({ length: 5 }, (_, i) => i + 1);

const isEven = n => n % 2 === 0;
const ev1 = arr.map((_, i) => isEven(i));
console.log('🚀 ~ ev1:', ev1);
// const ev2 = arr.map(a => isEven(a));
const ev2 = arr.map(isEven);
console.log('🚀 ~ ev2:', ev2);
// const onlyEvens = arr.filter(a => a % 2 === 0);
const onlyEvens = arr.filter(isEven);
console.log('🚀 ~ onlyEvens:', onlyEvens);
arr.forEach(a => console.log(a, isEven(a)));
for (let i = 0; i < arr.length; i++) console.log(arr[i], isEven(arr[i]));
for (const a of arr) {
  console.log(a, isEven(a));
  if (a === 3) break;
}
const arr2 = [...arr];
console.log('🚀 ~ arr2:', arr2 === arr);
const arr3 = arr2.concat(arr);
console.log('🚀 ~ arr3:', arr3);
const arr4 = [...arr2, ...arr];
console.log('🚀 ~ arr4:', arr4);

const a3 = arr.find(a => a === 3);
console.log('🚀 ~ a3:', a3);
const evenOdds = Object.groupBy(arr, a => (isEven(a) ? 'even' : 'odd'));
console.log('🚀 ~ evenOdds:', evenOdds);
// const jarr = arr.join(', ');
const jarr = arr.join('');
console.log('🚀 ~ jarr:', jarr);

//         0  1  2  3  4  5  6
const a = [1, 2, 3, 4, 5, 6, 7];
//               3, 4,
//        [1, 2, 3, 4, 3, 4, 7];
a.copyWithin(4, 2, 4);
console.log('🚀 ~ a:', a);
a.push('02', '01', '03', 'a', 'c', '나', 'b', 'ba', '다');
let b = a;
const s1 = b.sort();
console.log('🚀 ~ s1:', s1);
b = a;
const s2 = b.sort((a, b) => a - b);
console.log('🚀 ~ s2:', s2);
b = a;
const s3 = b.sort((a, b) => (a < b ? -1 : 1));
console.log('🚀 ~ s3:', s3);
b = a;
const s4 = b.sort((a, b) => (a < b ? 1 : -1));
console.log('🚀 ~ s4:', s4);

[users[1], users[2]] = [users[2], users[1]];
console.log(users);
// const us1 = users.sort((a, b) => a.id - b.id);
const us1 = users.sort(({ id }, { id: id2 }) => id - id2);
console.log('🚀 ~ us1:', us1);
console.log('------------', arr2);
const shallow = arr2.slice();
console.log('🚀 ~ shallow:', shallow);
const shallow2 = [...arr2];
console.log('🚀 ~ shallow2:', shallow2);
console.log('------------', arr2);
//   0, 1, 2, 3, 4
// [ 1, 2, 3, 4, 5 ]
const sp1 = arr2.splice(1, 3);
console.log('🚀 ~ sp1:', sp1, arr2);
// [1, 5]
// arr2.splice(1, 0, 2, 3, 4);
arr2.splice(1, 0, ...sp1);
console.log('🚀 ~ arr2:', arr2);
const sp2 = arr2.splice(2);
console.log('🚀 ~ arr2:', arr2);
arr2.splice(2, 0, ...sp2);
console.log('🚀 ~ arr2:', arr2);
