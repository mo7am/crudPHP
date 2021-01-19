<?php
//delete.php
include("connection.php");
if(isset($_POST["product_id"]))
{
 $query = "DELETE FROM product WHERE product_id = '".$_POST["product_id"]."'";
 if(mysqli_query($connection, $query))
 {
  echo 'Data Deleted';
 }
}
?>
