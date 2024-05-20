<?php
session_start();
require_once('dbkoneksi.php');
$proses = $_GET['proses'];

if($proses == 'masuk') {
    $nama = $_POST['nama'];
    $password = $_POST['password'];

    $sql = "select * from pengguna where nama = ? and password = ?";
    $stmt = $dbh->prepare($sql);

    if($stmt->execute([$nama, $password])) {
        $_SESSION['login'] = 1;
        header('Location: ../dashboard.php');
    } else {
        header('Location: ../sign-in.php');
    }
} else {
    session_destroy();
    header('Location: ../sign-in.php');
}