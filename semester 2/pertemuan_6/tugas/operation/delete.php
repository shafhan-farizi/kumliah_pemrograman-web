<?php

include 'koneksi.php';

$query = 'delete from bandara where id = ' . $_GET['id'];
$result = $conn->query($query);

if($result) {
    header('Location: ../index.php');
} else {
    echo 'ERROR!';
}
?>