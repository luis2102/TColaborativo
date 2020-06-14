const $login = document.getElementById('login')
const $register = document.getElementById('register')
const $cancelLogin = document.getElementById('cancel_login')
const $cancelRegister = document.getElementById('cancel_register')
const $overlay = document.getElementById('overlay')
const $modalLogin = document.getElementById('modal_login')
const $modalRegister= document.getElementById('modal_register')

function toggleLogin() {
  $overlay.classList.toggle('active')
  $modalLogin.classList.toggle('active')
  console.log('paso algo')
}

function toggleRegister() {
  $overlay.classList.toggle('active')
  $modalRegister.classList.toggle('active')
}

$login.addEventListener('click', toggleLogin )
$register.addEventListener('click', toggleRegister)
$cancelLogin.addEventListener('click', toggleLogin)
$cancelRegister.addEventListener('click', toggleRegister)