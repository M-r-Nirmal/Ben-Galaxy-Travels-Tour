<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
.responsive {
  width: 100%;
  max-width: 500px;
  height: auto;
}
    
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 200px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }

    
  </style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
    
        <a class="navbar-brand" href="http://engine2day.rf.gd/">Ben Galaxy Travels & Tours</a>
        
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




  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    <h3>Includes</h3>
      <p>Return Air Ticket based on Economy Class</p>
      <p>Accommodation for 02 Nights with breakfast at a city hotel</p>
      <p>Complementary Combined shuttle Airport Transfers</p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>DUBAI TOUR</h1>
     
      <img src="du.jpg" class="responsive" alt="" width="800" height="450">
      <hr>
       <p>All rates are subject to change based on availability & Exchange fluctuation without prior notice. Rates are based on Sri Lankan nationalities.
	   Services are subject to availability at the time of bookings. Terms and conditions apply.
	   Minimum 02 Pax. Travel period can be tailor-made according to your preferred dates</p>
      
    </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
        <h3>Excludes</h3>
      <p>Porte rage and Tipping</p>
      <p>Early Check in and Late Check out</p>
      <p>Other optional Excursions</p>
      </div>
      
    </div>
  </div>


</div>

<footer class="container-fluid text-center">
  <p>SPPM KIRISHANTHAN 2136069</p>
</footer>



</body>
</html>
