<?php
require_once 'database/dbkoneksi.php';

$paramedik = 'SELECT paramedik.id AS id, paramedik.nama AS nama, paramedik.kategori AS kategori, paramedik.telpon AS telpon, paramedik.alamat AS alamat, unit_kerja.nama as unit_kerja FROM paramedik INNER JOIN unit_kerja ON paramedik.unit_kerja_id = unit_kerja.id';
$result_paramedik = $dbh->query($paramedik);

$unit_kerja = 'SELECT * FROM unit_kerja';
$result_unit = $dbh->query($unit_kerja);

$i = 0;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data Dokter</title>
    <link rel="icon" href="gambar/n.ico">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.css" />
    <link rel="stylesheet" href="src/css/layout-dasar.css">
</head>
<body>
    <h1>Data Dokter</h1>
    <div class="content">
    <div class="menu">
            <a href="data_pasien.php">Data Pasien</a>
            <a href="data_dokter.php" class="active">Data Dokter</a>
            <a href="data_periksa.php">Data Periksa</a>
        </div>
        <table style="width: 100%;" id="myTable" class="stripe">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Unit Kerja</th>
                    <th>Kategori</th>
                    <th>Telpon</th>
                    <th>Alamat</th>
                    <th style="width: 15%;">Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach($result_paramedik as $row_paramedik): ?>
                <tr>
                    <td><?= ++$i ?></td>
                    <td><?= $row_paramedik['nama'] ?></td>
                    <td><?= $row_paramedik['unit_kerja'] ?></td>
                    <td><?= $row_paramedik['kategori'] ?></td>
                    <td><?= $row_paramedik['telpon'] ?></td>
                    <td><?= $row_paramedik['alamat'] ?></td>
                    <td>
                        <div class="aksi">
                            <a href="paramedik/edit_paramedik.php?id=<?= $row_paramedik['id'] ?>">Edit</a>
                            <a href="paramedik/proses_paramedik.php?id=<?= $row_paramedik['id'] ?>&proses=hapus">Delete</a>
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
        <h1>Tambah Data Dokter</h1>
        <div class="modal-body">
            <form action="paramedik/proses_paramedik.php?proses=simpan" method="POST">
                <table style="width:100%" id="modal-table">
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
                        <td><label for="telpon">Telpon : </label></td>
                        <td colspan="2"><input type="text" name="telpon" id="telpon"></td>
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
                        <td style="vertical-align: top;"><label for="alamat">Alamat : </label></td>
                        <td><textarea name="alamat" cols="30" rows="10"></textarea></td>
                    </tr>
                    <tr>
                        <td><label for="kategori">Kategori : </label></td>
                        <td>
                            <select name="kategori" id="kategori">
                                <option selected disabled>--Pilih Kategori--</option>
                                <option value="rakyat jelata">Rakyat Jelata</option>
                                <option value="rakyat menengah">Rakyat Menengah</option>
                                <option value="kaya">Kaya</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="unit-kerja">Unit Kerja : </label></td>
                        <td>
                            <select name="unit_kerja_id" id="unit-kerja">
                                <option selected disabled>--Pilih Unit Kerja--</option>
                                <?php foreach($result_unit as $ru): ?>
                                <option value="<?= $ru['id'] ?>"><?= $ru['nama'] ?></option>
                                <?php endforeach; ?>
                            </select>
                        </td>
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