// const assert = require('assert'); // CJS
import assert from 'assert'; // ESM
import X, {
  eulul,
  eunun,
  eyuya,
  iga as igaga,
  isEndJaum,
  searchByKoreanInitialSound,
} from './hangul.js';

console.log('Hello mods!', X);

const add = (...args) => args.reduce((acc, a) => acc + a);

assert.strictEqual(add(1, 2), 3);
assert.strictEqual(add(1, 2, 3), 6);

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

assert.equal(`고성군${igaga('고성군')}`, '고성군이');
assert.equal(`고성군${eunun('고성군')}`, '고성군은');
assert.equal(`고성군${eulul('고성군')}`, '고성군을');
assert.equal(`성동구${igaga('성동구')}`, '성동구가');
assert.equal(`성동구${eunun('성동구')}`, '성동구는');
assert.equal(`성동구${eulul('성동구')}`, '성동구를');
assert.equal(`고성군${eyuya('고성군')}`, '고성군이어야');
assert.equal(`성동구${eyuya('성동구')}`, '성동구여야');

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
