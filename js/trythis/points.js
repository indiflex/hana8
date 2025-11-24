function p32() {
  for (let i = 0.1; i < 1; i = i + 0.1) {
    console.log(+i.toFixed(1));
  }
}

function sqrt3() {
  for (let i = 1; i <= 10; i++) {
    const s = Math.sqrt(i);
    if (s % 1 === 0) continue;

    console.log(i, +s.toFixed(3));
  }
}
sqrt3();
