<?php
include "connect.php";
session_start();
//$con = mysqli_connect("localhost","root","nopassword","hostelManagement");
?>
<html>
<head>
	<title>Hotel Management</title>
	<link rel="stylesheet" type="text/css" href="index.css">
</head>
<body>
	<legend>
	<h1>Login</h1>
	<div id="loginDivision">
		<form action="index.php" method="POST">
			<input type="text" name="username" placeholder="username">
			<br>
			<input type="password" name="password" placeholder="password"><br>
			<input type="submit" name="login" value="Login"> 
		</form>
	</div>
	<h1>Sign Up</h1>
	<div id="signupDivision">
		<form action="index.php" method="POST">
			<input type="text" name="susername" placeholder="username"><br>
			<input type="password" name="spassword" placeholder="password"><br>
			<input type="email" name="semail" placeholder="email id"><br>
			<input type="submit" name="signup" value="Signup">
		</form>
	</div>
	</legend>
<?php
if(isset($_POST['login']))
{
	$sql = "select password from userDetails where username = '".$_POST['username']."'";
	//echo $sql;
	$row = mysqli_query($con,$sql);
	$retVal = mysqli_fetch_assoc($row);
	$password =  $retVal['password'];
	//$username = $retVal['username'];
	//$username == $_POST['username'] &&
	if($password == $_POST['password'] && $_POST['username'] )
	{	if($_POST['password']){
			$_SESSION['username'] = $_POST['username'];
			header("Location: home.php");
		}
	}
	else
	{
		echo "Enter the correct username or password";
	}

}

if(isset($_POST['signup']))
{
	$sql = "insert into userDetails ( username, password, email ) value ( '".$_POST['susername']."',
		'".$_POST['spassword']."','".$_POST['semail']."')";
	//echo $sql;
	$row = mysqli_query($con,$sql);
	$_SESSION['username'] = $_POST['susername'];
	if($_POST['susername'] &&  $_POST['spassword'] && $_POST['semail']){		
		header("Location: home.php");
		
	}
	else{
		echo"enter the valid details";
	}

}
if($con)
{
//	echo "Connection Succesful";
}

?>
</body>
</html>
