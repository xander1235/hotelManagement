<html>
<head>
	<link rel="stylesheet" type="text/css" href="home.css">
	<title>Home Page</title>
	<script type="text/javascript">
		function Cancel(id)
		{
			//window.alert("In the function Cancel");
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function()
			{
				if(this.readyState == 4 && this.status == 200)
				{
				//	window.alert(this.responseText);
				}
			}
			xmlhttp.open("GET","cancel.php?roomId="+id,true);
			xmlhttp.send();
			document.getElementById(id).style.display="none";
		}
			</script>
</head>
<body>
<?php
include "connect.php";
session_start();
$sql = "select id from userDetails where username='".$_SESSION['username']."'";
$row = mysqli_query($con,$sql);
$retVal = mysqli_fetch_assoc($row);
$_SESSION['id'] = $retVal['id'];

if(isset($_SESSION['username']))
{
}
else
{
 session_destroy();
header("Location: index.php");
}
?>
<h1> WELCOME 
<?php 
	echo $_SESSION['username'];
?>
</h1>
 <div id=lo >
 <form  action="logout.php">
 	<input type="submit" value="Log Out">
 </form >
</div>
<div id=lo >
 <form  action="personalinfo.php">
 	<input type="submit" value="Personal_Info">
 </form >
</div>
<legend>
 <h1>View Bookings</h1>
 <?php
 $sql = "select * from roomDetails where customer = '".$_SESSION['username']."'";
 $row = mysqli_query($con,$sql);
 $numberOfRoomsBooked = mysqli_num_rows($row);
 echo "<table><th>Room Name</th><th>Hotel Name</th><th>City</th>";
 for ( $i = 0; $i < $numberOfRoomsBooked; $i ++)
 {
 	$retVal = mysqli_fetch_assoc($row);
 	echo "<tr id=".$retVal['id']."><td>".$retVal['roomName']."</td>";
 	$sql2 = "select * from hotel where id=".$retVal['hotelId'];
 	$row2=mysqli_query($con,$sql2);
 	$hotel = mysqli_fetch_assoc($row2);
 	echo "<td>".$hotel['hotelName']."</td>";
 	echo "<td>".$hotel['city']."</td>";
 	echo "<td><button onclick='Cancel(".$retVal['id'].")'>Cancel</button></td><br></tr>";
 }
 echo "</table>";
 ?>
 <h1>Book Now</h1>
 
<form action="home.php">
<table>
<tr>
	<th>
	<img id=id7 src="images/allahabad.jpg" width="130" height="110">
	</th>
	<th>
	<img id=id8 src="images/varanasi.jpg" width="130" height="110">
	</th>
	<th>
	<img id=id9 src="images/hyderabad.jpg" width="130" height="110">
	</th>
</tr>
<tr>
 <th>
 <input id=id1 type="submit" name="alld" value="Allahabad">
 </th>
 <th>
 <input id=id2 type="submit" name="kasi" value="Varanasi">
 </th>
 <th>
 <input id=id3 type="submit" name="hyd" value="Hyderabad">
 </th>
</tr>
</table>
<br>
<br>
<table>
<tr>
	<th>
	<img id=id10 src="images/vizag.jpg" width="130" height="110">
	</th>
	<th>
	<img id=id11 src="images/mumbai.jpg" width="130" height="110">
	</th>
	<th>
	<img id=id12 src="images/chennai.jpg" width="130" height="110">
	</th>
</tr>
<tr>
 <th>
 <input id=id4 type="submit" name="viz" value="Vizag">
 </th>
 <th>
 <input id=id5 type="submit" name="mum" value="Mumbai">
 </th>
 <th>
 <input id=id6 type="submit" name="che" value="Chennai">
 </th>
</tr>
</table>
</form>
</legend>
<?php
if(isset($_GET['alld'])) {
	$_SESSION['city'] = "Allahabad";
	header("Location: viewHotels.php");
}
else if(isset($_GET['kasi']))
{
	$_SESSION['city'] = "Varanasi";
	header("Location: viewHotels.php");
}
else if(isset($_GET['hyd']))
{
	$_SESSION['city'] = "Hyderabad";
	header("Location: viewHotels.php");
}
else if(isset($_GET['viz'])){

	$_SESSION['city'] = "Vizag";
	header("Location: viewHotels.php");
}
else if(isset($_GET['mum'])){
	$_SESSION['city'] = "Mumbai";
	header("Location: viewHotels.php");
}
else if(isset($_GET['che'] )){
	$_SESSION['city'] ="Chennai";
	header("Location: viewHotels.php");
}


?>
</body>
