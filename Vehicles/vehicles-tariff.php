<?php include 'header.php';?>
<div class="container">

  <h2>Vechicles</h2>


  <!-- form -->

  <div class="row">
    <?php
    require_once('db.php');
    $q = "SELECT * FROM vtype ORDER BY vtype.vid ASC";
    $run = mysqli_query($con, $q);
    $count = 0;
    if (mysqli_num_rows($run) > 0) {
      while ($row = mysqli_fetch_array($run)) {
    ?>
        <div class="col-sm-6 wowload fadeInUp">
          <div class="vehicles">
            <img src="images/photos/<?php echo $row['image1']; ?>" class="img-responsive">
            <div class="info">
              <h3><?php echo $row['title']; ?></h3>
              <p style="color: black;"> Size: <?php echo $row['size']; ?> Passangers<br> Per Day: <?php echo $row['price']; ?></p>
              <a href="vehicles-details.php?id=<?php echo $row['vid']; ?>" class="btn btn-default">Check Details</a>
            </div>
          </div>
        </div>
    <?php
      }
    }
    ?>


  </div>


</div>
<?php include 'footer.php';?>

