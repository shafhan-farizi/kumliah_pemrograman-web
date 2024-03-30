<?php

include 'koneksi.php';

$query = 'delete from mahasiswa where id = ' . $_GET['id'];
$result = $conn->query($query);

// if($result->num_rows > 0) {
//     header('Location: index.php');
// } else {
//     echo 'Error: ' . $query . "<br>" . $conn->error;
// }

?>