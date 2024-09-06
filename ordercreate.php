<?php

$db= mysqli_connect("localhost", "root", "", "traack");

if(!$db)
{
    die("connection error: " . mysqli_connect_error());
}

$ord_id = $_POST["ord_id"];
$ord_stat = $_POST["ord_stat"];
$ord_items = $_POST["items"];
$date = $_POST["date"];
$disc = $_POST["disc"];
$price = $_POST["price"];
$pay_id = $_POST["pay_id"];
$cust_id = $_POST["cus_id"];
$cust_name = $_POST["cus_name"];
$cust_address = $_POST["cus_add"];
$cust_phone = $_POST["cus_phone"];
$cust_email= $_POST["cus_email"];


$sql = "INSERT INTO order_details(order_id , order_status, items, date, discount, total_price, payment_id, customer_id) VALUES('$ord_id' , 'pending', '$ord_items', '$date', '$disc', '$price', '$pay_id', '$cust_id')";
$sql2 = "INSERT INTO customer_information(customer_id, customer_name, customer_address, phone_no, email) VALUES('$cust_id', '$cust_name', '$cust_address', '$cust_phone', '$cust_email')";

if(mysqli_query($db, $sql) && mysqli_query($db, $sql2))
 {
     echo "Product Added";
     header("Location: orders.html");

 }
 else{
     echo "there is an error: " . mysqli_error($db);
     header("Location: invoices.html")
 }


?>