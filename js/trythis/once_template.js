const once = (f, rebirthDelay = 1000) => {
  let done = false;
  return (...args) => {
    if (done) return;
    done = true;
    setTimeout(() => (done = false), rebirthDelay);
    return f(...args);
  };
};
const fn = once((x, y) => `금일 운행금지 차량은 끝번호 ${x}, ${y}입니다!`);
console.log(fn(1, 6)); // 금일 운행금지 차량은 끝번호 1, 6입니다!
console.log(fn(2, 7)); // undefined
console.log(fn(3, 8)); // undefined

// let cnt = 0;
// const intl = setInterval(() => console.log(cnt++, fn(cnt, -cnt)), 200);

console.log('--------------------');
const before = () => console.log('before....');
const after = result => console.log('after...', result);

const someFn = (name, greeting) => `${greeting}, ${name}`;
const someFn2 = (id, nickname, email, level) =>
  `${id}/${nickname}/${email}/${level}`;

const template =
  f =>
  (...args) => {
    before();
    const ret = f(...args);
    setImmediate(after, ret);
    return ret;
    // after();
    // return ret;
  };

const temp = template(someFn); // before → someFn → after 실행
const temp2 = template(someFn2); // before → someFn2 → after 실행

console.log('temp1>>', temp('sico', 'hello'));
console.log('temp2>>', temp2(1, 'sico', 'sico@gmail.com', 5));

console.log('+++++++++++++++++++++++');
const weeks = ['일', '월', '화', '수', '목', '금', '토'];
const getNextWeek = (() => {
  let widx = -1;
  return () => {
    widx += 1; // side-effect!
    if (widx >= weeks.length) widx = 0;
    return `${weeks[widx]}요일`;
  };
})();

let cnt = 0;
const intl = setInterval(() => {
  // widx += 2; // side-effect!
  console.log('call', cnt, getNextWeek());
  if ((cnt += 1) === 8) clearInterval(intl);
}, 200);
