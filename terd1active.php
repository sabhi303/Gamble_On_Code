<?php
	session_start();
	include "db.php";

?>
<!DOCTYPE html>
<html>
<head>
	<title>Administrator-Gamble On Code</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
		<h1>Round-1 : Active Users</h1>

		<div class="row">
			<div class="col-lg-2"></div>
		<div class="col-lg-8">

		<table class="table table-striped table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Registration ID</th>
		      <th scope="col">Minutes</th>
		      <th scope="col">Seconds</th>
		      <th scope="col">Wallet</th>
		    </tr>
		  </thead>
		  <tbody>
		  	<?php 
				$query = "SELECT * FROM `rd1active` ORDER BY `wallet` DESC";
				$result = mysqli_query($conn, $query);
				while($row = mysqli_fetch_assoc($result)) { ?>

		    <tr>
		      <th scope="row"><?php echo $row['RegistrationID'] ?></th>
		      <td><?php echo $row['minTime'] ?></td>
		      <td><?php echo $row['secTime'] ?></td>
		      <td><?php echo $row['wallet'] ?></td>
		      <td><button class="btn btn-light btn-sm" id="<?php echo $row['RegistrationID'] ?>">EDIT</button>
		    </tr>
		<?php } ?>
		 </tbody>
		</table>
	</div>
		<div class="col-lg-2"></div>
	</div>
</body>
</html>