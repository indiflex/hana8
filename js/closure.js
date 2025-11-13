function discount(dcRate = 0.1) {
  // const dcRate = 0.1;
  return function (price) {
    return price * dcRate;
  };
}

const items = [
  { item: '상품A', price: 32000 },
  { item: '상품B', price: 45000 },
];

const discounter = discount();
const discounter2 = discount(0.2);

for (const { item, price: orgPrice } of items) {
  const salePrice = orgPrice - discounter(orgPrice);
  console.log(`🚀 ${item} salePrice:`, salePrice.toLocaleString());
}

console.log('-----------------------------------');
const actions = ['입장', '입장', '입장', '퇴장', '입장', '퇴장']; // Status Queue

// const { connect, disconnect, getCount } = currentCount();
const [conn, disconn, get] = currentCount();
for (const status of actions) {
  if (status === '입장') conn();
  else disconn();
}

function currentCount() {
  let cnt = 0;
  function connect() {
    cnt++;
  }
  function disconnect() {
    cnt--;
  }

  // return {
  //   connect,
  //   disconnect,
  //   getCount: function getCount() {
  //     return cnt;
  //   },
  // };
  return [
    connect,
    disconnect,
    function () {
      return cnt;
    },
  ];
}
console.log('🚀 ~ cnt:', get());
