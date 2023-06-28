<?php include 'header.php';?>

<?php
    require_once('db.php');
    
    if(isset($_GET['id'])){
        $id = $_GET['id'];
        $q = "SELECT * FROM placesdb WHERE placesdb.id = $id";
        $run = mysqli_query($con, $q);
        $row = mysqli_fetch_array($run);
    }
?>
<div class="container">
<h1 class="title"><?php echo strtoupper( $row['title']); ?></h1>
 <!-- placesDetails -->
            <div id="RoomDetails" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <div class="item active"><img src="images/photos/<?php echo $row['image1']; ?>" class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/photos/<?php echo $row['image2']; ?>"  class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/photos/<?php echo $row['image3']; ?>"  class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/photos/<?php echo $row['image4']; ?>"  class="img-responsive" alt="slide"></div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#RoomDetails" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#RoomDetails" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
            </div>
  <!-- RoomCarousel-->


<div class="room-features spacer">
  <div class="row">
    <div class="col-sm-12 col-md-7"> 
    <p><?php echo $row['description']; ?></p>
    </div>
	 <div class="col-sm-6 col-md-1 amenitites"> 
	  </div>
    <div class="col-sm-6 col-md-4 amenitites"> 
    <h4 style="color:#21323E;">Location:</h4>
    <p> <?php echo $row['location']; ?> </p>
	<h4 style="color: #21323E;">Best time to visit:</h4>
    <p> <?php echo $row['visit_time']; ?> </p>
	<h4 style="color: #21323E;">Famous for:</h4>
    <p> <?php echo $row['famous_description']; ?> </p>

    </div>  
 
  </div>
</div>
                     


</div>
<?php include 'footer.php';?>