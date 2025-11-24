const $frm = document.getElementById('frm');

$frm.addEventListener('submit', e => {
  e.preventDefault();
});

const $sign_out = document.getElementById('sign-out');
$sign_out.style.display = 'none';
