<?php

$host = 'localhost';
$username = 'root';
$password = 'root';
$database = 'crud_db';

$conn = new mysqli($host, $username, $password, $database);

if($conn->connect_error) {
    die('Connection Failed : ' . $conn->connect_error);
}