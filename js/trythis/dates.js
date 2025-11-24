// 1970년 1월 1일과 1970년 1월 2일의 차이를 초로 나타내시오.
// 21:23:34.99       년   월  일  시 분 초 ms
const d1 = new Date(1970, 0, 1, 0, 0, 0, 0);
const d2 = new Date(1970, 0, 2);
console.log('🚀 ~ diff:', (d2 - d1) / 1000);
console.log('🚀 ~ diff:', (d2.getTime() - d1.getTime()) / 1000);

// 이 달의 날짜 5개를 무작위로 만들어 역순으로 출력하시오.
const d3 = new Date();
d3.setMonth(d3.getMonth() + 1);
d3.setDate(0);
const lastday = d3.getDate();
console.log('🚀 ~ lastday:', lastday);
const rand = (s, e) => s + Math.floor((e - s + 1) * Math.random());
// const dates = Array.from({ length: 5 }, _ => rand(1, lastday));
const dates = [];
do {
  const r = rand(1, lastday);
  if (!dates.includes(r)) dates.push(r);
} while (dates.length < 5);
dates.sort((a, b) => (a > b ? 1 : -1)).reverse();
console.log('🚀 ~ dates:', dates);
const ym = `${d3.getFullYear()}-${d3.getMonth() + 1}`;
dates.forEach(d => console.log(`${ym}-${d.toString().padStart(2, '0')}`));

// 내년(2026년) 오늘의 요일을 출력하시오.
const d4 = new Date();
d4.setFullYear(d4.getFullYear() + 1);
const fmtWeek = new Intl.DateTimeFormat('ko-KR', {
  weekday: 'long',
});
console.log('Next Year:', fmtWeek.format(d4));

// 오늘로 부터 100일 후의 날짜는?
const fmtFull = new Intl.DateTimeFormat('ko-KR', {
  year: 'numeric',
  month: '2-digit',
  day: '2-digit',
  weekday: 'long',
});

const d5 = new Date();
d5.setDate(d5.getDate() + 100);
console.log('After 100:', fmtFull.format(d5));
