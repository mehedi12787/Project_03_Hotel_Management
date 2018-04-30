<?php
$db=mysqli_connect("localhost","root","","hotel_management");


$hotel_name = $_POST['hn'];
$floor_type = $_POST['ft'];
$single_double = $_POST['sd'];
$number = $_POST['nb'];



    $sql="Select Fare from fare_query where Hotel_Name = '$hotel_name' and Floor_Type = '$floor_type' and Single_Double = '$single_double'";
    $result=mysqli_query($db, $sql);
    $row = mysqli_fetch_row($result);

	$total_fare = $row[0] * $number;

?>

<script language="javascript">;
var x = '<?php echo $total_fare ;?>';
alert("Total Fare : "+ x + " Taka BDT");
</script>

<h1 style="color: red; text-align: center; margin-top: 25px;">Payment Now And Secure Your Room</h1>
<img style="margin-left: 300px;" src="online.png">

</body>
</html> 
