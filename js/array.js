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
