console.log('Hello world!');
let a = 1;
let b = 2;
const c = (a++, b++);
console.log('🚀 ~ c:', c, a && b);

// 91 ~ 100: A
// 81 ~ 90 : B
// 71 ~ 80 : C
// D
const score = 72;
let grade = 'D';
if (score >= 91 && score <= 100) grade = 'A';
if (score >= 81 && score <= 90) grade = 'B';
if (score >= 71 && score <= 80) grade = 'C';
console.log('🚀 ~ grade:', grade);

switch (score) {
  case 91:
  case 92:
  case 93:
  case 94:
  case 100:
    grade = 'A';
    break;

  case 81:
  case 82:
    grade = 'B';
    break;

  case 71:
  case 72:
  case 73:
    grade = 'C';
    break;
  default:
    grade = 'D';
}
console.log('🚀 ~ grade:', grade);
