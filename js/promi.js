function f(cb, delay) {
  console.log('connecting....');
  setTimeout(cb);
  // cb();
}

function query(sql, cb) {
  try {
    console.log('run:', sql);
    // throw new Error('Error!!');
    const result = [{ id: 1 }];
    cb(null, result);
  } catch (err) {
    cb(err);
  } finally {
    console.log('close!');
  }
}
function queryPromise(sql) {
  return new Promise((resolve, reject) => {
    try {
      console.log('run:', sql);
      const result = [{ id: 1 }];
      resolve(result);
    } catch (err) {
      reject(err);
    } finally {
      console.log('close!');
    }
  });
}

// class Promise {
//   #thenFns = [];
//   #catchFns = [];
//   #finallyFns = [];
//   constructor(cb) {
//     cb(this.resolve, this.reject);
//   }
//   resolve(ret) {
//     let r = ret;
//     for (const fn of this.#thenFns) {
//       try {
//         r = fn(r);
//       } ct
//     }
//     this.#finallyFns...
//   }
//   reject(err) {
//     this.#catchFns(err);
//   }

//   then(cb) {
//     this.#thenFns.push(cb);
//   }
//   catch(cb) {
//     this.#catchFns.push(cb);
//   }
// }
const ff = delay =>
  new Promise((resolve, reject) => {
    console.log('connecting....');
    setTimeout(() => resolve(111), delay);
    // setTimeout(() => reject(new Error('RRR')), delay);
  });

// task-queue
f(
  () =>
    query('select * from User', (err, res) => {
      if (err) {
        console.error(err.message);
        return;
      }

      console.log('success:', res);
    }),
  1000
);
Promise.allSettled([queryPromise('selec1'), queryPromise('select2')]).then(
  ([r1, r2]) => console.log('🚀 ~ r>>>', r1, r2)
);

console.log('----------11');
ff()
  .then(() => queryPromise('update User..'))
  .then(result => console.log('result:', result))
  .then(() => console.log('*************'))
  .catch(err => console.error(err.message))
  .catch(console.error)
  .finally(() => console.log('Finally!!!!!!!!'));
console.log('----------22');
const conn = await ff();
try {
  const result = await queryPromise('upaaa...');
  console.log('🚀 ~ result:', result);
} catch (err) {
  console.log(err.message);
}
console.log('----------33');
f(() => {
  console.log('yyyyyyy11');
}, 2000);
ff(1000)
  .then(() => {
    console.log('yyyyyyy22');
    return '999';
  })
  .then(console.log)
  .catch(console.error);
console.log('----------');

// micro-task-queue
Promise.resolve().then(() => console.log('zzzzzzzz'));

const sampleUrl = 'https://jsonplaceholder.typicode.com/users/1';

// const fetch = new Promise((res, rej) => ...)
const response = fetch(sampleUrl)
  .then(res => res.json())
  .then(res => console.log('%%%>>', res));
console.log('🚀 ~ response:', response);

const r1 = await fetch(sampleUrl);
const rrr = await r1.json();
console.log('🚀 ~ rrr:', rrr);
