const assert = require('assert');

const upperToLower = str =>
  str.replace(/[A-Z]/g, matchedStr => `*${matchedStr.toLowerCase()}*-`);

assert.strictEqual(
  upperToLower('Senior Coding Learning JS'),
  '*s*-enior *c*-oding *l*-earning *j*-*s*-'
);

const swapCase = str =>
  str.replace(
    /([A-Z])([a-z]*)/g,
    (_, up, low) => `${up.toLowerCase()}${low.toUpperCase()}`
  );
assert.equal(
  swapCase('Senior Coding Learning JS'),
  'sENIOR cODING lEARNING js'
);
assert.equal(swapCase('Hanaro 8 Class'), 'hANARO 8 cLASS');

const telfmt = tel => {
  const len = tel?.length;
  if (!len || len < 5) return tel;

  if (len <= 8) return `${tel.substring(0, len - 4)}-${tel.substring(len - 4)}`;

  const n = tel.startsWith('02') ? 2 : 3;
  const e = len > 11 ? len - 11 : 0;
  const regex = new RegExp(`(\\d{${n + e}})(\\d{3,4})(\\d{4})`);
  return tel.replace(regex, '$1-$2-$3');
};

assert.deepStrictEqual(telfmt('0101234567'), '010-123-4567');
assert.deepStrictEqual(telfmt('01012345678'), '010-1234-5678');
assert.deepStrictEqual(telfmt('0212345678'), '02-1234-5678');
assert.deepStrictEqual(telfmt('021234567'), '02-123-4567');
assert.deepStrictEqual(telfmt('0331234567'), '033-123-4567');
assert.deepStrictEqual(telfmt('15771577'), '1577-1577');
assert.deepStrictEqual(telfmt('07012341234'), '070-1234-1234');
assert.deepStrictEqual(telfmt('050712345678'), '0507-1234-5678');
return;
