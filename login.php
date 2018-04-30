<?php
$db=mysqli_connect("localhost","root","","hotel_management");


$fn = $_POST['name'];
$pw = $_POST['password'];


$check = "SELECT Password FROM sign_up WHERE Name = '$fn'";
$result=mysqli_query($db, $check);
$row = mysqli_fetch_row($result);


if($pw==$row[0])
	header("Location: description.html");
else
	header("Location: wrong_pass.html");

?>
</body>
</html> 
