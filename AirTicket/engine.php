<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
<?php
require('AmadeusClient.php');
$amadeus_api = new AmadeusDahabtours\SelfServiceApiClient('RHrADtcPCJM0imbEz097ZF6l682K9Z3G','Qn8iRPfTmrMqcj0K');

//print_r("<h2> LFS </h2>");
# Flight Low-fare Search
$flight_offers = $amadeus_api->lowFares([
    'originLocationCode'        => $_GET['from'],
    'destinationLocationCode'   => $_GET['to'],
    'departureDate' => $_GET['depart'],
    'adults' => $_GET['adult']
]);
if($flight_offers['success'] != 1 || $flight_offers['http_code'] == 200){
   ?>
  <?php
foreach ( $flight_offers['response'][data] as $flights ) {
   
    //$availableseats = $flights[numberOfBookableSeats]; //available seats count
   // $lastTicketingDate = $flights[lastTicketingDate]; //book before
   
    foreach ( $flights['itineraries'] as $individ_flight_details ) {
       
            $duration = $individ_flight_details[duration];
           
            $segmenttotal = '';
           
            foreach ( $individ_flight_details['segments'] as $individ_flight_segments ) {
               
               
                    $departure_iataCode = $individ_flight_segments[departure][iataCode];
                    $departure_terminal = $individ_flight_segments[departure][terminal];
                    $departure_at = $individ_flight_segments[departure][at];
                   
                    $arrival_iataCode = $individ_flight_segments[arrival][iataCode];
                    $arrival_at = $individ_flight_segments[arrival][at];
                   
                    $carrierCode = $individ_flight_segments[carrierCode];
                    $carrierCode_full = $individ_flight_segments[carrierCode].$individ_flight_segments[number];
                    $duration = $individ_flight_segments[duration];
                   
                   
                    $segmenttotal .= '<div class="row"><div class="col-md-4"> '.$departure_iataCode  . ' </div> <div class="col-md-4"> '. $carrierCode_full .' ('.$duration.') </div> <div class="col-md-4"> ' . $arrival_iataCode .'</div></div>';
               
            }
           
           
           
    }
   
    $currency = $flights[price][currency];
    $grandTotal = $flights[price][grandTotal];
           
           echo ' <div class="container">
  <div class="row">
    <div class="col-12">
    <div class="row" style="border:1px solid black;">';

           // echo 'Available Seat : '. $availableseats;
           // echo '</br>Book Before : '. $lastTicketingDate;
            echo '<div class="col-12">Total Duration : '. $duration.'</div>';
            echo '<div class="col-8" >'. $segmenttotal.'</div>';
            echo '<div class="col-4">Total Amount : '. $currency . $grandTotal.'</div>';
           
            
           echo '</div>
           </div>
           </div>
           </div>';
}
?>
    <?php
    
}


?>
</body>
</html>
