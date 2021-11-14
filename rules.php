<!DOCTYPE html>
<html>
<head>
	<title>Rules-Gamble On Code</title>
	
	<style type="text/css">
		body{
			background-image: url('media/rules.jpg');
			background-size:cover;
			background-repeat: no-repeat;
		}
		.ruleshere{
			width: 40%;
			margin-top: 15%;
			margin: 0;
			margin-left: 55%;
			position: absolute;
			top: 50%;
			-ms-transform: translateY(-50%);
			transform: translateY(-50%);
			/*borders*/
			border: 10px solid black;
			border-radius: 15px;

			/*font*/
			font-size: 16pt;

			/*back color*/
			/*background-color: rgba(255,255,255,0.2);*/
		}
		#lighting{
			color: black;
			padding : 2% 2% 2% 2%;
			margin : 2%;
			border : 9px dotted red;
		}
	</style>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>
	
	<div class="ruleshere">
		<div id="lighting">
			<h3 align="center">Rules</h3>
		<ul>
			<li>
				Prize(s) will be as announced in the individual contest description.
			</li>
			<li>
				 Prize claim deadline: 14 (fourteen) days after the delivered notification
			</li>
			<li>
				Potential winners will be notified via Instagram within 1 day following the public announcement as described in 7. above.
			</li>
			<li>
				If the notification is returned as undeliverable, and/or if no response is received to info@seemycity.com within the specified prize claim deadline (b), we may award the prize to the next highest winner or determine an alternative potential winner.
			</li>
			<li>
				Limit one prize per person, per contest.
			</li>
		</ul>
		</div>
	</div>

	<!-- scripting -->
	<script type="text/javascript">
		
		chngbcolor();
		var r, g, b;
		function chngbcolor(){
			
			r = getRandomInt();
			// console.log(r);
			g = getRandomInt()
			b = getRandomInt();
			document.getElementById('lighting').style.borderColor = "rgb("+r.toString()+","+g.toString()+","+b.toString()+")";
		}
		setInterval(chngbcolor, 400);

		function getRandomInt() {
			  return Math.floor(Math.random() * Math.floor(255));
		}

	</script>
</body>
</html>