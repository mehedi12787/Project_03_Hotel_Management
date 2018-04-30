<?php
/*$servername = "localhost";
$username = "root";
$password = "";
$database = "hotel_management";
 
// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";



INSERT into sign_up (Name, Email, Password) VALUES ("tohid","aadd","asdf");*/

$db=mysqli_connect("localhost","root","","hotel_management");

$fn = $_POST['full_name'];
$pw = $_POST['pass_word'];
$em = $_POST['e_mail'];
      
      $sql="insert into sign_up(Name,Email,Password)values('$fn','$em','$pw')";
      $result=mysqli_query($db, $sql);

header("Location: reg_success.html");
?> 