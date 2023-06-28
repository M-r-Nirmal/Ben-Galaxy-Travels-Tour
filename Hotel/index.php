<?php include 'header-home.php';?>




<!-- banner -->
<div class="banner">    	   
    <img src="images/photos/bannerr.jpg"  class="img-responsive" alt="slide">
    <div class="welcome-message">
        <div class="wrap-info">
            <div class="information">
                <h1  class="animated fadeInDown">Ben Galaxy Travels and Tours </h1>
                <p class="animated fadeInUp">With the royal treatments and excellent customer service.</p>
            </div>
            <a href="#information" class="arrow-nav scroll wowload fadeInDownBig"><i class="fa fa-angle-down"></i></a>
        </div>
    </div>
</div>


      <!-- CHAT BAR BLOCK -->
  <div class="row">
  <div class="col-md-12 d-flex align-items-center justify-content-center">
      <div class="chat-bar-collapsible">
          <button id="chat-button" type="button" class="collapsible">Chat with our Bot!
              <i id="chat-icon" style="color: #fff;" class="fa fa-fw fa-comments-o"></i>
          </button>
  
          <div class="content">
              <div class="full-chat-block">
                  <!-- Message Container -->
                  <div class="outer-container">
                      <div class="chat-container">
                          <!-- Messages -->
                          <div id="chatbox">
                              <h5 id="chat-timestamp"></h5>
                              <p id="botStarterMessage" class="botText"><span>Loading...</span></p>
                          </div>
  
                          <!-- User input box -->
                          <div class="chat-bar-input-block">
                              <div id="userInput">
                                  <input id="textInput" class="input-box" type="text" name="msg"
                                      placeholder="Press the 'Send' to send a message">
                                  <p></p>
                              </div>
  
                              <div class="chat-bar-icons">
                                  
                                  <i id="chat-icon" style="color: #333;" class="fa fa-send"
                                      onclick="sendButton()"></i>
                              </div>
                          </div>
  
                          <div id="chat-bar-bottom">
                              <p></p>
                          </div>
  
                      </div>
                  </div>
  
              </div>
          </div>
  
      </div>
  </div>
  

<!-- banner-->

<div class="spacer services wowload fadeInUp">
<div class="container">
    <div class="row">
        <h2>Our Services</h2>
        <hr>
        <div class="col-sm-4">
            <!-- RoomCarousel -->
            <div id="RoomCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <div class="item active"><img src="images/photos/9.jpg" class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/photos/10.jpg"  class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/photos/11.jpg"  class="img-responsive" alt="slide"></div>
                </div>

                
                <!-- Controls -->
                <a class="left carousel-control" href="#RoomCarousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#RoomCarousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
            </div>
            <!-- RoomCarousel-->
            <div class="caption">Hotels<a href="rooms-tariff.php" class="pull-right"><i class="fa fa-eye"></i></a></div>
        </div>


        <div class="col-sm-4">
            <!-- RoomCarousel -->
            <div id="TourCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <div class="item active"><img src="images/safari1.jpg" class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/safari2.jpg"  class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/safari3.jpg"  class="img-responsive" alt="slide"></div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#TourCarousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#TourCarousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
            </div>
            <!-- RoomCarousel-->
            <div class="caption">Transport<a href="/SPPM/Vehicles\Vehicles\vehicles-tariff.php" class="pull-right"><i class="fa fa-eye"></i></a></div>
        </div>


        <div class="col-sm-4">
            <!-- RoomCarousel -->
            <div id="FoodCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                <div class="item active"><img src="images/plane1.jpg" class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/aeroplan1.jpg"  class="img-responsive" alt="slide"></div>
                <div class="item  height-full"><img src="images/airplane.jpg"  class="img-responsive" alt="slide"></div>
                </div>
                <!-- Controls -->
                <a class="left carousel-control" href="#FoodCarousel" role="button" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                <a class="right carousel-control" href="#FoodCarousel" role="button" data-slide="next"><i class="fa fa-angle-right"></i></a>
            </div>
            <!-- RoomCarousel-->
            <div class="caption">Air Tickets<a href="#" class="pull-right"><i class="fa fa-eye"></i></a></div>
        </div>
    </div>
</div>
</div>


<!-- reservation-information -->
<div id="information" class="spacer reserve-info ">
<div class="container">
<div class="row">
<div class="col-sm-7 col-md-8">
    <div class="embed-responsive embed-responsive-16by9 wowload fadeInLeft"><iframe  class="embed-responsive-item" src="https://www.youtube.com/embed/YGKCiWot8Nk" width="100%" height="400" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>
</div>
<div class="col-sm-5 col-md-4">
<h3>Enquiries</h3>
    <?php
        require_once('db.php');
        $error = "";
        $color = "red";
        if(isset($_POST['submit'])){
            $name = mysqli_real_escape_string($con,$_POST['name']);
            $email = mysqli_real_escape_string($con,$_POST['email']);
            $phone = mysqli_real_escape_string($con,$_POST['phone']);
            $note = "None";
            $message = mysqli_real_escape_string($con,$_POST['message']);

            $q = "SELECT * FROM requests ORDER BY requests.id DESC LIMIT 1";
            $r = mysqli_query($con, $q);
            if(mysqli_num_rows($r) > 0){
                $row = mysqli_fetch_array($r);
                $id = $row['id'];
                $id = $id + 1;
            }
            else{
                $id = 1;
            }


            if(empty($name) or empty($email) or empty($phone)){
                $error = "All Feilds Required, Try Again";

            }
            else{
                $insert_query = "INSERT INTO `requests`(`id`, `name`, `email`, `phone`, `day`, `month`, `year`, `adults`, `rooms`, `message`) VALUES ('$id','$name','$email','$phone','$note','$note','$note','$note','$note','$message')";
                if(mysqli_query($con, $insert_query)){
                    $error = "We've got your request";
                    $color = "green";
                }
                else{
                    $error = "Error occured";
                }
            }
        }
        
    ?>
    <label style="color: <?php echo $color; ?>">
        <?php
            echo $error;
        ?>
    </label>
    <form role="form" class="wowload fadeInRight" method="post">
        <div class="form-group">
            <input type="text" name="name" class="form-control"  placeholder="Name">
        </div>
        <div class="form-group">
            <input type="email" name="email" class="form-control"  placeholder="Email">
        </div>
        <div class="form-group">
            <input type="Phone" name="phone" class="form-control"  placeholder="Phone">
        </div>        
        
        <div class="form-group">
            <textarea class="form-control" name="message" placeholder="Message" rows="4"></textarea>
        </div>
        <input type="submit" class="btn btn-primary" value="Request" name="submit">
    </form>    
</div>
</div>  
</div>
</div>


<!-- reservation-information -->



<!-- services -->

<!-- services -->


<?php include 'footer.php';?>