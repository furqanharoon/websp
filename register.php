<?php require("includes/connection.php");?> 

<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
$email=$_POST["email"]; //Email send by user from sign-up form
$pwd=$_POST["pwd"]; //Password send by user from sign-up form
$uname=$_POST["uname"];//Username send by user from sign-up form
$id1 = 1;
$query_user = "INSERT INTO users (username, password, email) VALUES ('$uname','$pwd','$email')"; //Adding user into database
$result = $conn->query($query_user);
if($result)
	{
		$sql = "SELECT id,username FROM users WHERE email='$email' limit 1"; //Selecting newly created user
		$result = $conn->query($sql);
		$value = mysqli_fetch_object($result);
		session_start();
  	$_SESSION['user_id']=$value->id; //Storing user id in Session
  	$_SESSION['user_path']=getcwd().'/'.($value->id."-".$value->username); //Storing user directory path in session
  	// $_SESSION['user_path']=getcwd().'/'.'tmp'.($value->id."-".$value->username);
  	$old = umask(0); 
  	mkdir($_SESSION['user_path'],0777); //Making user directory first time after signup
  	umask($old); 
  	// chmod($_SESSION['user_path'], 777);
  	header("Location: file_manager.php"); //Redirecting to file_manager.php page
	}
	else
	{
		header("Location: file_manager.php");
	}
?>