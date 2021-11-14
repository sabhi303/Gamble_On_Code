<?php 
  session_start();
  include "db.php";
  if(!isset($_SESSION['userqued']))
    $_SESSION['userqued'] = array();
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="./css/style.css">
    <link rel='stylesheet' href='css/progressbar.css'>
    <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
    <title>Gamble On Code</title>
</head>

<body>
    <!-- <div class="logo">
        <img src="./assets/logo.gif" alt="">
    </div> -->
    <div class="main-div">
        <div class="outer-border">
            <div class="inner-border">
               
              <div id="divoption">
                <div class="table" style="width: 100%;">
                    <table style="width: 100%;" border="1" cellspacing="10">
                        <tr>
                            <td colspan="2" class="question" style="border: none;">'
                                <div style="height: 100%; width: 100%;">
                                  <textarea id="question"></textarea>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="option">
                              <input type="radio" name="option" value="1">
                              <div id="option1" align="center"></div>
                            </td>
                            <td class="option">
                              <input type="radio" name="option" value="2">
                              <div id="option2" align="center"></div>
                            </td>
                        </tr>
                        <tr>
                            <td class="option">
                              <input type="radio" name="option" value="3">
                              <div id="option3" align="center"></div>
                            </td>
                            <td class="option">
                              <input type="radio" name="option" value="4">
                              <div id="option4" align="center"></div>
                            </td>
                        </tr>
                    </table>
                </div>
              </div>


              <div id="divbetting">
                <div class="table" style="width: 100%;">
                    <table style="width: 100%;" border="1" cellspacing="10">
                        <tr>
                          <td colspan="2" >
                            <div ><!-- Enter BetMoney -->
                              <input type="number" required id="money" style="font-size: 3vh;border:none; height: 12vh; width: 100% ; background:transparent;"  placeholder="Enter betting Amount" name="money" onkeypress="return isNumberKey(event)" >
                            </div>
                          </td>
                        </tr>
                        <tr>
                            <td class="option">
                              <input type="radio" name="option" value="1.25">
                              <div id="option1" align="center"> 1.25x</div>
                            </td>
                            <td class="option">
                              <input type="radio" name="option" value="1.5">
                              <div id="option2" align="center">1.5x</div>
                            </td>
                        </tr>
                        <tr>
                            <td class="option">
                              <input type="radio" name="option" value="1.75">
                              <div id="option3" align="center">1.75x</div>
                            </td>
                            <td class="option">
                              <input type="radio" name="option" value="2">
                              <div id="option4" align="center">2x</div>
                            </td>
                        </tr>
                    </table>
                </div>
              </div>



               <div id="divwooption">
                <div class="meter red"><span id="progressbar" style="width: 0%;"></span></div>
                <div class="table" style="width: 100%;">
                    <table style="width: 100%;" border="1" cellspacing="10">
                        <tr>
                            <td colspan="2" class="question1" style="border: none;">
                                <div style="height: 100%; width: 100%;">
                                  <textarea id="question1"></textarea>
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>
              </div>


                <div class="outer-card">
                    <div class="card">
                        <p>TIMER</p>
                        <h3  id="time"></h3>
                    </div>
                    <div class="card">
                        <p>WALLET</p>
                        <h3 id="wallet"></h3>
                    </div>
                    <div class="card">
                        <p>CURRENT BET</p>
                        <h3 id="currbet">Rs. 20</h3>
                    </div>
                    <div class="card">
                        <p>MULTIPLIER</p>
                        <h3 id="currmulti">2x</h3>
                    </div>
                </div>
            </div>
 
            <div id="controlsfirst">
            <div class="controls" align="center">
                <table style="width: 90%;">
                    <tr>
                        <td>
                          <div class="div1">
                              <!-- <button class="div2" id="skipBt1">Skip</button> -->
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                              <button class="div2" id="skipBt1">Skip</button>
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                                <button class="div5" id="solveBt" >Bet</button>
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                            
                              <button class="div4" id="submitTest">Submit Test</button> 
                            </div>
                        </td>
                        <td>
                          <div class="div1">
                              <!-- <button class="div2" id="skipBt1">Skip</button> -->
                            </div>
                        </td>
                    </tr>
                </table>
              </div>
          </div>
          


            <div id="controlssolve">
                 <div class="controls" align="center">
                <table style="width: 90%;">
                    <tr>
                        <td>
                          <div class="div1">
                              <!-- <button class="div2" id="skipBt1">Skip</button> -->
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                              <button class="div2" id="nextBt">Skip</button>
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                                <!-- <button class="div5" id="solveBt" >Bet</button> -->
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                            
                              <button class="div4" id="submitTest">Submit Test</button> 
                            </div>
                        </td>
                        <td>
                          <div class="div1">
                              <!-- <button class="div2" id="skipBt1">Skip</button> -->
                            </div>
                        </td>
                    </tr>
                </table>
          </div>
        </div>

        <div id="controlsbet">
            <div class="controls" align="center">
                <table style="width: 90%;">
                    <tr>
                        <td>
                          <div class="div1">
                              <!-- <button class="div2" id="skipBt1">Skip</button> -->
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                              <button class="div2" id="skipBet">Skip </button>
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                                <button class="div5" id="solveBet" >Solve</button>
                            </div>
                        </td>
                        <td>
                            <div class="div1">
                            
                              <button class="div4" id="submitTest">Submit Test</button> 
                            </div>
                        </td>
                        <td>
                          <div class="div1">
                              <!-- <button class="div2" id="skipBt1">Skip</button> -->
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
          </div>
       
        </div>
    </div>

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
   if(betmoney>wallet){
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
         $('#currbet').html(betmoney);
         $('#currmulti').html(multiplier);
        $('#divbetting').hide();
     }

  });

  function getQuestion(){
    betmoney = 0;
    $('#currbet').html('Rs. 0');
    $('#currmulti').html('0x');
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
        }, 1);
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