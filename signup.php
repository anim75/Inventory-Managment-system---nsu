<?php

$db= mysqli_connect("localhost", "root", "", "traack");

if(!$db)
{
    die("connection error: " . mysqli_connect_error());
}

$name = $_POST["fullname"];
$username = $_POST["username"];
$gender = $_POST["gender"];
$password = $_POST["password"];
$email=$_POST["email"];

$sql= "INSERT INTO user_info(full_name , username, gender, email, password) VALUES( '$name' , '$username', '$gender', '$email', '$password')" ;

if(mysqli_query($db, $sql))
 {
     echo "Account created";
     header("Location: dashboard.html");
 }
 else{
     echo "there is an error: " . mysqli_error($db);
 }





?>