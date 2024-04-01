<?php
    require_once '../database/dbkoneksi.php';

    $sql = 'SELECT * FROM pasien WHERE id = ?';
    $stmt = $dbh->prepare($sql);
    $stmt->execute([$_GET['id']]);
    $row = $stmt->fetch();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Data Pasien</title>
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
    <h1>Edit Data Pasien</h1>
<div class="container" id="container">
        <div class="container-body">
            <form action="proses_pasien.php?id=<?= $row['id'] ?>&proses=edit" method="POST">
                <table style="width:100%" id="container-table">
                    <tr>
                        <td style="width: 30%;"><label for="kode">Kode : </label></td>
                        <td><input type="text" name="kode" id="kode" value="<?= $row['kode'] ?>"></td>
                    </tr>
                    <tr>
                        <td><label for="nama">Nama : </label></td>
                        <td><input type="text" name="nama" id="nama" value="<?= $row['nama'] ?>"></td>
                    </tr>
                    <tr>
                        <td><label for="tmp_lahir">Tempat Lahir : </label></td>
                        <td><input type="text" name="tmp_lahir" id="tmp_lahir" value="<?= $row['tmp_lahir'] ?>"></td>
                    </tr>
                    <tr>
                        <td><label for="tgl_lahir">Tanggal Lahir : </label></td>
                        <td><input type="text" name="tgl_lahir" id="tgl_lahir" value="<?= $row['tgl_lahir'] ?>"></td>
                    </tr>
                    <tr>
                        <td><label>Jenis Kelamin : </label></td>
                        <td id="radio-section">
                            <div>
                                <input type="radio" name="gender" id="laki-laki" value="L" <?= $row['gender'] == 'L' ? 'checked' : '' ?>>
                                <label for="laki-laki">Laki-Laki</label>
                            </div>
                            <div>
                                <input type="radio" name="gender" id="perempuan" value="P" <?= $row['gender'] == 'P' ? 'checked' : '' ?>>
                                <label for="perempuan">Perempuan</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">Email : </label></td>
                        <td><input type="email" name="email" id="email" value="<?= $row['email'] ?>"></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top;"><label for="alamat">Alamat : </label></td>
                        <td><textarea name="alamat" cols="30" rows="10"><?= $row['alamat'] ?></textarea></td>
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
            document.location.href = '../data_pasien.php';
        })
    </script>
</body>
</html>