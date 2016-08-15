<?php include("includes/header.html"); //include bootstrap classes to style the form?>
<?php include("includes/style.php");//include styling file?>
<?php include("includes/navbar.html");//include navbar file to show menu on top of page//?>
<?php require("includes/connection.php");//include connection file to make connection with database ?> 
<?php
session_start();
unset($_SESSION['active_folder_id']);
$result=$conn->query("select * from user_files where parent_id IS NULL and user_id=".$_SESSION["user_id"]);
	
?>
<body>
  <div class="container">
  	  	
  	<?php include("includes/upload_form.php");//include form file to show upload form on top of page//?>  	
  	<table class="table">
			<thead>
				<th>Id</th><th>File Name</th><th>Action</th><th>File Size</th>
			</thead>
			<tbody>
				<!-- In the loop below, all files of users are being displayed one by one in form of table row. We are displaying file ID, file name and button to delete file. if user will click on delete button then file will be deleted -->
				<?php while ($r=mysqli_fetch_object($result)) {
					if($r->dir_type=='folder'){
						echo "<tr>
							<td>$r->id</td>
							<td><a href='myfolder.php?id=$r->id' >$r->file_name</a></td>
							<td><a href='delete.php?id=$r->id' >delete</a></td>
						</tr>";

					}
					else{
						$fileSize = filesize($r->file_path);
						$fileSizeInWords = formatSizeUnits($fileSize);
						echo "<tr>
							<td>$r->id</td>
							<td>$r->file_name</td>
							<td><a href='delete.php?id=$r->id' >delete</a></td>
							<td>$fileSizeInWords</td>
						</tr>";
					}
				}   ?>
			</tbody>	
		</table>
	</div>
</body>

