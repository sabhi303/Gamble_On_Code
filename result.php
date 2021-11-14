<?php
	session_start();
	include "db.php";
	if(!isset($_SESSION['RegistrationID']))
		header('location: login.php');
	else
	{
		$regid = $_SESSION['RegistrationID'];
		//Some Other required Things..
		//like wallet..
		if(isset($_SESSION['wallet']))
			$wallet = $_SESSION['wallet'];
		else
		{
			$sql = "SELECT `wallet` FROM `rd1active` where `RegistrationID`='$regid'";
			$result = mysqli_query($conn, $query);
			$row = mysqli_fetch_assoc($result);
			$wallet = $row['wallet'];
		}
  
		$sql = "SELECT `name` FROM `users` where `RegistrationID`='$regid'";
		$result = mysqli_query($conn, $sql);
		$row = mysqli_fetch_assoc($result);
	}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Result-Gamble On Code</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<style type="text/css">
		body{
			background-image: url('media/resultback.jpg');
			background-size: cover;
			background-repeat: no-repeat;
		}
		#thanks{
			margin: 10%;
			background-color: rgba(0,150,0,0.3);
			padding-bottom: 30px; 
			padding-top: 30px;
			border-radius:500px 50px; 
		}
	</style>
</head>
<body>
		<div class="text-center" id = "thanks">
			  <h1 class="display-3" ><B>Thank You&nbsp;<?php echo $row['name'] ?> !</B></h1>
			  <p class="lead" style="font-size: 35pt;"><strong>Your Score :&nbsp;<?php echo $wallet; ?>
			  	<img src="media/coin.png" style="width: 80pt; height: 35pt; margin-left: -20px;">
			  </strong></p>
			  <p class="display-4" style="font-size: 35pt;"><strong>Stay Connected for further instructions. </strong></p>
			  <br>

			    <a class="btn btn-danger btn-lg" href="credits.php" role="button">About Us!</a>
		</div>
</body>
</html>