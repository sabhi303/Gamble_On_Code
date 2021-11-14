<?php 
  include "db.php";
  session_start();
  
  if(!isset($_SESSION['RegistrationID'])){
       header('location: login.php');
    }
  else{
  $regid =$_SESSION['RegistrationID']; 
  if($_SERVER["REQUEST_METHOD"] == "POST"){

  $name = $_POST['name'];
  $email = $_POST['email'];
  $phone = $_POST['phone'];
  $college = $_POST['college'];
  $lang = $_POST['language'];
  $regid =$_SESSION['RegistrationID']; 
  $_SESSION['lang']=$lang;

  //check is remaining over here!
  //why not inserted in database?
  
    $sql = "INSERT INTO `users` VALUES ('$regid','$name', '$email', '$phone','$college','$lang')";
    $result = mysqli_query($conn, $sql);
    if (!$result)
    {
            echo "<script>alert('Something bad happened! Please Try Again!');</script>";
            header('location:registration.php');
    }
    else
        header('location: round1.php');

  } //method==post
} //isset()
      
?>
<!DOCTYPE html>
<html>
  <title>Registration-Gamble On Code</title>
  <head>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
     <!-- <link rel="stylesheet" href="css/bootstrap.min.css">  -->
     <style>
      html, body {
      display: flex;
      justify-content: center;
      font-family: Roboto, Arial, sans-serif;
      font-size: 15px;

      }
      body{
        background-image:url("media/register.jpg");
        background-size: cover;
      background-repeat: no-repeat;
      }
      form {
        margin-top: 52%;
        color:cyan;
      border: 0px solid #000;
      border-radius: 14px;
      background: rgba(44, 65, 68, 0.25);
      background: -webkit-linear-gradient(bottom, rgba(44, 65, 68, 0.25), rgba(1, 221, 255, 0.25));
      background: -moz-linear-gradient(bottom, rgba(44, 65, 68, 0.25), rgba(1, 221, 255, 0.25));
      background: linear-gradient(to top, rgba(44, 65, 68, 0.25), rgba(1, 221, 255, 0.25));
        }
      input[type=text], input[type=password],input[type=email] {
      width: 100%;
      padding: 16px 8px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      }
      .icon {
      font-size: 110px;
      display: flex;
      justify-content: center;
      color: #4286f4;
      }
      h1 {
      text-align:center;
      fone-size:18;
      margin-top: 10px;
      }
      .formcontainer {
      text-align: center;
      margin: 24px 50px 12px;
      }
      .container {
      padding: 16px 0;
      text-align:left;
      }
      span.psw {
      float: right;
      padding-top: 0;
      padding-right: 15px;
      }
      /* Change styles for span on extra small screens */
      @media screen and (max-width: 300px) {
      span.psw {
      display: block;
      float: none;
      }
      button:hover{
        box-shadow: 0 0 250px rgba(0,255,255,1) !important;
      }
    </style>
  </head>
  <body>

    <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
      <h1 style="font-family: 'Helvactica;">SIGN UP</h1>
      <div class="formcontainer">
      <div class="container">
        <label for="name"><strong>Name</strong></label>
        <input type="text" placeholder="Enter name" name="name" required>
        <label for="email"><strong>E-Mail</strong></label><br>
        <input type="email" placeholder="Enter E-mail" name="email" required><br>
        <label for="phone"><strong>Mobile Number</strong></label>
        <input type="text" maxlength=10 placeholder="Enter Mobile NO" name="phone" required><br>
        <br>
        <div class="justify-content-center" style="display: flex;">
          <select class="form-control" required name="college" style="margin-right: 1vw; float: left;">
            <option value="">College</option>
            <option value="SCOE">SCOE</option>
            <option value="SKNCOE">SKNCOE</option>
            <option value="OTHER">OTHER</option>
          </select>
          <select class="form-control" required name="language" style="float: right;">
            <option value="">Language</option>
            <option value="c">C</option>
            <option value="c++">C++</option>
            <option value="python">Python</option>
          </select>
        </div>
      </div>
      <button type="submit" class="btn btn-dark btn-lg" style="box-shadow: 0 0 25px rgba(0,255,255,1) !important;"><strong>SIGN UP</strong></button>
     </div>
    </form>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
  </body>
</html>