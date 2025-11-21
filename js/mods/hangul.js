var X = 999;
export default X;
Array.prototype.mapBy = function (prop) {
  return this.map(a => a[prop]);
};
export const isEndJaum = str => {
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

const josa = (str, ja_mo) => {
  const [ja, mo] = ja_mo.split('/');
  // return `${str}${isEndJaum(str) ? ja : mo}`;
  return isEndJaum(str) ? ja : mo;
};
export const iga = str => josa(str, '이/가');
export const eunun = str => josa(str, '은/는');
export const eulul = str => josa(str, '을/를');
export const eyuya = str => josa(str, '이어야/여야');

export const searchByKoreanInitialSound = (data, first) => {
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
