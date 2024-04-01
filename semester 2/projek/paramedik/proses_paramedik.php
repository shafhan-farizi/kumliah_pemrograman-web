<?php
require_once '../database/dbkoneksi.php';

$proses = $_GET['proses'];
if($proses != 'hapus') {
    $nama = htmlspecialchars($_POST['nama']);
    $gender = htmlspecialchars($_POST['gender']);
    $tmp_lahir = htmlspecialchars($_POST['tmp_lahir']);
    $tgl_lahir = htmlspecialchars($_POST['tgl_lahir']);
    $kategori = htmlspecialchars($_POST['kategori']);
    $telpon = htmlspecialchars($_POST['telpon']);
    $alamat = htmlspecialchars($_POST['alamat']);
    $unit_kerja_id = htmlspecialchars($_POST['unit_kerja_id']);
    
    $data = [$nama, $gender, $tmp_lahir, $tgl_lahir, $kategori, $telpon, $alamat, $unit_kerja_id];
}

if($proses == 'simpan') {
    $sql = "insert into paramedik (nama, gender,tmp_lahir, tgl_lahir, kategori, telpon, alamat, unit_kerja_id) values (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
} else if ($proses == 'edit') {
    $data[] = $_GET['id'];
    $sql = "UPDATE paramedik SET nama = ?, gender = ?, tmp_lahir = ?, tgl_lahir = ?, kategori = ?, telpon = ?, alamat = ?, unit_kerja_id = ? WHERE id = ?";
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
} else {
    $sql = "DELETE FROM paramedik WHERE id = ?";

    $stmt = $dbh->prepare($sql);
    $stmt->execute([$_GET['id']]);
}

if($stmt) {
    header('Location: ../data_dokter.php');
} else {
    echo 'ERROR!';
}
?>