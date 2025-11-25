const myName: string = 'Kim';
console.log('🚀 Hi~', myName);

let x: string | undefined;
x = Math.random() > 0.5 ? 'abc' : undefined;
console.log(x?.length);

type FN = (input: string | number) => number;
const ff: FN = (i: string | number) => {
  return +i * 100;
};
ff(1);

const f2 = (i: string | number | boolean) => +i + 1;
const f4 = (i: string) => +i + 1;
// cb = f2
// cb = f4
function f(cb: FN) {
  cb(y);
  cb('1');
}
f(f2);
f(f4);
