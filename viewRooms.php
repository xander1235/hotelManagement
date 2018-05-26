<?php
session_start();
include "connect.php";
?>
<html>
<head>
<title>View rooms</title>
<script type="text/javascript">
var book = new Array();
var toggle = 0;
function booker(id,rent)
{
	var btn = document.getElementById(id);
	//window.alert(id);
	var array = [id,rent];
	var i;	
	if(toggle == 0)
	{
		count = 0;
		
		
	/*for ( i  = 0; i < book.length; i ++ )
		{
			if ( book[i] != array)
			{
				count ++;
			}
			else
			{
				break;
			}
		}*/
		//if ( count == book.length)
		//{
			book.push(array);
		//}
		btn.innerHTML = "Booked";
		toggle = 1;
	}
	else
	{
		toggle = 0;
		btn.innerHTML = "Book Now";
		Cancel(id);
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
			xmlhttp.open("GET","bookBanquetHall.php?roomId="+id,true);
			xmlhttp.send();
			//document.getElementById(id).style.display;
		}
		
	
	}
}
function finalise()
{
	var n = book.length;
	var i = 0;
	var total = 0;
	for ( i = 0; i < n; i ++ )
	{
		var p = document.createElement("p");
		var text = document.createTextNode(book[i][0] + " ");
		p.appendChild(text);
		var text = document.createTextNode(book[i][1] + " ");
		p.appendChild(text);
		var division = document.getElementById("dump");
		division.appendChild(p);
		total += Number(book[i][1]);	
	}
	var totalText = document.getElementById("total");
	totalText.innerHTML = total;
	//var totalText = document.createTextNode(total);
	//p.appendChild(totalText);
	//division.appendChild(p);
}
function pay()
{
	//window.alert("Keka");
	var i;
	for ( i = 0; i < book.length; i ++)
	{
		var xmlHttp = new XMLHttpRequest();
	 xmlHttp.onreadystatechange= function()
	 {
		if(this.readyState == 4 && this.status == 200)
		{
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
	<a href="home.php" >Home Page</a>
<h1>These are the rooms of 

<?php
$hotelId = $_SESSION['hotelId'];
echo $_SESSION['hotelName']."</h1>";
echo "<br> The available rooms are <br>";
$sql = "select * from roomDetails where hotelId = '".$hotelId."' and availabity = 1";
//echo $sql;
$row = mysqli_query($con,$sql);
if($row)
{
//	echo "Query Succesful";
}
else
{
	echo "Query Unsuccesful";
}
$numberOfRows = mysqli_num_rows($row);
echo "The number of available rooms is ".$numberOfRows;
echo "<table><tr><th>Name</th><th>Type</th><th>Rent</th><th>Book</th></tr>";
for($i = 0;$i<$numberOfRows;$i++)
{
	echo "<tr>";
	$retVal = mysqli_fetch_assoc($row);
	echo "<td>".$retVal['roomName']."</td>";
	$sql2 = "select type from roomType where id = ".$retVal['roomType'];
	$row2 = mysqli_query($con,$sql2);
	$retVal2 = mysqli_fetch_assoc($row2);
	echo "<td>".$retVal2['type']."</td>";
	echo "<td>".$retVal['rent']."</td>";
	echo "<td><button id='".$retVal['id']."' 
	onclick='booker(".$retVal['id'].",\"".$retVal['rent']."\")'>
	Book Now</button></td>";
	echo "</tr>";
}
echo "</table>";
echo "<br><button id='finalise' 
onclick='finalise()'>Finalise</button>";
?>


<div id="modal">
<div id="dump"></div>
<h1>Total is </h1><p id="total"></p>
<button onclick="pay()">Pay</button>
</div>
</body>
</html>
