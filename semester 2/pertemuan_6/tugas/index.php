<?php
include_once 'operation/koneksi.php';

$query = 'select * from bandara';
$result = $conn->query($query);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bandara Fiksi Ternama</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.css" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Urbanist:ital,wght@0,100..900;1,100..900&display=swap');
        body {
            background-color: #EEF5FF;
            font-family: "Urbanist", sans-serif;
            font-optical-sizing: auto;
            font-weight: 600;
        }
        .content, .modal-body {
            width: 80%;
            min-height: 50vh;
            margin: 10% auto;
            background-color: #FFFFFF;
            padding: 60px;
            box-sizing: border-box;
        }
        .content {
            margin-top: 50px;
        }
        .modal-body {
            margin-top: 3%;
            width: 45%;
        }
        h1 {
            margin-top: 100px;
            text-align: center;
        }
        .content table tr {
            height: 50px;
        }
        #tambah-data {
            padding: 10px 15px;
            width: 10rem;
            text-align: center;
            margin-top: 50px;
            box-sizing: border-box;
            background-color: #BFEA7C;
        }
        .modal {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            background-color: #CDFADB;
            transition: all 0.5s;
        }
        .modal tr {
            height: 40px;
        }
        .modal input {
            margin-left: 10px;
            padding: 5px 10px;
            font-size: 15px;
            width: 80%;
            border: 0;
            outline: none;
            border-bottom: 2px solid #7B66FF;
        }
        .modal button {
            margin-top: 15px;
            margin-left: 10px;
            padding: 10px 20px;
            background-color: #7B66FF;
            color: #FFF;
            border: 2px solid #000;
            width: 50%;
        }
        .modal tr td:first-child {
            text-align: right;
        }
        .hide {
            top: -100%;
        }
    </style>
</head>
<body>
    <h1>Bandara Fiksi Ternama</h1>
    <div class="content">
        <table style="width: 100%;" id="myTable" class="stripe">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Kategori</th>
                    <th>Kelas</th>
                    <th>Lokasi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php while($row = $result->fetch_assoc()): ?>
                <tr>
                    <td><?= $row['id'] ?></td>
                    <td><?= $row['nama'] ?></td>
                    <td><?= $row['kategori'] ?></td>
                    <td><?= $row['kelas'] ?></td>
                    <td><?= $row['lokasi'] ?></td>
                    <td>
                        <div class="aksi">
                            <a href="#">Edit</a>
                            <a href="operation/delete.php?id=<?= $row['id'] ?>;">Delete</a>
                        </div>
                    </td>
                </tr>
                <?php endwhile; ?>
            </tbody>
        </table>
        <div id="tambah-data">
            Tambah Data
        </div>
    </div>
    <br>
    <div class="modal hide" id="modal">
        <h1>Form Tambah Data</h1>
        <div class="modal-body">
            <form action="operation/insert.php" method="POST">
                <table style="width:100%">
                    <tr>
                        <td style="width: 30%;"><label for="nama">Nama : </label></td>
                        <td><input type="text" name="nama" id="nama"></td>
                    </tr>
                    <tr>
                        <td><label for="kategori">Kategori : </label></td>
                        <td><input type="text" name="kategori" id="kategori"></td>
                    </tr>
                    <tr>
                        <td><label for="kelas">Kelas : </label></td>
                        <td><input type="text" name="kelas" id="kelas"></td>
                    </tr>
                    <tr>
                        <td><label for="lokasi">Lokasi : </label></td>
                        <td><input type="text" name="lokasi" id="lokasi"></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><button type="submit">Kirim</button></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
    <script>
        let tambah_data = document.getElementById('tambah-data');
        let modal = document.getElementById('modal');
        tambah_data.addEventListener('click', () => {
            modal.classList.remove('hide');
        })

        modal.addEventListener('click', (e) => {
            if(e.target.classList.contains('modal')) {
                modal.classList.add('hide');
            }
        })
    </script>
    <script src="https://code.jquery.com/jquery-3.7.1.slim.min.js"></script>
    <script src="https://cdn.datatables.net/2.0.3/js/dataTables.js"></script>
    <script>
        $(document).ready( function () {
            $('#myTable').DataTable();
            
        });
    </script>
</body>
</html>