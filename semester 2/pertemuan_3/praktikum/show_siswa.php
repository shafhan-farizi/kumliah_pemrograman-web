<?php
$nim = $_POST['nim'];
$nama = $_POST['nama'];
$jenis_kelamin = $_POST['jenis_kelamin'];
$program_studi = $_POST['program_studi'];
$skill = $_POST['skill'];
$domisili = $_POST['domisili'];
$email = $_POST['email'];

function skor_skill($skill) {
    $skill_name = [];
    $count_skill = [];
    foreach($skill as $sk) {
        $explode_skill = explode('-', $sk);
        array_push($skill_name, $explode_skill[0]);
        array_push($count_skill, $explode_skill[1]);
    }
    $skor_skill = array_sum($count_skill);
    
    return kategori_skill($skor_skill, $skill_name, $count_skill);
}

function kategori_skill($skor_skill, $skill_name) {
    if ($skor_skill == 0) {
        $kategori_skill = 'Tidak Memadai';
    } else if ($skor_skill > 0 && $skor_skill <= 40) {
        $kategori_skill = 'Kurang';
    } else if ($skor_skill > 40 && $skor_skill <= 60) {
        $kategori_skill = 'Cukup';
    } else if ($skor_skill > 60 && $skor_skill <= 100) {
        $kategori_skill = 'Baik';
    } else if ($skor_skill > 100 && $skor_skill <= 170) {
        $kategori_skill = 'Sangat Baik';
    }
    return ['skor_skill' => $skor_skill, 'kategori_skill' => $kategori_skill, 'skill_name' => $skill_name];
}
$skor_kategori = skor_skill($skill);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Siswa</title>
    <style>
        .box {
            width: 75%;
            margin: 80px auto;
        }
        table {
            border-collapse: collapse;
            font-size: 20px;
        }
        td {
            padding: 10px;
        }
    </style>
</head>
<body>
    <div class="box">
        <table border="1" width="100%">
            <tr>
                <td style="width: 10%">NIM</td>
                <td><?= $nim ?></td>
            </tr>
            <tr>
                <td>Nama</td>
                <td><?= $nama ?></td>
            </tr>
            <tr>
                <td>Jenis Kelamin</td>
                <td><?= $jenis_kelamin ?></td>
            </tr>
            <tr>
                <td>Program Studi</td>
                <td><?= $program_studi ?></td>
            </tr>
            <tr>
                <td>Skill</td>
                <td><?= implode(',', $skor_kategori['skill_name']) ?></td>
            </tr>
            <tr>
                <td>Skor Skill</td>
                <td><?= $skor_kategori['skor_skill'] ?></td>
            </tr>
            <tr>
                <td>Kategori Skill</td>
                <td><?= $skor_kategori['kategori_skill'] ?></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><?= $email ?></td>
            </tr>
        </table>
    </div>
</body>
</html>