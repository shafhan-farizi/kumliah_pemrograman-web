<?php
require_once '../database/dbkoneksi.php';

$proses = $_GET['proses'];
if($proses != 'hapus') {
    $kode = htmlspecialchars($_POST['kode']);
    $nama = htmlspecialchars($_POST['nama']);
    $tmp_lahir = htmlspecialchars($_POST['tmp_lahir']);
    $tgl_lahir = htmlspecialchars($_POST['tgl_lahir']);
    $gender = htmlspecialchars($_POST['gender']);
    $email = htmlspecialchars($_POST['email']);
    $alamat = htmlspecialchars($_POST['alamat']);
    
    $data = [$kode, $nama, $tmp_lahir, $tgl_lahir, $gender, $email, $alamat];
}

if($proses == 'simpan') {
    $sql = "insert into pasien (kode, nama, tmp_lahir, tgl_lahir, gender, email, alamat) values (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
} else if ($proses == 'edit') {
    $data[] = $_GET['id'];
    $sql = "UPDATE pasien SET kode = ?, nama = ?, tmp_lahir = ?, tgl_lahir = ?, gender = ?, email = ?, alamat = ? WHERE id = ?";
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
} else {
    $sql = "DELETE FROM pasien WHERE id = ?";

    $stmt = $dbh->prepare($sql);
    $stmt->execute([$_GET['id']]);
}

if($stmt) {
    header('Location: ../data_pasien.php');
} else {
    echo 'ERROR!';
}
?>