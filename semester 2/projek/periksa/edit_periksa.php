<?php
    require_once '../database/dbkoneksi.php';

    $sql = 'SELECT periksa.*, pasien.nama AS pasien, paramedik.nama AS paramedik FROM periksa LEFT JOIN pasien ON periksa.pasien_id = pasien.id LEFT JOIN paramedik ON periksa.dokter_id = paramedik.id WHERE periksa.id = ?';
    $stmt = $dbh->prepare($sql);
    $stmt->execute([$_GET['id']]);
    $row = $stmt->fetch();

    $sql_dokter = 'SELECT id, nama FROM paramedik';
    $row_dokter = $dbh->query($sql_dokter);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data Periksa</title>
    <link rel="icon" href="../gambar/n.ico">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,100..900;1,100..900&display=swap');
        body {
            background-color: #EEF5FF;
            font-family: "Urbanist", sans-serif;
            font-optical-sizing: auto;
            font-weight: 600;
        }
        h1 {
            margin-top: 100px;
            text-align: center;
        }
        .container {
            margin: 3% auto;
            width: 45%;
            min-height: 50vh;
            padding: 60px;
            box-sizing: border-box;
            background-color: #CDFADB;
            transition: all 0.5s;
        }
        .container tr {
            height: 40px;
        }
        .container input, .container textarea, .container select {
            margin-left: 10px;
            padding: 5px 10px;
            font-size: 15px;
            width: 80%;
            border: 0;
            outline: none;
            border-bottom: 2px solid #7B66FF;
        }
        .container textarea {
            border: 2px solid #7B66FF;
        }
        .container button{
            margin-top: 15px;
            margin-left: 10px;
            padding: 10px 20px;
            box-sizing: border-box;
            background-color: #7B66FF;
            color: #FFF;
            border: 2px solid #000;
            width: 50%;
            cursor: pointer;
        }
        #batal {
            background-color: #FF9BD2;
        }
        .container tr td:first-child {
            text-align: right;
        }
        #radio-section {
            display: flex;
            align-items: center;
            height: 40px;
            width: 13rem;
        }
        #radio-section div {
            display: flex;
            justify-content: start;
            align-items: center;
            width: 100%;
        }
        #radio-section div input {
            flex-basis: 10px;
        }
    </style>
</head>
<body>
    <h1>Edit Data Periksa</h1>
<div class="container" id="container">
        <div class="container-body">
            <form action="proses_periksa.php?id=<?= $row['id'] ?>&proses=edit" method="POST">
                <table style="width:100%" id="container-table">
                    <tr>
                        <td><label for="pasien">Pasien : </label></td>
                        <td><input type="text" name="pasien" id="pasien" value="<?= $row['pasien'] ?>" disabled></td>
                    </tr>
                    <tr>
                        <td><label for="paramedik">Dokter : </label></td>
                        <td>
                            <select name="paramedik" id="paramedik">
                                <option selected disabled>--Pilih Dokter--</option>
                                <?php foreach($row_dokter as $rd): ?>
                                <option value="<?= $rd['id'] ?>" <?= $row['dokter_id'] == $rd['id'] ? 'selected' : '' ?>><?= $rd['nama'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="berat">Berat : </label></td>
                        <td><input type="text" name="berat" id="berat" value="<?= $row['berat'] ?>" disabled></td>
                    </tr>
                    <tr>
                        <td><label for="tinggi">Tinggi : </label></td>
                        <td><input type="text" name="tinggi" id="tinggi" value="<?= $row['tinggi'] ?>" disabled></td>
                    </tr>
                    <tr>
                        <td><label for="tensi">Tensi : </label></td>
                        <td><input type="text" name="tensi" id="tensi" value="<?= $row['tensi'] ?>" disabled></td>
                    </tr>
                    <tr>
                        <td><label for="tanggal">Tanggal : </label></td>
                        <td><input type="text" name="tanggal" id="tanggal" value="<?= $row['tanggal'] ?>"></td>
                    </tr>
                    <tr>
                        <td><label for="keterangan">Keterangan : </label></td>
                        <td><input type="text" name="keterangan" id="keterangan" value="<?= $row['keterangan'] ?>"></td>
                    </tr>
                    <tr>
                        <td><button id="batal" type="button">Batal</button></td>
                        <td><button type="submit">Edit</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <script>
        let batal = document.getElementById('batal');
        batal.addEventListener('click', () => {
            document.location.href = '../data_periksa.php';
        })
    </script>
</body>
</html>