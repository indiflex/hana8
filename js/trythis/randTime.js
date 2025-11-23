const randTime = val =>
  new Promise(resolve => {
    setTimeout(resolve, 1000 * Math.random(), val);
  });
console.log(new Date());
randTime(100).then(res => console.log(res, new Date()));
[1, 2, 3, 4, 5].forEach(a =>
  randTime(a).then(res => console.log(res, new Date()))
);

const depthTimer = sec =>
  new Promise((resolve, reject) => {
    console.log(`depth${sec}`, new Date());
    setTimeout(() => {
      if (sec >= 3) reject(new Error('Already 3-depth!!'));
      else resolve(sec + 1);
    }, sec * 1000);
  });
depthTimer(1).then(depthTimer).then(depthTimer).catch(console.error);
