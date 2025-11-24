const assert = require('assert');

const isEndJaum = str => {
  const lastChar = str.at(-1);
  if (/[lmnr136780]/i.test(lastChar)) return true;

  const lastCharCode = lastChar.charCodeAt();
  const 가 = 44032; // '가'.charCodeAt();
  const 힣 = 55203; // '힣'.charCodeAt();
  if (
    lastCharCode >= 가 &&
    lastCharCode <= 힣 &&
    (lastCharCode - 가) % 28 !== 0
  )
    return true;

  const ㄱ = 12593; // 'ㄱ'.charCodeAt();
  const ㅎ = 12622; // 'ㅎ'.charCodeAt();
  if (lastCharCode >= ㄱ && lastCharCode <= ㅎ) return true;

  return false;
};

assert.equal(isEndJaum('아지오'), false);
assert.equal(isEndJaum('북한강'), true);
assert.equal(isEndJaum('뷁'), true);
assert.equal(isEndJaum('강원도'), false);
assert.equal(isEndJaum('강원도ㅋ'), true);
assert.equal(isEndJaum('바라당'), true);
assert.equal(isEndJaum('ㅜㅜ'), false);
assert.equal(isEndJaum('케잌'), true);
assert.equal(isEndJaum('점수 A'), false);
assert.equal(isEndJaum('알파벳L'), true);
assert.equal(isEndJaum('24'), false);
assert.equal(isEndJaum('23'), true);

const josa = (str, ja_mo) => {
  const [ja, mo] = ja_mo.split('/');
  // return `${str}${isEndJaum(str) ? ja : mo}`;
  return isEndJaum(str) ? ja : mo;
};
const iga = str => josa(str, '이/가');
const eunun = str => josa(str, '은/는');
const eulul = str => josa(str, '을/를');
const eyuya = str => josa(str, '이어야/여야');
assert.equal(`고성군${iga('고성군')}`, '고성군이');
assert.equal(`고성군${eunun('고성군')}`, '고성군은');
assert.equal(`고성군${eulul('고성군')}`, '고성군을');
assert.equal(`성동구${iga('성동구')}`, '성동구가');
assert.equal(`성동구${eunun('성동구')}`, '성동구는');
assert.equal(`성동구${eulul('성동구')}`, '성동구를');
assert.equal(`고성군${eyuya('고성군')}`, '고성군이어야');
assert.equal(`성동구${eyuya('성동구')}`, '성동구여야');

const searchByKoreanInitialSound = (data, first) => {
  // ㄱㄴ => [ㄱ가-깋][ㄴ나-닣]
  const ㄱㄴㄷ = 'ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ';
  const 가나다 = '가까나다따라마바빠사싸아자짜차카타파하';
  const 힣nextCode = '힣'.charCodeAt(0) + 1;
  const regStr = [...first].reduce((reg, c) => {
    const idx = ㄱㄴㄷ.indexOf(c);
    const S = 가나다[idx];
    const eCode = (가나다[idx + 1]?.charCodeAt() ?? 힣nextCode) - 1;

    return `${reg}[${c}${S}-${String.fromCharCode(eCode)}]`;
  }, '');
  const regexp = new RegExp(regStr);
  return data.filter(d => regexp.test(d));
};
const s = [
  '강원도 고성군',
  '고성군 토성면',
  '토성면 북면',
  '북면',
  '김1수',
  '홍길동',
];
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㄱㅇ'), [
  '강원도 고성군',
]);
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㄱㅅㄱ'), [
  '강원도 고성군',
  '고성군 토성면',
]);
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㅌㅅㅁ'), [
  '고성군 토성면',
  '토성면 북면',
]);
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㅂㅁ'), [
  '토성면 북면',
  '북면',
]);
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㅍㅁ'), []);
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㄱ1ㅅ'), ['김1수']);
assert.deepStrictEqual(searchByKoreanInitialSound(s, 'ㅎㄱ'), ['홍길동']);
