<?php
$db=mysqli_connect("localhost","root","","hotel_management");


$first = $_POST['ff'];
$second = $_POST['sf'];
$third = $_POST['tf'];
$fourth = $_POST['fof'];



    $sql="Update dhaka_hotels SET Floor_01 = '$first', Floor_02 = '$second', Floor_03 = '$third', Floor_04 = '$fourth' where ID = 1";
    $result=mysqli_query($db, $sql);

header("Location: PPSH.php");

?>
</body>
</html> 
