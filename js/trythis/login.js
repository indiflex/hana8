const emailRegex = /^[A-Za-z0-9][\w-\.]*@[\w-]+(\.[A-z]{2,7}){1,2}$/;

const $frm = document.getElementById('frm');
const $buttons = document.querySelector('.buttons');
const $email = document.getElementById('email');
const $passwd = document.getElementById('passwd');

// if (process.env.NODE_ENV === 'development') {
$email.value = localStorage.getItem('login-email');
// $passwd.value = '121212';
// }

$frm.addEventListener('submit', e => {
  e.preventDefault();
  e.stopPropagation();

  const email = $email.value;
  const passwd = $passwd.value;
  if (!email || !emailRegex.test(email)) {
    alert('Input the valid email address!');
    $email.select().focus();
    return;
  }
  if (!passwd || passwd.length < 6) {
    alert('Input the password over 6 characters!');
    $passwd.focus();
    return;
  }

  localStorage.setItem('login-email', email);

  document.getElementById('login-email').textContent = email;
  // [...document.getElementsByClassName('buttons')].forEach(
  // [...document.querySelectorAll('.buttons')].forEach(
  //   ele => (ele.style.display = 'none')
  // );
  toggleInputsAndButtons();
  document.querySelector('#sign-out').style.display = 'block';

  const $div = document.createElement('div');
  $div.innerHTML = `<p class="text-center">${email}</p>`;
  $frm.appendChild($div);
});

function toggleInputsAndButtons() {
  const displayState = $buttons.style.display === 'none' ? 'block' : 'none';

  [...document.getElementsByTagName('input')].forEach(
    inp => (inp.style.display = displayState)
  );
  $buttons.style.display = displayState;
  document.getElementById('sign-out').style.display =
    displayState === 'none' ? 'block' : 'none';
}

const $sign_out = document.getElementById('sign-out');

document.getElementById('btn-logout').addEventListener('click', e => {
  e.preventDefault();
  toggleInputsAndButtons();
});
