<?php 
	session_start();
	include "db.php";
	if(!isset($_SESSION['userqued']))
		$_SESSION['userqued'] = array();
	if(!isset($_SESSION['RegistrationID']))
		header('location: login.php');
?>
<!DOCTYPE html>
<html>
<head>
<!-- <script language="javascript" type="text/javascript">
	window.history.forward();
</script> -->
	<title>Round</title>
	<link rel='stylesheet' href='css/progressbar.css'>
	<link rel="stylesheet" type="text/css" href="css/logo.css">
	<style type="text/css">
		body{
			background-image: url("media/round1.png");
			background-size: cover;
			background-repeat: no-repeat;
		}
		.outer{
			margin: auto;
		}
		.outer2{
			margin: auto;
		}
		.w1 div{
			min-height: 100px;
			background-color: #DCDCDC;
			border-radius: 5px;
			padding: 2%;
		}
		.w2 div{
			padding: 3%;
			min-height: 75px;
			background-color:  	 	#F8F8FF;
			border-radius: 5px;
			font-size: 18px;
			font-family: "Calibri";
		}
		.w3 div{
			padding: 3%;
			min-height: 75px;
			background-color: #E6E6FA;
			border-radius: 5px;
			font-size: 18px;
			font-family: "Calibri";
		}
		.w4 input{
			width: 150px;
			height: 30px;
			margin:2%;
			text-align: center;
			border-radius: 50px;
			border:none;
			color: black;
			font-size: 14px;
		}
		.w4 input[type=submit]{
			background-color: #3CB371;
		}
		.w4 input[type=button]{
			background-color: tomato;
		}
		footer{
			position: absolute;
			bottom: 0;
			left: 0;
			width: 100%;
			text-align: center;
			color: #E6E6FA;
			color: #fff;
			background-color: #333;
		}
		.score_card{
			background-color: #fff;
			border-radius: 0 0 30px 30px;
			box-shadow: 0 0 15px 1px rgba(0,0,0,0.5);
			text-align: center;
			padding: 5%;
			margin: 0 auto;
			width: 80%;
		}
		.score_card .score{
			width: 100%;
			text-align: left;
			padding: 0 0 0 10%;
			margin: 0;
		}
		.score_card .head{
			font-size: 30px;
			font-family: "Verdana";
			margin: 0;
		}
		.score_card .time{
			text-align: center;
			width: 100%;
			padding: 2% 0 2% 0;
			margin: 0;
		}

		.bet{
			font-size: 50px !important;
			text-align: center;
		}
		h3{
			font-size: 20px !important;
		}
	</style>
