<!-- Form to upload file and send it to upload.php page when user will click on submit button -->
<?php
if(isset($_SESSION['size_exceed'])){
  echo '<div class="alert alert-danger">Sorry you have reached your limit of 10 Mb</div>';
  unset($_SESSION['size_exceed']);
}
?>   
  	<form action="upload.php" method="post" enctype="multipart/form-data">
	    <input type="file" name="fileToUpload" id="fileToUpload">
	    <input type="submit" value="Upload File" name="submit">
    </form>
    <button id='new-folder'>New folder</button>
    <form class = "form-common folder-form" action="create_folder.php" method="post" enctype="multipart/form-data">
    	<input type="text" name="folderName" id="folderName" placeholder="Enter Folder Name">
    	<input type="submit" value="Create My folder" name="submit">
    </form>

    <script type="text/javascript">
	$(document).ready(function(){
		$("#new-folder").click(function(){
			$(".folder-form").show();
		});
	})
</script>