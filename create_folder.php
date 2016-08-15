<?php require("includes/connection.php");?> 
<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
session_start(); //Starting session
if(isset($_SESSION['active_folder_id'])){
	$sql="select file_path from user_files where id='".$_SESSION['active_folder_id']."'";
	$result = $conn->query($sql);
	$value = mysqli_fetch_object($result);
	$folder_path=$value->file_path;
	$file_path = $folder_path.'/'.$_POST['folderName'];
	$old = umask(0); 
	mkdir($folder_path.'/'.$_POST['folderName'],0777); 
	umask($old);  
	$dir_type = "folder";

	$sql="INSERT INTO user_files(dir_type,file_name,file_path,parent_id,user_id) values('".$dir_type."','".$_POST['folderName']."','".$file_path."','".$_SESSION['active_folder_id']."','".$_SESSION['user_id']."')";
	$conn->query($sql);
	header("Location: myfolder.php?id=".$_SESSION['active_folder_id']);
}
else{
	$old = umask(0); 
	mkdir($_SESSION['user_path'].'/'.$_POST['folderName'],0777);
	umask($old);  
	$dir_type = "folder";
	$file_path = $_SESSION['user_path'].'/'.$_POST['folderName'];
	$sql="INSERT INTO user_files(dir_type,file_name,file_path,user_id) values('".$dir_type."','".$_POST['folderName']."','".$file_path."','".$_SESSION['user_id']."')"; //Adding file entry in database with file name, file path and user-id 
	$conn->query($sql);
	// header("Location: file_manager.php"); //Redirecting to file_manager.php page
}
?>