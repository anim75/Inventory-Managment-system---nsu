<?php

// Create connection
$conn = new mysqli("localhost", "root", "", "traack");

$username = $_POST["username"];
$pass = $_POST["password"];

$sql = "SELECT * FROM user_info WHERE username='$username' AND password='$pass'";
$result = $conn->query($sql);


if ($result->num_rows > 0) {
    header("Location: dashboard.html");
    exit();
} else {
    header("Location: login.html");
    exit();
}
$conn->close();