<?php require("includes/connection.php");?> 

<?php
$email=$_POST["email"]; //Email entred by user in form
$pwd=$_POST["pwd"]; // Password entred by user in form
$sql = "SELECT id,username FROM users WHERE email='$email' AND password = '$pwd' limit 1"; //Getting id and username of user where email and password match 
$result = $conn->query($sql);
$value = mysqli_fetch_object($result);
if ($value){
	session_start();
	$_SESSION['user_id']=$value->id;
	$_SESSION['user_path']=getcwd().'/'.($value->id."-".$value->username); //Getting user directory path
	header("Location: file_manager.php"); //Redirecting to file_manager.php page
}
else{
	header("Location: login.php"); //Redirecting to login.php page
}
?>