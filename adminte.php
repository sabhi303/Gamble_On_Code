<?php
	
	session_start();
	include "db.php";

?>
<!DOCTYPE html>
<html>
<head>
	<title>Admin-Gamble On Code</title>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<style type="text/css">
		.formdiv{
			position: fixed;
			min-width: 100%;
			/*height: 10%;*/
			padding-top: 3%;
			/*background-color: rgba(0,180,190,0.3);*/
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
			padding-top: 10%;
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
			border-radius: 5px 4px;
			background-color: rgba(0,100,120,0.7);
		}
		th{
			background-color: rgba(0,100,120,0.8);
			font-size: 18px;
			width: 500px;
			border-radius: 5px 4px;
		}
		#myInput{
				background-color: rgba(0,100,120,0.3);
				color: white;
				border-radius: 4px 15px;
		}
	</style>

</head>
<body>

	<div class="formdiv" align="center">

		  <button id="users" class="btn btn-info" style="width: 10%; margin-left: 5%;">Refresh</button>
	</div> <!-- //formdiv -->


	<div class="regitable" align="center">
		
		<input type="text" class="form-control"  id="myInput" placeholder="Search" style="width: 60%;"><br>

		<table id="myTable" style="width: 65%">
			  <thead>
			    <tr>
			      <th scope="col">Registration ID</th>
			      <th scope="col">Name</th>
			      <th scope="col">Language</th>
			      <th scope="col">Minutes</th>
			      <th scope="col">Seconds</th>
			      <th scope="col">Wallet</th>
			    </tr>
			  </thead>
			  <tbody>
			  	<?php 
					$sql = "SELECT users.RegistrationID, users.name,users.language,rd1active.minTime,rd1active.secTime, rd1active.wallet FROM users INNER JOIN rd1active ON users.RegistrationID = rd1active.RegistrationID";
					$result = mysqli_query($conn, $sql);
					while($row = mysqli_fetch_assoc($result)) { ?>
			    <tr>
			      <td scope="row"><?php echo $row['RegistrationID'] ?></td>
			      <td scope="row"><?php echo $row['name'] ?></td>
			      <td scope="row"><?php echo $row['language'] ?></td>
			      <td scope="row"><?php echo $row['minTime'] ?></td>
			      <td scope="row"><?php echo $row['secTime'] ?></td>
			      <td scope="row"><?php echo $row['wallet'] ?></td>
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

		$('#users').click( function() {
			location.reload(true);
		});


	</script>

</body>
</html>