<?php require("includes/connection.php");?> 
<?php
error_reporting(E_ALL);
ini_set('display_errors', '1');
	
	if(isset($_GET["id"])){

		$select="select * from user_files where id='".$_GET['id']."'"; //Selecting File from UserFiles table
		$res=mysqli_fetch_object($conn->query($select)); //Executing the above mentioned query
		
		echo $res->file_path;
		if ($res->dir_type=='folder'){
			system("rm -rf ".escapeshellarg($res->file_path));
			//rmdir($res->file_path);
		}
		else{
			if(is_file($res->file_path)){
				unlink($res->file_path); // If file exist in database, then delete the file from directory 
			}
		}
		$delete="delete from user_files where id='".$_GET['id']."' or parent_id='".$_GET['id']."'"; //Query for Deleting file from database
		$conn->query($delete);
	}
	header("Location: file_manager.php"); //Redirecting to file_manager.php page

?>