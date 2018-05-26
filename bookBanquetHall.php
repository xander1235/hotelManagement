<?php
$b = $_REQUEST['b'];
$k = $_REQUEST['k']s;
include "connect.php";
session_start();
$username = $_SESSION['username'];
$sql = "update roomDetails set availabity = 1 where customer='".$username."'";
$row = mysqli_query($con,$sql);
echo "k=".$k." b = ".$b;
