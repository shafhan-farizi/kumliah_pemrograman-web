<?php
require_once 'database/dbkoneksi.php';

$pasien = 'SELECT * FROM pasien';
$result_pasien = $dbh->query($pasien);

$i = 0;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Pasien</title>
    <link rel="icon" href="gambar/n.ico">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.css" />
    <link rel="stylesheet" href="src/css/layout-dasar.css">
    <style>
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
    <h1>Data Pasien</h1>
    <div class="content">
        <div class="menu">
            <a href="data_pasien.php" class="active">Data Pasien</a>
            <a href="data_dokter.php">Data Dokter</a>
            <a href="data_periksa.php">Data Periksa</a>
        </div>
        <table style="width: 100%;" id="myTable" class="stripe">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>Email</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($result_pasien as $row_pasien): ?>
                <tr>
                    <td><?= ++$i ?></td>
                    <td><?= $row_pasien['kode'] ?></td>
                    <td><?= $row_pasien['nama'] ?></td>
                    <td><?= $row_pasien['alamat'] ?></td>
                    <td><?= $row_pasien['email'] ?></td>
                    <td style="width: 15%;">
                        <div class="aksi">
                            <a href="pasien/edit_pasien.php?id=<?= $row_pasien['id'] ?>">Edit</a>
                            <a href="pasien/proses_pasien.php?id=<?= $row_pasien['id'] ?>&proses=hapus">Delete</a>
                        </div>
                    </td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <div id="tambah-data">
            Tambah Data
        </div>
    </div>
    <div class="modal hide" id="modal">
        <h1>Tambah Data Pasien</h1>
        <div class="modal-body">
            <form action="pasien/proses_pasien.php?proses=simpan" method="POST">
                <table style="width:100%" id="modal-table">
                    <tr>
                        <td style="width: 30%;"><label for="kode">Kode : </label></td>
                        <td colspan="2"><input type="text" name="kode" id="kode"></td>
                    </tr>
                    <tr>
                        <td><label for="nama">Nama : </label></td>
                        <td colspan="2"><input type="text" name="nama" id="nama"></td>
                    </tr>
                    <tr>
                        <td><label for="tmp_lahir">Tempat Lahir : </label></td>
                        <td colspan="2"><input type="text" name="tmp_lahir" id="tmp_lahir"></td>
                    </tr>
                    <tr>
                        <td><label for="tgl_lahir">Tanggal Lahir : </label></td>
                        <td colspan="2"><input type="text" name="tgl_lahir" id="tgl_lahir"></td>
                    </tr>
                    <tr>
                        <td><label>Jenis Kelamin : </label></td>
                        <td id="radio-section">
                            <div>
                                <input type="radio" name="gender" id="laki-laki" value="L">
                                <label for="laki-laki">Laki-Laki</label>
                            </div>
                            <div>
                                <input type="radio" name="gender" id="perempuan" value="P">
                                <label for="perempuan">Perempuan</label>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">Email : </label></td>
                        <td><input type="email" name="email" id="email"></td>
                    </tr>
                    <tr>
                        <td style="vertical-align: top;"><label for="alamat">Alamat : </label></td>
                        <td><textarea name="alamat" cols="30" rows="10"></textarea></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit">Kirim</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <script src="src/javascript/modal.js"></script>
    <script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.3/js/dataTables.js"></script>
    <script>
        $(document).ready( function () {
            $('#myTable').DataTable();
            
        });
    </script>
</body>
</html>