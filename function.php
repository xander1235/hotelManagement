<html>
<head>
<title> Hall Booking</title>
<script type="text/javascript" >
//var book=new Array();
//var toggle=0;
function booker(){
	var btn = document.getElementById('btn');
	btn.innerHTML="Checked";	
	//window.alert("Button Working");
	/*if(toggle == 0)
	{
		var array = [id,rent];
		book.push(array);
		btn.innerHTML = "booked";
		toggle = 1;
	}
	else{
		toggle = 0;
		btn.innerHTML = "Book Now
	}*/
}
function finalise(){
//	var n = book.length;
//	var i = 0;
	var total = 0;
	for(i = 0; i < n; i++){
		var p = document.createElement("p");
		var text = document.createTextNode(book[i][0] + " ");
		p.appendChild(text);
		var text = document.createTextNode(book[i][1] + "   ");
		p.aappedChild(text);
		var division = document.getElementById("dump");
		division.appendChild(p);
		total += Number(book[i][1]);
	}
	var totalText = document.getElementById("total");
	totalText.innerHTML = total;
}
function pay(){
	var i
	for( i = 0; i <book.length; i++){
		var xmlHttp = new XMLHttpRequest();
		xmlHttp.onreadystatechange= function(){
			if(this.readystate == && this.status ==  200){
				window.alert(this.responseText);
			}
		}
		xmlHttp.open("GET","book.php?bookId="+book[i][0],true);
		xmlHttp.send();
	}
}
</script>
</head>
<body>
<?php
session_start();
include'connect.php';
	if($con){
		//echo "connection successful";
	}
	else{
		echo"connection unsuccess";
	}
	$city = $_SESSION['city'];
	$sql = "select * from hall where city= '".$city."' and availability=1";
	//echo $sql ;
	$row = mysqli_query($con,$sql);
	if($row){
		//	echo "query success";
	}
	else{
		echo "query unsuccess";
	}
	$retVal = mysqli_fetch_assoc($row);
?>

<h1> Welcome to 
<?php
	 echo $retVal['hallName']; 
?>
 Banquet Hall </h1>
<?php
echo "<br><button id='btn' onclick='booker()'>Book Now</button>" ;
	echo "<br>";
?>
	
<div id="modal">
<div id="dump"></div>
<h1>Total is </h1><p id="total"></p>
<button onclick="pay()">Pay</button>
</div>


</body>
</html>
