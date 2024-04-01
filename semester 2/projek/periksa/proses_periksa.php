<?php
require_once '../database/dbkoneksi.php';

$proses = $_GET['proses'];
if($proses != 'hapus') {
    $paramedik = htmlspecialchars($_POST['paramedik']);
    $tanggal = htmlspecialchars($_POST['tanggal']);
    $keterangan = htmlspecialchars($_POST['keterangan']);
    
    $data = [$paramedik, $tanggal, $keterangan];
}

if($proses == 'simpan') {
    $pasien = htmlspecialchars($_POST['pasien']);
    $berat = htmlspecialchars($_POST['berat']);
    $tinggi = htmlspecialchars($_POST['tinggi']);
    $tensi = htmlspecialchars($_POST['tensi']);
    
    array_push($data, $pasien, $berat, $tinggi, $tensi);
}

if($proses == 'simpan') {
    $sql = "insert into periksa (dokter_id, tanggal, keterangan, pasien_id, berat, tinggi, tensi) values (?, ?, ?, ?, ?, ?, ?)";
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
} else if ($proses == 'edit') {
    $data[] = $_GET['id'];
    $sql = "UPDATE periksa SET dokter_id = ?, tanggal = ?, keterangan = ? WHERE id = ?";
    $stmt = $dbh->prepare($sql);
    $stmt->execute($data);
} else {
    $sql = "DELETE FROM periksa WHERE id = ?";

    $stmt = $dbh->prepare($sql);
    $stmt->execute([$_GET['id']]);
}

if($stmt) {
    header('Location: ../data_periksa.php');
} else {
    echo 'ERROR!';
}
?>