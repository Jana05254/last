<?php
session_start();

$servername = "localhost";
$username = "root"; // الافتراضي في XAMPP
$password = "";
$dbname = "university_community";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("فشل الاتصال: " . $conn->connect_error);
}
?>
