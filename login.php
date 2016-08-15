<?php include("includes/header.html");?>
<?php
session_start();
if(isset($_SESSION['user_id'])){
  header("Location: file_manager.php"); //Here we check if user is already signed-in then go to file_manager page
}
?>

<body>
  <div class="container">
    <!-- The form below is sign-in form and it takes user's email and password and pass these to action.php page -->
   	<form class="form-signin" method="POST" action="signin.php">
      <h2 class="form-signin-heading">Please sign in</h2>
      <label for="inputEmail" class="sr-only">Email address</label>
      <input type="email" name = "email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
      <label for="inputPassword" class="sr-only">Password</label>
      <input type="password" id="inputPassword" name = "pwd"  class="form-control" placeholder="Password" required="">
      <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>
    <a href="index.php">Signup</a> <!-- Displaying a link to go to sign-up page -->
  </div>

</body>