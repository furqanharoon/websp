<?php include("includes/header.html");//include bootstrap classes to style the form?>
<?php
session_start();
if(isset($_SESSION['user_id'])){
  header("Location: file_manager.php"); //Here we check if user is already signed-in then go to file_manager page
}
?>

<body>
  <div class="container">
    <!-- The form below is sign-up form and it takes username, email and password and pass these to register.php page to create a new user -->
   	<form class="form-signin" method="POST" action="register.php">
      <h2 class="form-signin-heading">Please sign up</h2>
      <label for="inputUsername" class="sr-only">Username</label>
      <input type="text" name = "uname" id="inputuname" class="form-control" placeholder="Username" required="" autofocus="">
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" name = "email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" name = "pwd"  class="form-control" placeholder="Password" required="">
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
    <a href="login.php">Login</a><!-- Displaying a link to go to sign-in page -->
  </div> 
</body>