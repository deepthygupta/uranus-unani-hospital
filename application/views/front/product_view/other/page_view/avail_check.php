<?php 
if(!isset($_POST['submit']))
	$ser= "localhost";
	$use = "root";
	$paswd = "";
	$db = "rawsqzd";
	
	// Create connection
$conn = new mysqli($ser,$use,$paswd,$db);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
if(isset($_POST['submit']))
{
$pin=$_POST['pin'];

$result = mysql_query("SELECT * FROM available_pin WHERE pin_code = '$pin'");
if(mysql_num_rows($result) == 0) {
     echo "ok";
} else {
    echo "sorry";
}

//$mysqli = new mysqli($ser,$use,$paswd,$db);
//$result = $mysqli->query("SELECT * FROM available_pin WHERE pin_code = '$pin'");
//if($result->num_rows == 0) {
 //    echo "ok"
//} else {
//    echo "sorry"
}

$mysqli->close(); 
?>
