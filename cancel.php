<?php
session_start();
include "connect.php";
$id = $_REQUEST['roomId'];

$sql = "update roomDetails set availabity=1,customer='noCustomer' where id=".$id;
echo $sql;
$row = mysqli_query($con,$sql);
