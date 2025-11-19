function* gener() {
  const x = yield 'x는?';
  const y = yield `10을 더하면 ${x + 10}입니다. y는?`;
  console.log('🚀 ~ total:', x + y);
  return x + y;
}

const iter = gener();
console.log('🚀 ~ iter:', iter);
const it1 = iter.next();
console.log(it1.value);
const it2 = iter.next(5);
console.log(it2.value);
if (it2.done) console.log('The end!');
const it3 = iter.next(100);
if (it3.done) console.log('The end!');

///
const readline = require('readline');
const { stdin: input, stdout: output } = require('process');

function* add() {
  const x = yield '첫 번째 수는?';
  const y = yield '두 번째 수는?';
  return `Total: ${x + y}`;
}

const rl = readline.createInterface({ input, output });

// rl.question('What do you think of Node.js? ', answer => {
//   console.log(`Thank you for your valuable feedback: ${answer}`);

//   rl.close();
// });

console.log('??????');

rl.on('line', answer => {
  console.log('line.answer>>', answer);
  if (answer === 'bye') rl.close();
}).on('close', () => {
  process.exit();
});
