<!DOCTYPE html>
<html>
<head>
	 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Safe Residence</title>
	<link rel="stylesheet" type="text/css" href="dhaka_hotel.css">

</head>
<body>
 <ul>
  <li><a href="/Hotel_Management/index.php">Home</a></li>
  <li><a href="#">Contact Us</a></li>
  <li><a href="#">User Information</a></li>
  <li><a href="/Hotel_Management/description.html">District List</a></li>
    <li><a href="RBH_admin.php">Admin Panel</a></li>
 </ul>

 <div class="hotel_list">
 	<li><a href="PPSH.php" style="border-top:1px solid black;">Pan Pacific Sonargaon Hotel</a></li>
 	<li><a href="#" style="background-color: #4CAF50">Ruposhi Bangla Hotel</a></li>
 	<li><a href="RWGH.php">Radisson Water Garden Hotel</a></li>
 	<li><a href="#">Regency Hotel And Resort</a></li>
 	<li><a href="#">Sweet Dream Boutiqe Hotel</a></li>
 	<li><a href="#">The Westin Hotel</a></li>
 	<li><a href="#">Best Western La Vinci Hotel</a></li>
 	<li><a href="#">Orchard Plaza Hotel</a></li>
 	<li><a href="#">Grand Prince Hotel</a></li>
 </div>

<div id="ht">
<?php
$db=mysqli_connect("localhost","root","","hotel_management");

$check = "SELECT * FROM dhaka_hotels WHERE ID = 2";
$result=mysqli_query($db, $check);
$row = mysqli_fetch_row($result);
?>


<p id="design1"> Hotel ID : <span id="inline"><?php echo $row[0] ?></span></p>
<p id="design1"> Hotel Name : <span id="inline"><?php echo $row[1] ?></span></p>
<p id="design1"> Hotel Address : <span id="inline"><?php echo $row[2] ?></span></p>
<p id="design2"> Hotel Phone No : <span id="inline"><?php echo $row[3] ?></span></p>
<p id="design2"> Hotel Fax No : <span id="inline"><?php echo $row[4] ?></span></p>
<p id="design2"> Hotel Email : <span id="inline"><?php echo $row[5] ?></span></p>
<p id="design2"> Hotel Website : <span id="inline"><?php echo $row[6] ?></span></p>
<p id="design1">Available Seats  </p>
<p id="design3"> First &nbsp Floor : <span id="inline"><?php echo $row[7] ?></span></p>
<p id="design3"> Second Floor : <span id="inline"><?php echo $row[8] ?></span></p>
<p id="design3"> Third &nbsp Floor : <span id="inline"><?php echo $row[9] ?></span></p>
<p id="design3"> Fourth Floor : <span id="inline"><?php echo $row[10] ?></span></p>

</div>
</body>
</html>