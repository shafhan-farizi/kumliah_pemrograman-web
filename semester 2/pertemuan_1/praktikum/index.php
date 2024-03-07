<?php

    $title = 'PRAKTIKUM 1 PHP';
    $nama = 'Shafhan';
    $umur = 19;
    $hobi = 'Membaca Doujin';

    // echo 'Mahasiswa dengan nama ' . $nama . ' berusia ' . $umur . ' dan memiliki hobi ' . $hobi;

    define('PHI', 3.14); // constant
    $jari = 8;

    $keliling = 2 * PHI * $jari;
    $luas = PHI * $jari * $jari;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praktikum pertemuan 1</title>
</head>
<body>
    <h1> <?php echo $title ?> </h1>

    <p>Luas lingkaran : <?php echo $luas ?></p>
    <p>Keliling lingkaran : <?php echo $keliling ?></p>

    <script>
        function getRandomColor() {
            let letters = '0123456789ABCDEF'
            let color = '#'

            for(let i = 0; i < 6; i++) {
                color+= letters[Math.floor(Math.random() * 16)]
            }
            return color;
        }

        function changeBackgroundColor() {
            document.getElementsByTagName('h1')[0].style.color = getRandomColor()
        }

        setInterval(changeBackgroundColor, 100);
        
    </script>
</body>
</html>