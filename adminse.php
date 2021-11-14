<?php
	
	session_start();
	include "db.php";
	if($_SERVER["REQUEST_METHOD"] == "POST")
	{
		$regid = $_POST['RegistrationID'];
		$password = $_POST['password'];

		$sql = "INSERT INTO `register` VALUES ('$regid','$password')";
	    $result = mysqli_query($conn, $sql);
	    if (!$result)
	    {
	            echo "<script>alert('Something bad happened! Please Try Again!');</script>";
	    
	    }


	}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin-Gamble On Code</title>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<style type="text/css">
		.formdiv{
			position: absolute;
			width: 25%;
			padding-top: 13%;
			background-color: rgba(0,180,190,0.3);
			min-height: 100%;
			color: white;
		}
		input{
			text-align: center;
		}
		body{
			background-image: url('media/seadmin.jpg');
			background-size: cover;
			background-repeat: no-repeat; 
		}
		.regitable{
			position: /*absolute*/; 
			padding-left: 38%;
			padding-top: 15%;
			height: 100%;
			/*background-color: rgba(210,0,200,0.5);*/
			width: auto;
		}
		table{
			
			color: white;
			text-align: center;
			border : 1px solid black;

		}
		tr td{
			/*width: 80%;*/
			/*padding-left: 10px;*/
			border-radius: 15px 4px;
			background-color: rgba(0,100,120,0.7);
		}
		th{
			background-color: rgba(0,100,120,0.8);
			font-size: 18px;
			width: 500px;
			border-radius: 15px 4px;
		}
		#myInput{
				background-color: rgba(0,100,120,0.3);
				color: white;
				border-radius: 4px 15px;
		}
	</style>

</head>
<body>

	<div class="formdiv">
		<form method="POST" action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']); ?>">
		  <div class="form-group" style="text-align: center;">
		    <label for="exampleInputEmail1">Registration ID</label>
		    <input type="text" class="form-control" id="RegistrationID" aria-describedby="emailHelp" name="RegistrationID" placeholder="Enter Registration ID" style="width: 90%; margin-left: 5%;">
		    <small id="emailHelp" class="form-text text-muted">Note : This should not repeat..</small>
		  </div>
		  <div class="form-group" style="text-align: center;">
		    <label for="exampleInputPassword1">Password</label>
		    <input type="text" class="form-control"  name="password" placeholder="Password" style="width: 90%; margin-left: 5%;">
		  </div>
		  <button type="submit" class="btn btn-info" style="width: 90%; margin-left: 5%;">Submit</button>
		</form>
	</div> <!-- //formdiv -->


	<div class="regitable" align="center">
		
		<input type="text" class="form-control"  id="myInput" placeholder="Search" style="width: 60%;"><br>

		<table id="myTable" style="width: 65%">
		  <thead>
		    <tr>
		      <th scope="col">Registration ID</th>
		      <th scope="col">Password</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<?php 
				$query = "SELECT * FROM `register` ORDER BY `RegistrationID` DESC";
				$result = mysqli_query($conn, $query);
				while($row = mysqli_fetch_assoc($result)) { ?>

		    <tr>
		      <td scope="row"><?php echo $row['RegistrationID'] ?></td>
		      <td scope="row"><?php echo $row['password'] ?></td>
		    </tr>
		<?php } ?>
		 </tbody>
		</table>
	</div> <!-- regitable-->

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	</script>

</body>
</html>