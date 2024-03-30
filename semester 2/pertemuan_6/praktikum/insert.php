<?php
include_once 'koneksi.php';

$nama = $_POST['nama'];
$nim = $_POST['nim'];
$jurusan = $_POST['jurusan'];
$semester = $_POST['semester'];

$query = "insert into mahasiswa (nama, nim, jurusan, semester) values ('$nama', '$nim', '$jurusan', '$semester')";
$conn->query($query);
?>