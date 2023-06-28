<?php include 'header.php';?>

<div class="container">

<h2>Places </h2>


<?php
	require_once('db.php');
?>

<div class="row">
  
  <div class="col-sm-6 wowload fadeInUp">
	  
      <div class="rooms">
          <img src="images/hillcountry1.jpg" class="img-responsive">
          <div class="info">
              <h3> HILL COUNTRY</h3>
              <p style="color: #2B2D42"> The Hill Country of Sri Lanka is the island's most picturesque region; it is a mist-shrouded land with emerald peaks and breathtaking views, as well as slopes covered with tea plantations and graced by amazing waterfalls.</p>
              <a href="place_hillcountry.php" class="btn btn-default">Check Details</a>
          </div>
      </div>
	 
  </div>
  <div class="col-sm-6 wowload fadeInUp">
      <div class="rooms">
          <img src="images/culture2.jpg" class="img-responsive" >
          <div class="info">
              <h3> HISTORICAL &amp; CULTURE</h3>
              <p style="color:#2B2D42"> The history of Sri Lanka is intriguing, ranging from the remains of ancient monasteries and medieval cities to the colonial past of the island and its intricate contemporary culture.  The nation has a strong history of the fine arts, which include music, dance, and visual arts.</p>
              <a href="place_hisorical.php" class="btn btn-default">Check Details</a>
          </div>
      </div>
  </div>
	
  
  
</div>
	
	<div class="row">
  
  <div class="col-sm-6 wowload fadeInUp">
      <div class="rooms">
          <img src="images/coastal1.jpg" class="img-responsive" height= 50%>
          <div class="info">
              <h3> COASTAL</h3>
              <p style="color: #2B2D42"> The coastline of Sri Lanka is made up of several eco-systems, including sand beaches, rocky shorelines, lagoons, estuaries, mangroves, salt marshes, and sand dunes.</p><!---Seagrass beds and coral reefs can be seen in the shallow coastal waters.--->
			
             <a href="place_coastal.php" class="btn btn-default">Check Details</a>
          </div>
      </div>
  </div>
  
  
  <div class="col-sm-6 wowload fadeInUp">
      <div class="rooms">
          <img src="images/wild2.jpg" class="img-responsive">
          <div class="info">
              <h3> WILD &amp; NATURE</h3>
              <p style="color: #2B2D42">Sri Lanka is a paradise for wildlife enthusiasts since it is one of the biodiverse islands in the world and one of the greatest countries in Asia to see elusive species like elephants and leopards. </p> <!--There are many national parks and reserves that offer some very unforgettable safari experiences.-->
              <a href="place_wildnature.php" class="btn btn-default">Check Details</a>
          </div>
      </div>
  </div>
  
  
</div>


</div>

<?php include 'footer.php';?>