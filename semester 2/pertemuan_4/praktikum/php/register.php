<?php
session_start();

$fullname = $_POST['fullname'];
$email = $_POST['email'];
$password = $_POST['password'];
$re_password = $_POST['re_password'];

$_SESSION['fullname'] = $fullname;

if($password != $re_password) {
    $_SESSION['error'] = 'Konfirmasi Password Salah!';
    $_SESSION['register_fail'] = 1;
    header('Location: ../register.php');
} else {
    unset($_SESSION['error']);

    $_SESSION['email'] = $email;
    $_SESSION['password'] = $password;
    
    header('Location: ../login.php');
}
