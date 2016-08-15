<?php
session_start();
session_destroy(); //Destroying session to logout user
header("Location:login.php"); //Redirecting to login page after logging out the user
?>
