function f(cb, delay) {
  console.log('connecting....');
  setTimeout(cb);
  // cb();
}

function query(sql, cb) {
  try {
    console.log('run:', sql);
    throw new Error('Error!!');
    const result = [{ id: 1 }];
    cb(null, result);
  } catch (err) {
    cb(err);
  } finally {
    console.log('close!');
  }
}

const ff = delay =>
  new Promise((resolve, reject) => {
    console.log('connecting....');
    // setTimeout(() => resolve(), delay);
    setTimeout(() => reject(new Error('RRR')), delay);
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
console.log('----------');
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
