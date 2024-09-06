<?php

$db= mysqli_connect("localhost", "root", "", "traack");

if(!$db)
{
    die("connection error: " . mysqli_connect_error());
}

$pro_code = $_POST["pro_code"];
$pro_name = $_POST["pro_name"];
$pro_desc = $_POST["pro_desc"];
$pro_quan = $_POST["pro_quan"];
$pro_ppu = $_POST["pro_ppu"];
$manu_id = $_POST["manu_id"];
$cat_id = $_POST["cat_id"];
$sup_id = $_POST["sup_id"];

$sql= "INSERT INTO product_information(product_code , product_name, product_desc, quantity, price_per_unit, manufacturer_id, category_id, supplier_id) VALUES('$pro_code' , '$pro_name', '$pro_desc', '$pro_quan', '$pro_ppu', '$manu_id', '$cat_id', '$sup_id') WHERE product_code IS NOT NULL";

if(mysqli_query($db, $sql))
 {
     echo "Product Added";
     header("Location: dashboard.html");
 }
 else{
     echo "there is an error: " . mysqli_error($db);
     header("Location: products.html");
 }


?>