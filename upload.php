<?php require("includes/connection.php");?> 
<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
session_start(); //Starting session
if(isset($_SESSION['active_folder_id'])){
	$sql="select file_path from user_files where id='".$_SESSION['active_folder_id']."'";
	$result = $conn->query($sql);
	$value = mysqli_fetch_object($result);
	$target_dir =$value->file_path;
	$target_file = $target_dir."/" . basename($_FILES["fileToUpload"]["name"]);
	$dir_type = "file";
	if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $target_file)){
		$sql="INSERT INTO user_files(dir_type,file_name,file_path,parent_id,user_id) values('".$dir_type."','".$_FILES['fileToUpload']['name']."','".$target_file."','".$_SESSION['active_folder_id']."','".$_SESSION['user_id']."')";
		$conn->query($sql);
	}
	header("Location: myfolder.php?id=".$_SESSION['active_folder_id']);
}
else{
	$target_dir = $_SESSION["user_path"];
	$target_file = $target_dir."/" . basename($_FILES["fileToUpload"]["name"]);
	$uploadOk = 1;
	if(move_uploaded_file($_FILES['fileToUpload']['tmp_name'], $target_file))
	{
		$sql="INSERT INTO user_files(file_name,file_path,user_id) values('".$_FILES['fileToUpload']['name']."','".$target_file."','".$_SESSION['user_id']."')"; //Adding file entry in database with file name, file path and user-id 
	 	$conn->query($sql);
	 	echo "The file ". basename( $_FILES['fileToUpload']['name']). " is uploaded"; //Display message that file is uploaded
	}
	else { 
	 echo "Problem uploading file";
	}
	header("Location: file_manager.php"); //Redirecting to file_manager.php page
}
?>