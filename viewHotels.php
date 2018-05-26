<html>
<head>
	<link rel="stylesheet" type="text/css" href="Allahabad.css">
	<title>Hotels</title>
</head>
<body>
<div id="text">
<?php
include 'connect.php';
if($con)
{
	//echo "Connection Succesful";
}
session_start();
echo "Welcome to '".$_SESSION['city']."'";
echo "<br> <br> Hotels";
$sql = "select * from hotel where city='".$_SESSION['city']."'";
$row = mysqli_query($con,$sql);
$numberOfRows = mysqli_num_rows($row);
//echo $numberOfRows;
echo "<form action='viewHotels.php'>";
for ( $i = 0; $i < $numberOfRows; $i ++ )
{

	$retVal = mysqli_fetch_assoc($row);
	$hotelId = $retVal['id'];
	$hotelName = $retVal['hotelName'];
	//echo " ".$hotelId."'";
	echo "<input type='submit' name='".$hotelName."'
	 value='".$hotelName."'>
	 ";
	echo "<br>";
	if(isset($_GET[$hotelName]))
	{
		$_SESSION['hotelName'] = $hotelName;
		
		$_SESSION['hotelId'] = $hotelId;
		
		if($hotelId == 6){
			header("Location: kanha.php");
		}
		else if($hotelId == 3){
			header("Location: radisson.php");
		}
		else if($hotelId == 1){
			header("Location: novotel.php");
		}
		else if($hotelId == 16){
			header("Location: winser.php");
		}
		else if($hotelId == 21){
			header("Location: hyat.php");
		}
		else if($hotelId == 26){
			header("Location: raintree.php");
		}
		else{
			header("Location: viewRooms.php");
		}
	}
}
echo "</form>";
echo "Hall";
?>
<form action="function.php" method="post">
	<input type="submit" name="submit" value='Banquet Hall'>
</form>
</div>
</body>
