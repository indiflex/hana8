addPoints(0.21354, 0.1); // 0.31354
addPoints(0.14, 0.28); // 0.42
addPoints(0.34, 0.226); // 0.566
addPoints(10.34, 200.226); // 210.566
addPoints(0.143, -10.28); // -10.137
addPoints(0.143, -10); // -9.857

function addPoints(a, b) {
  const alen = pointLength(a);
  const blen = pointLength(b);
  // const ret = alen > blen ? (a + b).toFixed(alen)
  //                         : (a + b).toFixed(blen);
  // const ret = (a + b).toFixed(alen > blen ? alen : blen);
  const ret = (a + b).toFixed(Math.max(alen, blen));
  console.log(a, b, '->', +ret);
}

function pointLength(num) {
  // if (num === undefined || num === null) return 0;
  if (!num) return 0;
  return num.toString().length - Math.trunc(num).toString().length - 1;
}

console.log('------------------------');
const N = 100000000;
avg([
  10.34232323,
  15,
  'xxx',
  5.67899,
  null,
  '20.9',
  1.005121,
  0,
  15.234,
  undefined,
  '0.5',
]);
function avg(prices) {
  let cnt = 0;
  let sum = 0;
  for (const price of prices) {
    cnt++;
    if (price === null || isNaN(price)) continue;
    sum += price * N * 100;
  }

  const ret = Math.trunc(sum / cnt / N) / 100;
  console.log('🚀 ~ ret:', ret);
}
