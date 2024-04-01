<?php
require_once 'database/dbkoneksi.php';

$periksa = 'SELECT periksa.*, pasien.nama AS pasien, paramedik.nama AS paramedik FROM periksa LEFT JOIN pasien ON periksa.pasien_id = pasien.id LEFT JOIN paramedik ON periksa.dokter_id = paramedik.id';
$result_periksa = $dbh->query($periksa);

$pasien = 'SELECT id, nama FROM pasien';
$result_pasien = $dbh->query($pasien);

$paramedik = 'SELECT id, nama FROM paramedik';
$result_paramedik = $dbh->query($paramedik);

$i = 0;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Periksa</title>
    <link rel="icon" href="gambar/n.ico">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.css" />
    <link rel="stylesheet" href="src/css/layout-dasar.css">
</head>
<body>
    <h1>Data Periksa</h1>
    <div class="content">
        <div class="menu">
            <a href="data_pasien.php">Data Pasien</a>
            <a href="data_dokter.php">Data Dokter</a>
            <a href="data_periksa.php" class="active">Data Periksa</a>
        </div>
        <table style="width: 100%;" id="myTable" class="stripe">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Pasien</th>
                    <th>Dokter</th>
                    <th>Tanggal</th>
                    <th>Berat</th>
                    <th>Tinggi</th>
                    <th>Tensi</th>
                    <th>Keterangan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($result_periksa as $row_periksa): ?>
                <tr>
                    <td><?= ++$i ?></td>
                    <td><?= $row_periksa['pasien'] ?></td>
                    <td><?= $row_periksa['paramedik'] ?></td>
                    <td><?= $row_periksa['tanggal'] ?></td>
                    <td><?= $row_periksa['berat'] ?></td>
                    <td><?= $row_periksa['tinggi'] ?></td>
                    <td><?= $row_periksa['tensi'] ?></td>
                    <td><?= $row_periksa['keterangan'] ?></td>
                    <td>
                        <div class="aksi">
                            <a href="periksa/edit_periksa.php?id=<?= $row_periksa['id'] ?>">Edit</a>
                            <a href="periksa/proses_periksa.php?id=<?= $row_periksa['id'] ?>&proses=hapus">Delete</a>
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
        <h1>Tambah Data Periksa</h1>
        <div class="modal-body">
            <form action="periksa/proses_periksa.php?proses=simpan" method="POST">
                <table style="width:100%" id="modal-table">
                    <tr>
                        <td><label for="nama">Nama : </label></td>
                        <td>
                            <select name="pasien" id="pasien">
                                <option selected disabled>--Pilih Pasien--</option>
                                <?php foreach($result_pasien as $row_pasien): ?>
                                <option value="<?= $row_pasien['id'] ?>"><?= $row_pasien['nama'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="paramedik">Dokter : </label></td>
                        <td>
                            <select name="paramedik" id="paramedik">
                                <option selected disabled>--Pilih Dokter--</option>
                                <?php foreach($result_paramedik as $row_paramedik): ?>
                                <option value="<?= $row_paramedik['id'] ?>"><?= $row_paramedik['nama'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="berat">Berat : </label></td>
                        <td><input type="text" name="berat" id="berat"></td>
                    </tr>
                    <tr>
                        <td><label for="tinggi">Tinggi : </label></td>
                        <td><input type="text" name="tinggi" id="tinggi"></td>
                    </tr>
                    <tr>
                        <td><label for="tensi">Tensi : </label></td>
                        <td><input type="text" name="tensi" id="tensi"></td>
                    </tr>
                    <tr>
                        <td><label for="tanggal">Tanggal : </label></td>
                        <td><input type="text" name="tanggal" id="tanggal"></td>
                    </tr>
                    <tr>
                        <td><label for="keterangan">Keterangan : </label></td>
                        <td><input type="text" name="keterangan" id="keterangan"></td>
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