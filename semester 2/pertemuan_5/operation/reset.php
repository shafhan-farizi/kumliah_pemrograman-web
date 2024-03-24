<?php
session_start();

unset($_SESSION['bunga']);

header('Location: ../index.html');