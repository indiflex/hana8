const holiday = '한글날';
const month = 10;
const day = 9;

console.log(`${holiday}은 ${month}월 ${day}일입니다.`);
// 한글날은 10월 9일입니다.
f`${holiday}은 ${month}월 ${day}일입니다.`;

function f(txts, ...args) {
  const [a, b, c] = args;
  console.log('txts>>', txts);
  console.log('a>>', a);
  console.log('b>>', b);
  console.log('c>>', c);
}
console.log('---------------');
for (let i = 0; i < 100; i++) {
  const x = String.fromCharCode(i);
  console.log(i, '->', x); // A-z
  console.log(`BTS${String.fromCharCode(0)}`);
}

// `${compName}은/는 `

// for (let i = '가'.charCodeAt(); i < '힣'.charCodeAt(); i++)
for (let i = '가'.charCodeAt(); i <= '깋'.charCodeAt(); i++)
  console.log(i, String.fromCharCode(i), (i - 16) % 28);

const str = 'Senior Coding Learning JS';
