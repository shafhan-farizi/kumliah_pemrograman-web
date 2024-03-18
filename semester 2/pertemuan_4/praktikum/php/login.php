<?php
session_start();

if($_POST['email'] == $_SESSION['email'] && $_POST['password'] == $_SESSION['password']) {
    $_SESSION['login'] = 1;
    $_SESSION['success'] = 'Anda Berhasil Login!';
    unset($_SESSION['error']);
    header('Location: ../index.php');
} else {
    
    $_SESSION['error'] = 'Email atau Password Salah!';
    $_SESSION['login_fail'] = 1;
    header('Location: ' . $_SERVER['HTTP_REFERER']);
}