<?php 
  include "db.php";
  session_start();

  if($_SERVER["REQUEST_METHOD"] == "POST"){
  $regid = $_POST['RegistrationID'];
  $password = $_POST['password'];
  $regidErr = "";	


  if ($regidErr == "") {
      $sql = "SELECT RegistrationID FROM register WHERE RegistrationID = '$regid' AND password = '$password'";
      $result = mysqli_query($conn, $sql);
      if (mysqli_num_rows($result) > 0) {


        $_SESSION['RegistrationID']=$regid;
        //header("location: registration.php");

      $sql = "SELECT RegistrationID,minTime,secTime,wallet FROM rd1active WHERE RegistrationID = '$regid'";
      $result = mysqli_query($conn, $sql);
      if (mysqli_num_rows($result) > 0) { 
          $row = mysqli_fetch_assoc($result);
          $_SESSION['minTime'] = $row['minTime'];
          $_SESSION['secTime'] = $row['secTime'];
          $_SESSION['wallet'] = $row['wallet'];
          if($_SESSION['minTime']<30)
              header('location: round1.php');
          else
              header('location: registration.php');
      }
      else{
          
              $sq = "INSERT INTO `rd1active`(`RegistrationID`) VALUES ('$regid')";
              $res = mysqli_query($conn, $sq);
              if(!$res){
                //do something different here,,
                $res = mysqli_query($conn, $sq);
              }
              $_SESSION['minTime'] = 30;
              $_SESSION['secTime'] = 0;
              $_SESSION['wallet'] = 60;
              header('location: registration.php');
      }


      }else{
        echo "<script>
            alert('You are not registered to the Competition OR you already finished the test.');
            </script>";
      }
    }
    else{
    	// echo $regid;
        echo "<script>
            alert('Enter Valid Credentials..');
            </script>";
      }
  }
      
?>

<html><!-- 
<script language="javascript" type="text/javascript">
  window.history.forward();
</script> -->
  <title>Login-Gamble On Code</title>
  <head>
    <style type="text/css">
      html, body {
      display: flex;
      justify-content: center;
      font-family: Roboto, Arial, sans-serif;
      font-size: 15px;
      }
      body{
        background-image:url("media/logjpg.jpg");
        background-size: cover;
      background-repeat: no-repeat;
      }
      form {
      margin-top: 37%;
      border: 5px solid #f1f1f1;
      background-color:rgba(0,0,0,0.5);
      border-radius: 10px;

      }
      input[type=text], input[type=password] {
      width: 100%;
      padding: 16px 8px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      box-sizing: border-box;
      }
      button {
      background-color: cyan;
      color: black;
      padding: 14px 0;
      margin: 10px 0;
      border: none;
      cursor: grab;
      width: 48%;
      font-size: 20px;
      }
      h1 {
      text-align:center;
      fone-size:18;
      color:cyan;
      }
      button:hover {
      opacity: 0.8;
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
    </style>
  </head>
  <body >

    <form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
      <!-- <h1>SIGN IN</h1>
       --><h1><br></h1>
      <div class="formcontainer">
      <div class="container">
        <label for="uname" style="color:cyan; font-size: 20px"><strong>Registration ID</strong></label>
        <input type="text" placeholder="Enter RegistrationID" name="RegistrationID" required>
        <label for="psw" style="color:cyan;font-size: 20px"><strong>Password</strong></label>
        <input type="password" placeholder="Enter Password" name="password" required>
      </div>
      <button type="submit"><strong>SIGN IN</strong></button>
     
    </form>
      <audio controls autoplay loop style="display: none;">
          <source src="Music/login.mp3" type="audio/mpeg">
          Your browser does not support the audio element.
    </audio>
  </body>
</html>