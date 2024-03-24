<?php
session_start();
include 'perhitungan.php';

$jumlahUang = $_POST['jumlahUang'];
$sukuBunga = $_POST['sukuBunga'];
$jangkaWaktu = $_POST['jangkaWaktu'];
$bulanOrTahun = $_POST['bulanOrTahun'];

$bunga = new Bunga($jumlahUang, $sukuBunga, $jangkaWaktu, $bulanOrTahun);

$hasil_bunga = $bunga->getBunga();

$_SESSION['bunga'] = $hasil_bunga;
header('Location: ../result.php');