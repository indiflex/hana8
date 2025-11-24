const { useEffect } = require('react');

const gate1counter = (function () {
  let count = 0;
  return function () {
    return ++count;
  };
})(); // IIFE

// const gate1counter = counter();
console.log('🚀 ~ gate1counter:', gate1counter());
console.log('🚀 ~ gate1counter:', gate1counter());
console.log('🚀 ~ gate1counter:', gate1counter());

let data;
(async function af() {
  const data = await fetch('https://jsonplaceholder.typicode.com/todos/1').then(
    res => res.json()
  );
  // console.log('🚀 ~ data:', data);
  return data;
})().then(data => console.log('🚀 ~ data:', data));

for (let i = 0; i < 10; i++) {
  setTimeout(
    function (n) {
      console.log('xxxxxx', i, n);
    },
    1000,
    i
  );
}

const intl = setInterval(
  function (n) {
    console.log('interval', n);
  },
  1000,
  100
);

setTimeout(() => clearInterval(intl), 5000);
