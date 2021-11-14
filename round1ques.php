<?php 	

	session_start();
	include "db.php";

		
		//$userid = $_SESSION['uid'];
		//$phone = $_SESSION['phone'];
		$minTime = 0;
		$secTime = 0;
		$result = NULL;
		if($_SERVER["REQUEST_METHOD"] == "GET"){
				$minTime = $_GET['timeMin'];
				$secTime = $_GET['timeSec'];
				$money = $_GET['money'];
				$regid = $_SESSION['RegistrationID'];
				$_SESSION['minTime'] = $minTime;
				$_SESSION['secTime'] = $secTime;
				$_SESSION['wallet'] = $money;
				$sql = "UPDATE `rd1active` SET `minTime`='$minTime',`secTime`='$secTime',`wallet`='$money' WHERE `RegistrationID`='$regid'";
				$result = mysqli_query($conn, $sql);
				if(!$result){
					//return something else here so that can be redirected
					header('Something bad happened!');
				}

		}
		
		//checking previously solved questions..
		 $currque = 0;
		 $userqued = $_SESSION['userqued'];

		 if(count($userqued)>72){
		 	//do something here so that can be redirected..
		 }

		while (1) {
		$currque = rand(1,72);
			if(in_array($currque, $userqued)){ continue;}
			else{ break;}
		 }

		array_push($_SESSION['userqued'], $currque);
		// $_SESSION['qcount'] = $_SESSION['qcount']+1;

		$query = "SELECT * FROM `round1` WHERE `sr no` = '$currque'";
		$result = mysqli_query($conn, $query);
		$row = mysqli_fetch_assoc($result);

		// Set up associative array
		$data = array('question'=> $row['question'],'option1'=>$row['option1'],
						'option2'=>$row['option2'], 'option3'=>$row['option3'],
						'option4'=>$row['option4'],'answer'=>$row['answer']);

		// JSON encode and send back to the server
		echo json_encode($data);

	//database result update logic write somewhere..
	//discuss if that goes here..

 ?>