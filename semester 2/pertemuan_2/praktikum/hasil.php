<?php

$proses = $_GET['proses'];
$nama = $_GET['nama'];
$matkul = $_GET['matkul'];
$nilai_uts = $_GET['nuts'];
$nilai_uas = $_GET['nuas'];
$nilai_tugas = $_GET['nugas'];

#Buat Total
$total_nilai = ($nilai_uts * 0.3) + ($nilai_uas * 0.35) + ($nilai_tugas * 0.35);

#Grade
echo $total_nilai;
$grade;
if($total_nilai >= 0 && $total_nilai <= 35) {
    $grade = 'E';
} else if ($total_nilai > 35 && $total_nilai <= 55) {
    $grade = 'D';
} else if ($total_nilai > 55 && $total_nilai <= 69) {
    $grade = 'C';
} else if ($total_nilai > 69 && $total_nilai <= 84) {
    $grade = 'B';
} else if ($total_nilai > 84 && $total_nilai <= 100) {
    $grade = 'A';
} else {
    $grade = 'I';
}

#Predikat Nilai
$predikat;
switch($grade) {
    case 'A':
        $predikat = 'Sangat Memuaskan';
        break;
    case 'B':
        $predikat = 'Memuaskan';
        break;
    case 'C':
        $predikat = 'Cukup';
        break;
    case 'D':
        $predikat = 'Kurang';
        break;
    case 'E':
        $predikat = 'Sangat Kurang';
        break;
    default:
        $predikat = 'Tidak Ada';
}

echo 'Proses : ' . $proses;
echo '<br>Nama : ' . $nama;
echo '<br>Mata Kuliah : ' . $matkul;
echo '<br>Nilai UTS : ' . $nilai_uts;
echo '<br>Nilai UAS : ' . $nilai_uas;
echo '<br>Nilai Tugas Praktikum : ' . $nilai_tugas;
echo '<br>Grade : ' . $grade;
echo '<br>Predikat : ' . $predikat;