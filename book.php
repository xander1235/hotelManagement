<?php
session_start();

$id = $_REQUEST['bookId'];
include "connect.php";
$sql = "update roomDetails set availabity=0,customer='".$_SESSION['username']."' where id=".$id."";
echo $sql;
$row = mysqli_query($con,$sql);

//echo "It works";