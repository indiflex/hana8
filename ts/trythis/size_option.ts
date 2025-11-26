const SIZE = [
  { id: 'XS', price: 8000 },
  { id: 'S', price: 10000 },
  { id: 'M', price: 12000 },
  { id: 'L', price: 14000 },
  { id: 'XL', price: 15000 },
];

const sizeOption1 = { XS: 1, S: 5, M: 2, L: 2, XL: 4 };
const totalPrice1 = SIZE.reduce(
  (currPrice, size) => currPrice + sizeOption1[size.id] * size.price,
  0
);
console.log('🚀 ~ totalPrice1:', totalPrice1);

const sizeOption2 = { XS: 2, S: 3, MM: 4, L: 5, XL: 6 };
const totalPrice2 = SIZE.reduce(
  (currPrice, size) => currPrice + sizeOption2[size.id] * size.price,
  0
);
console.log('🚀 ~ totalPrice2:', totalPrice2);
