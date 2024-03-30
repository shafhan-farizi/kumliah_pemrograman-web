<?php
include_once 'koneksi.php';

$nama = $_POST['nama'];
$kategori = $_POST['kategori'];
$kelas = $_POST['kelas'];
$lokasi = $_POST['lokasi'];

$query = "insert into bandara (nama, kategori, kelas, lokasi) values ('$nama', '$kategori', '$kelas', '$lokasi')";
$result = $conn->query($query);

if($result) {
    header('Location: ../index.php');
} else {
    echo 'ERROR!';
}
?>