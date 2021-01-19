<?php
//insert.php
include("connection.php");
if(isset($_POST["operation"]))
{
 if($_POST["operation"] == "Add")
 {
  $category_id = mysqli_real_escape_string($connection, $_POST["category_id"]);
  $product_name = mysqli_real_escape_string($connection, $_POST["product_name"]);
  $product_price = mysqli_real_escape_string($connection, $_POST["product_price"]);
  $query = "
   INSERT INTO product(category_id, product_name, product_price) 
   VALUES ('".$category_id."', '".$product_name."', '".$product_price."')
  ";
  if(mysqli_query($connection, $query))
  {
   echo 'Product Inserted';
  }
 }
 if($_POST["operation"] == "Edit")
 {
  $category_id = mysqli_real_escape_string($connection, $_POST["category_id"]);
  $product_name = mysqli_real_escape_string($connection, $_POST["product_name"]);
  $product_price = mysqli_real_escape_string($connection, $_POST["product_price"]);
  $query = "
   UPDATE product 
   SET category_id = '".$category_id."', 
   product_name = '".$product_name."', 
   product_price = '".$product_price."' 
   WHERE product_id = '".$_POST["product_id"]."'
  ";
  if(mysqli_query($connection, $query))
  {
   echo 'Product Updated';
  }
 }
}
?>