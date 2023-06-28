<?php
if(isset($_POST['formsubmit']))
	{
	    $from = $_POST['from'];
	    $to = $_POST['to'];
	    $depart = $_POST['depart'];
	    $return = $_POST['return'];
	    $adult = $_POST['adult'];
	    $child = $_POST['child'];
	    
	    echo '<script>window.location.href="engine.php?from='.$from.'&to='.$to.'&depart='.$depart.'&return='.$return.'&adult='.$adult.'&child='.$child.' ";</script>';	
	    
	    }
	    ?>
	    
<html>  
    <head>
        <title> Ben Galaxy Ticketing</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>





        <style>

  h1{
      text-align: center;
      background-color:#f2f2f2;
      opacity: 0.8;
  }

    </style>
        
        

    </head>
    <body>


    



      

      


<!-- 4 - contained in center example -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
    
        <a class="navbar-brand" href="#">Ben Galaxy Travels & Tours</a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample11" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse text-center" id="navbarsExample11">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Hotels</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Transport</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Air Tickets</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Places</a>
                </li>
                
            </ul>
        </div>
    </div>
</nav>

    


   

        <form method="post" action="">
        




    
            
    <div class="booking-form-box border border-secondary">
    <img src="logof.png" class="rounded mx-auto d-block">
        <div class="radio-btn">
    <input type="radio" class="btn" name="rdbutton" checked="checked" value="Enable"><span>Roundtrip</span>
    <input type="radio" class="btn" name="rdbutton"  value="Disable"><span>One Way</span>
    
    </div>
    

    <div class="booking-form">

    
   
        
        

        <label>Flying From</label>
        <select name="from" id="from" class="form-control border border-secondary">
        <option value="" selected disabled>Select City</option>
        <option value="CMB">Colombo</option>
        <option value="LCY">London</option>
        <option value="MAA">Chennai</option>
        <option value="YXX">Canada</option>
       </select>

        <label>Flying To</label>
        <select name="to" id="to" class="form-control border border-secondary" >
        <option value="" selected disabled>Select City</option>
        <option value="TYO">Tokyo</option>
        <option value="LEI">Spain</option>
        <option value="CHI">Chicago</option>
        <option value="	DXB">Dubai</option>
       </select>

      

      <script>

$(document).ready(function() {

	var dtToday = new Date();
	
	var month = dtToday.getMonth() + 1;
	var day = dtToday.getDate();
	var year = dtToday.getFullYear();
	if(month <10)
		month = '0' + month.toString();
		if(day<10)
		day = '0' + day.toString();
		
		var maxDate = year + '-' + month + '-' +day;
		
		$('#depart').attr('min',maxDate);
		
		})
		</script>

        <script>

$(document).ready(function() {

	var dtToday = new Date();
	
	var month = dtToday.getMonth() + 1;
	var day = dtToday.getDate();
	var year = dtToday.getFullYear();
	if(month <10)
		month = '0' + month.toString();
		if(day<10)
		day = '0' + day.toString();
		
		var maxDate = year + '-' + month + '-' +day;
		
		$('#return').attr('min',maxDate);
		
		})
		</script>

        <script>
$('input[name="rdbutton"]').on('change',function()
{
    $('select[name="from"]').attr('disabled',this.value!="Enable")
});
</script>

        



    


        <div class="input-grp ">
            <label>Departing</label>
        <input type="date" class="form-control select-date border border-secondary" name="depart" id="depart" >
        </div>

        <div class="input-grp">
            <label>Returning</label>
        <input type="date" class="form-control select-date border border-secondary" name="return" id="return" >
        </div>

        <div class="input-grp">
            <label>Adults</label>
        <input type="number" class="form-control border border-secondary" value="1" name="adult" id="adult" min="1" max="8">
        </div>

        <div class="input-grp">
            <label>Children</label>
            <input type="number" class="form-control border border-secondary" value="0" name="child" id="child" min="0" max="8">
        </div>
        
         
         
    </div>
    <br><input type="submit" value="Search Flights" name="formsubmit" id="formsubmit">
    </div>
    

     
</form>

<div class="container">
  <div class="row">
<div class="row">
<div class="col-4">
    <img src="about.jpg" width="90%">
     </div>
    
    <div class="col-4">
    
    <img src="globally.jpg" width="90%">
    </div>

    <div class="col-4">
    <img src="locally.jpg" width="90%">
    </div>
  
</div>
  </div>
</div>




<div class="container">
  <div class="row">
<div class="row">
<div class="col-4">
    <img src="sub1.jpg" width="90%">
     </div>
    
    <div class="col-4">
    
    <img src="sub2.jpg" width="90%">
    </div>

    <div class="col-4">
    <img src="sub3.jpg" width="90%">
    </div>
  
</div>
  </div>
</div>

<br>


<br>
<div  style="background-color: #e9e35c;">
<div class="container">
  <div class="row">
<div class="row">
<h1>Featured Promotions</h1>
<div class="col-4 text-center ">
    <img src="p1.jpg" width="90%" class="img-thumbnail " ><hr>
    <button type="button" class="btn btn-dark" onclick="document.location='singlepage.php'">Check Now</button>
     </div>
    
    <div class="col-4 text-center">
    
    <img src="p2.jpg" width="90%" class="img-thumbnail"><hr>
    <button type="button" class="btn btn-dark" onclick="document.location='lon.php'">Check Now</button>
    </div>

    <div class="col-4 text-center">
    <img src="p3.jpg" width="90%" class="img-thumbnail"><hr>
    <button type="button" class="btn btn-dark" onclick="document.location='indi.php'">Check Now</button>
    </div>
    
  
</div>
  </div>
</div>
</div>

<div  style="background-color: #e9e35c;" >
<br>
<div class="container">
  <div class="row">
<div class="row" >

<div class="col-4 text-center">
    <img src="lon.jpg" width="90%" class="img-thumbnail" ><hr>
    <button type="button" class="btn btn-dark" onclick="document.location='http://engine2day.rf.gd/aus.php'">Check Now</button>
     </div>
    
    <div class="col-4 text-center">
    
    <img src="cana.jpg" width="90%" class="img-thumbnail"><hr>
    <button type="button" class="btn btn-dark" onclick="document.location='du.php'">Check Now</button>
    </div>

    <div class="col-4 text-center">
    <img src="swi.jpg" width="90%" class="img-thumbnail"><hr>
    <button type="button" class="btn btn-dark" onclick="document.location='swiss.php'">Check Now</button>
    </div>
  
</div>
  </div>
</div><br>
</div>

  <footer class="bg-light text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.8);">
    <a class="link-light" href="#">SPPM KIRISHANTHAN 2136069</a>

    
  </div>
  <!-- Copyright -->
</footer>










<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


    </body>
</html>