</head>
<body>
	
	<table width="100%" cellspacing="0" style="margin-top: 1%;">
		<tr>
			<td width="20%" valign="top">
				<div class="score_card">
					<p class="head">Timer</p>
					<p class="time" style="font-size: 25px;"><span style="color:red;"><label id="time">
					</label></span></p>
				</div>
			</td>
			<td width="60%">
				<h1 style="text-align: center; margin: -10px;font-family: 'Verdana'; color: white;">	</h1>
				<div style="text-align: center;margin: 0 auto;padding: 0;">
					<p class="blink">Gamble On Code </p>
				</div>

		<div id="divoption">
					<table class="outer" width="100%" cellspacing="3">
						
						<tr>
							<td colspan="2" class="w1" ><div><textarea id="question" style="width: 98%;min-height: 120px; resize: none; border-radius: 5px; padding: 1%;font-size: 18px; " disabled="disabled"></textarea></div></td>
						</tr>
						<tr>
							<td class="w2" width="50%" ><div><input type="radio" name="option" value="1"><div id="option1">  </div></div></td>
							<td class="w3" width="50%" ><div><input type="radio" name="option" value="2"><div id="option2">	 </div></div></td>
						</tr>	
						<tr>
							<td class="w3" width="50%" ><div><input type="radio" name="option" value="3"><div id="option3">	</div></div></td>
							<td class="w2" width="50%" ><div><input type="radio" name="option" value="4"><div id="option4">	</div></div></td>
						</tr>
					</table>
					<table class="outer2" width="50%" cellspacing="0">
						
						<tr >
							<td colspan="2" class="w4" style="text-align: center"><input type="submit" id="nextBt" name="submit" value="Submit"></td>
						</tr>

						<tr >
							<td colspan="2" class="w4" style="text-align: center"><input type="submit" id="submittest" name="submit" value="SubmitTEST"></td>
						</tr>
					</table>
	
			</div>
				<div id="divwooption" style="margin-top:14%">
									<div class="meter red"><span id="progressbar" style="width: 0%"></span></div>

					<table class="outer" width="100%" cellspacing="3">
								
									<tr>
										<td colspan="2" class="w1" ><div><textarea id="question1" style="width: 98%;min-height: 220px; resize: none; border-radius: 5px; padding: 1%;font-size: 18px; " disabled="disabled"></textarea></div></td>
									</tr>
									<tr>
										<td class="w4" style="text-align: right;"><input type="submit" id="skipBt1" name="skip" value="Skip"></td>
										<td class="w4" style="text-align: left"><input type="submit" id="solveBt" name="submit" value="Bet"></td>
									</tr>
					</table>			
				</div>
				<div id="divbetting" style="margin-top:10%">
									<!-- <div class="meter red"><span id="progressbar" style="width: 0%"></span></div> -->

				<table class="outer" width="100%" cellspacing="3">
						
						<tr>
							<div >
							<td colspan="2" class="w1" ><div align="center" style="font-size: 2.8vh;">Betting Amount<br><input style="height: 8vh; width: 60%; font-size: 5vh;" type="number" required id="money" placeholder="" name="money" onkeypress="return isNumberKey(event)" ></div>
							</td>
							</div>
						</tr>
						<tr>
							<td class="w2" width="50%" ><div><input type="radio" name="bet" value="1.25"><div id="bet1" class="bet"><h3> 1.25</h3> </div></div></td>
							<td class="w3" width="50%" ><div><input type="radio" name="bet" value="1.5"><div id="bet2" class="bet"><h3>	1.5</h3> </div></div></td>
						</tr>	
						<tr>
							<td class="w3" width="50%" ><div><input type="radio" name="bet" value="1.75"><div id="bet3" class="bet"><h3>1.75</h3>	</div></div></td>
							<td class="w2" width="50%" ><div><input type="radio" name="bet" value="2"><div id="bet4" class="bet"><h3>2</h3>	</div></div></td>
						</tr>
						<tr>
							<td class="w4" style="text-align: right;"><input type="submit" id="skipBet" name="skip" value="Skip"></td>
							<td class="w4" style="text-align: left"><input type="submit" id="solveBet" name="solve" value="Solve"></td>
						</tr>
					</table>
					</div>


				<!-- </form> -->
			</td>
			<td width="20%" valign="top">
				<div class="score_card">
					<p class="head">Wallet</p>
					<p class="time" id="wallet" style="font-size: 25px;"><span style="color:red;"><label >
					</label></span></p>
				</div>
			</td>
		</tr>
	</table>
			
	

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">


  var ans;
  var cancelled = false;
  var skipalert = false;
  var timer;
  var wallet = <?php echo $_SESSION['wallet']; ?>;
  var multiplier;
  var betmoney = 0;
  var minTime = <?php echo $_SESSION['minTime']; ?>;
  var secTime = <?php echo $_SESSION['secTime']; ?>;

  set30minutes();
  function set30minutes(){

      refresh2();
      function refresh2()
      {
         setTimeout( function() {
          if(secTime<=0){
            minTime--;
            secTime=secTime+60;
          }
          secTime--;
          if (minTime <= 0) {
              alert("Session Time Expired!");
              submitTest();
              return;
          }
          else
          {
              var mytime = minTime+" : " + secTime;
              document.getElementById("time").innerHTML = mytime;
              refresh2();
         }
        }, 1000);
      }
  }





  $('#wallet').html(wallet);
  $(document).ready( function(){
    getQuestion();
  });
 
  $('#skipBt').click(function(){
  	wallet -=5;
  	$('#wallet').html(wallet);
    getQuestion();
  });

  $('#skipBet').click(function(){
  	wallet -=5;
  	$('#wallet').html(wallet);
    getQuestion();
  });

  $('#skipBt1').click(function(){
    wallet -=5;
  	$('#wallet').html(wallet);
    getQuestion();
  });
  $('#submittest').click(function(){
  	        	window.location.href = "result.php";
  	        });

  $('#nextBt').click(function(){
            var ele = document.getElementsByName("option"); 
            var useans = 0;
            var i=0;
            for(i = 0; i < ele.length; i++) { 
                if(ele[i].checked) {
                  useans = ele[i].value;
                  break; 
                }
            } 
    if(ans == useans){
      betmoney=parseInt(multiplier*betmoney);
      
      //alert("Correct!");
    }
    else{
      betmoney=parseInt(betmoney/multiplier);
      
      //alert("Khalli mAti");
    }
    wallet=wallet+betmoney;
    $("#wallet").html(wallet);
    ele[i].checked = false;
    getQuestion();
  });



  $('#solveBt').click(function(){
    //alert("solve bt madhe");
    cancelled = true;
    $("#money").val("");
    setBetting();
  });


  $(document).on('input', '#money', function(){
    betmoney = $("#money").val();

    // alert(coins);
   if(betmoney>wallet || betmoney<0){
    $("#money").val("");
    alert("Invalid input!");
   }  
   

})

  $('#solveBet').click(function(){
     		var ele = document.getElementsByName("bet"); 
            var useans = 0;
            var i=0;
            multiplier=0;
            for(i = 0; i < ele.length; i++) { 
                if(ele[i].checked) {
                  wallet=(wallet-betmoney);
    			  document.getElementById("wallet").innerHTML = wallet;
                  multiplier = parseFloat(ele[i].value);
                  // alert("userans\t"+useans);
                  break; 
                }
            } 
            ele[i].checked = false;

     if(betmoney == 0){

     	alert("Enter BetMoney!");
     	setBetting();

     }
     else{
		     document.getElementById("divwooption").style.display = 'none';  
		     document.getElementById("divoption").style.display = "block";
		    $('#divbetting').hide();
		 }

  });

  function getQuestion(){
  	betmoney = 0;
    $.ajax({
      type: "GET",
      data: {timeMin:minTime, timeSec: secTime, money: wallet},
      url: "round1ques.php",
    }).done(function( ques ) {
        	// alert(ques);
        var que = ques.substring(0, ques.length);
        que = JSON.parse(que);
        ans = que.answer;
        setVisibility();
        if(wallet <=0){
        	skipalert = true;
        	window.location.href = "result.php";
        }
        if(<?php echo count($_SESSION['userqued']); ?> ==72){
        	skipalert = true;
        	window.location.href = "result.php";
        }
        document.getElementById("question").value = que.question ;
        document.getElementById("question1").value = que.question ;
        document.getElementById("option1").innerHTML = que.option1;
        document.getElementById("option2").innerHTML = que.option2;
        document.getElementById("option3").innerHTML = que.option3;
        document.getElementById("option4").innerHTML = que.option4;

    });
    function setVisibility(){
      document.getElementById("divoption").style.display = "block" ? "none" : "block";
      document.getElementById("divwooption").style.display = "block";
      $('#divbetting').hide();
      clearTimeout(timer);
      cancelled = true;
      cancelled = false;
      set30seconds();
    }}

    function set30seconds(){
      var sec30onds = 30.0000;
      refresh();
      function refresh()
      {
        if(cancelled)
          return;
        timer = setTimeout( function() {
          if (sec30onds <= 0) {
              clearTimeout(timer);
              //alert("Time Expired n Bhau!");
              clearTimeout(timer);
              cancelled = true;
              $("#money").val("");
              setBetting();
              return;
          }
          else
          {
               setProgress();
               sec30onds -=1/100;
               refresh();
         }
        }, 10);
      }

      function setProgress(){
          
            var precent = (100*(sec30onds)/30);
            document.getElementById("progressbar").style.width = precent.toString()+"%";
      }
    }
    function setBetting(){
      document.getElementById("divoption").style.display = "none";
      document.getElementById("divwooption").style.display = "none";
      document.getElementById("divbetting").style.display = "block";
    }
    function isNumberKey(evt){
    var charCode = (evt.which) ? evt.which : evt.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
$(window).on('beforeunload', function(){
	if(skipalert);
	else
    	return false;
});

</script>
</body>
</html>