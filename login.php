
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>CodeReview14</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <!-- favicon.ico -->
  <link href="favicon.ico" rel="shortcut icon">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800" rel="stylesheet">
  <!-- Bootstrap CSS File -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Libraries CSS Files -->
  <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="lib/animate-css/animate.min.css" rel="stylesheet">
  <!-- Main Stylesheet File -->
  <link href="css/style.css" rel="stylesheet">
</head>

<body>
  <div id="preloader"></div>
  <section id="hero">

    <div class="hero-container">
      <div class="wow fadeIn">
        <div class="hero-logo">
          <h1>Please LogIn To Your Account</h1>
        </div>
    </div>
  </section>
<header id="header">
    <div class="container">
      <nav id="nav-menu-container">
        <ul class="nav-menu">
          <li class="menu-active"><a href="index.php">Home</a></li>
          <li><a href="index.php">All Events</a></li>
        </ul>
      </nav>
    </div>
  </header>


<?php
 ob_start();
 session_start();
 require_once 'dbconnect.php';

  // it will never let you open index(login) page if session is set
 if ( isset($_SESSION['user'])!="" ) {
  header("Location: home.php");
  exit;
 }

  $error = false;

 if( isset($_POST['btn-login']) ) {

  // prevent sql injections/ clear user invalid inputs
  $email = trim($_POST['email']);
  $email = strip_tags($email);
  $email = htmlspecialchars($email);

  $pass = trim($_POST['pass']);
  $pass = strip_tags($pass);
  $pass = htmlspecialchars($pass);

  // prevent sql injections / clear user invalid inputs

  if(empty($email)){
   $error = true;
   $emailError = "Please enter your email address.";
  } else if ( !filter_var($email,FILTER_VALIDATE_EMAIL) ) {
   $error = true;
   $emailError = "Please enter valid email address.";
  }

   if(empty($pass)){
   $error = true;
   $passError = "Please enter your password.";
  }

  // if there's no error, continue to login
  if (!$error) {
   $password = hash('sha256', $pass); // password hashing using SHA256
   $res=mysqli_query($conn, "SELECT userId, userName, userPass FROM users WHERE userEmail='$email'");
   $row=mysqli_fetch_array($res, MYSQLI_ASSOC);
   $count = mysqli_num_rows($res); // if uname/pass correct it returns must be 1 row

   if( $count == 1 && $row['userPass']==$password ) {
    $_SESSION['user'] = $row['userId'];
    header("Location: home.php");
   } else {
    $errMSG = "Sorry Only Admin's can LogIn..";
   }
  }
 }

?>

    <div class="container" >
      <div class="row">
        <div class="col-lg-12 col-sm-6 wow fadeInLeft delay-05s">
          <div class="login-list">
             <form class="text-center" method="post" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>" autocomplete="off" >
              
             <h2>Sign In.</h2>
             <hr />
                <?php
                if ( isset($errMSG) ){
                echo $errMSG; ?>
                  <?php
                   }
                   ?>
             <input type="email" name="email" class="form-control" placeholder="Your Email" value="<?php echo $email; ?>" maxlength="40" />

             <span class="text-danger"><?php echo $emailError; ?></span>

             <input  type="password" name="pass" class="form-control" placeholder="Your Password" maxlength="15" />
       
            <span class="text-danger"><?php echo $passError; ?></span>
             <hr />

             <button class="btn btn-block btn-primary" class="btn btn-default" type="submit" name="btn-login">Sign In</button>

             <hr />
             <a class="btn btn-block btn-primary"  href="index.php">back</a>
    </form>
    </div>
</div>
            
          </div>
        </div>

      </div>
    </div>
   
  <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

  <!-- Required JavaScript Libraries -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="lib/superfish/hoverIntent.js"></script>
  <script src="lib/superfish/superfish.min.js"></script>
  <script src="lib/morphext/morphext.min.js"></script>
  <script src="lib/wow/wow.min.js"></script>
  <script src="lib/stickyjs/sticky.js"></script>
  <script src="lib/easing/easing.js"></script>

  <!-- Template Specisifc Custom Javascript File -->
  <script src="js/custom.js"></script>

  <script src="contactform/contactform.js"></script>

</body>
</html>

<?php ob_end_flush(); ?>

