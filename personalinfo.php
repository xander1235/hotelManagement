<?php
include 'connect.php';
if($con)
{
	//echo "Connection Succesful";
}
session_start();
echo "<h1> Personal Information </h1>";
$username = $_SESSION['username'];
//echo $username;
$id = $_SESSION['id'];
$sql6 = "select * from profile where id=".$id." "; 
	$row6 = mysqli_query($con,$sql6);
	$retVal6 = mysqli_fetch_assoc($row6);
	$_SESSION['issubmitted'] = $retVal6['submited'];
//	echo $_SESSION['issubmitted'];
//echo $id;
if(!$id)
{
	echo "no id";
}
if(isset($_POST['submit'])){

	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$number = $_POST['number'];
	$address = $_POST['address'];
	$email = $_POST['email'];
	$sql = "insert into personalinfo (id,firstname
		,lastname,contact,address,email )
		 value ( ".$id.",'".$firstname."',
		 	'".$lastname."',".$number.",'".$address."','".$email."')";
	$row = mysqli_query($con,$sql);
	$_SESSION['username'] = $_POST['firstname'];
	if($_POST['firstname'] &&  $_POST['lastname'] && $_POST['email']){		
			
			
				$_SESSION['issubmitted']=1;
				
	}
	else{
	//	echo"enter the valid details";
	}

}
?>
<html>
<head>
	<title>Personal Information</title>
	<link rel="stylesheet" type="text/css" href="profile.css">
</head>
<div>
<body>
<a href="home.php">Home</a>
<?php
if($_SESSION['issubmitted'] ==0 || !isset($_SESSION['issubmitted']))
{
?>
<form method="POST" enctype="multipart/form-data" action="personalinfo.php">
	<input type="text" name="firstname" placeholder="firstname"><br>
	<input type="text" name="lastname" placeholder="lastname"><br>
	<input type="text" name="number"  placeholder="mobile number" min="10" max="10"><br>
	<input type="email" name="email" placeholder="email"><br>
	<textarea id="subject" name="address" placeholder="address" style="height:150px;width:250px;resize: none"></textarea><br>
    File name:<input type="file" name="imgfile"><br>
    <input type="submit" name="submit" value="upload">
</form>
<?php
}
else{
?>
<h1>Details</h1>
<?php  
	$sql6 = "select * from profile where id=".$id." "; 
	$row6 = mysqli_query($con,$sql6);
	if($row6){
		//echo "working";
	}
	else{
		//echo "not working";
	}
	$retVal6 = mysqli_fetch_assoc($row6);
	$filename = $retVal6['pic'];
	$name = $retVal6['name'];
	echo "<br>".$name." <br><br> ";
	$_SESSION['issubmitted'] = $retVal6['submited'];
	//echo $_SESSION['issubmitted'];
  ?>
	<img src="images/<?php echo $filename; ?>" style="border-radius: 100%;width: 150px;height: 150px;"><br><br><br>
<table>
<?php
$filename=  $_FILES["imgfile"]["name"];
//echo $filename;
$submit = 1;
//echo $submit;
$sql5 = "insert into profile (id,pic,name,submited) value (".$id.",'".$filename."','".$username."',".$submit.")";
$row5 = mysqli_query($con,$sql5);
$sql2 = "select * from personalinfo where id=".$id;
$row2 = mysqli_query($con,$sql2);
$retVal2 = mysqli_fetch_array($row2);
	echo "<tr><td><strong>First name</strong> </th><td>".$retVal2[1]."</td></tr>";
	echo "<tr><td><strong>Last name</strong>  </th><td>".$retVal2[2]."</td></tr>";
	echo "<tr><td><strong>Mobile no</strong>     </th><td>".$retVal2[3]."</td></tr>";
	echo "<tr><td><strong>Email</strong>      </th><td>".$retVal2[5]."</td></tr>";
	echo "<tr><td><strong>Address</strong>    </th><td>".$retVal2[4]."</td></tr>";
}	
?>
</table>
</table>
</div>
</body>
</html>

