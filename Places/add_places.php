<?php

?>


<head>

<title>add places</title>
</head>

<body>
	 <div id="wrapper">
<?php require_once('header-admin.php');?>

        <div class="container-fluid body-section container">
            <div class="row">
                <div class="col-md-12">
                    <h2><i class="fa fa-plus-square"></i> Add Places </h2>
                    
                    <?php
                    require_once('db.php');
                    if(isset($_POST['submit'])){
						
                        $title = mysqli_real_escape_string($con,$_POST['title']);
						$category = mysqli_real_escape_string($con,$_POST['category']);
                        $description = mysqli_real_escape_string($con,$_POST['description']);
                        $location = mysqli_real_escape_string($con,$_POST['location']);
                        $visittime = mysqli_real_escape_string($con,$_POST['visittime']);
						$famousdescription = mysqli_real_escape_string($con,$_POST['famousdescription']);
                        
                        
                        $image1 = $_FILES['image1']['name'];
                        $tmp_name1 = $_FILES['image1']['tmp_name'];
                        $image2 = $_FILES['image2']['name'];
                        $tmp_name2 = $_FILES['image2']['tmp_name'];
                        $image3 = $_FILES['image3']['name'];
                        $tmp_name3 = $_FILES['image3']['tmp_name'];
                        $image4 = $_FILES['image4']['name'];
                        $tmp_name4 = $_FILES['image4']['tmp_name'];
                        
                        $q = "SELECT * FROM placesdb ORDER BY placesdb.id DESC ";// LIMIT 1
                        $r = mysqli_query($con, $q);
                        if(mysqli_num_rows($r) > 0){
                            $row = mysqli_fetch_array($r);
                            $id = $row['id'];
                            $id = $id + 1;
                        }
                        else{
                            $id = 1;
                        }
                        
                        
                        if( empty($title) or empty($category) or empty($description) or empty($location) or empty($visittime) or empty($famousdescription) or empty($image1) or empty($image2) or empty($image3) or empty($image4)){
                            $error = "All (*) Feilds Are Required";
                            
                        }
                        else{
							
							
							
                            $insert_query = "INSERT INTO `placesdb` (`id`,`title`,`category`, `description`, `location`, `visit_time`, `famous_description`, `image1`, `image2`, `image3`, `image4`)  VALUES('$id','$title','$category','$description','$location','$visittime','$famousdescription','$image1','$image2','$image3','$image4')";
							
                            if(mysqli_query($con, $insert_query)){
                                $path1 = "images/photos/$image1";
                                $path2 = "images/photos/$image2";
                                $path3 = "images/photos/$image3";
                                $path4 = "images/photos/$image4";
                                if(move_uploaded_file($tmp_name1, $path1) and move_uploaded_file($tmp_name2, $path2) and move_uploaded_file($tmp_name3, $path3) and move_uploaded_file($tmp_name4, $path4)){
                                    $msg = "Post has been added";
                                    $title = "";
									$category = "";
                                    $description = "";
                                    $location = "";
                                    $visittime = "";
									$famousdescription = "";
                                    copy($path1, "$path1");
                                    copy($path2, "$path2");
                                    copy($path3, "$path3");
                                    copy($path4, "$path4");
                                }
                            }
                            else{
                                $error = "Post Has not Been Added";
                            }
                        }
                    }
                    ?>
                    <div class="row">
                        <div class="col-xs-12">
                            <form action="" method="post" enctype="multipart/form-data">
								 <div class="row">
                                   
									 <div class="col-md-8">
                                <div class="form-group">
                                    <label for="title">Place Name:*</label>
                                    
                                    <input type="text" name="title" placeholder="Type Place name Here" value="<?php if(isset($title)){echo $title;}?>" class="form-control">
                                </div>
									 </div>
								
								 <div class="col-md-4">
                                       <div class="form-group">
                                          <label for="Category:">Category:*</label>
										   <?php
                                    if(isset($msg)){
                                        echo "<span class='pull-right' style='color:green;'>$msg</span>";
                                    }
                                    else if(isset($error)){
                                        echo "<span class='pull-right' style='color:red;'>$error</span>";
                                    }
                                    ?>
										   <select name="category" id ="category" value="<?php if(isset($title)){echo $category;}?>" class="form-control">
											    <option value="--select category--">--select category--</option>
                    								 <option value="Hill Country">Hill Country</option>
                    								 <option value="Coastal">Coastal</option>
					 								 <option value="Historical and Culture">Hostorical and Culture</option>
			         								 <option value="Wild and Nature">Wild and Nature</option>
										   
										   
										   </select>
                                          
                                       </div>
                                   </div>
                                </div>
                                <div class="form-group">
                                    <label for="title">Place Description:*</label>
                                    <textarea name="description" id="textarea" rows="10" class="form-control"><?php if(isset($description)){echo $description;}?></textarea>
                                </div>
                                
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="size">Location:*</label>
                                            <input type="text" name="location" placeholder="Type location Here" value="<?php if(isset($title)){echo $location;}?>" class="form-control">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="title">Best time to visit:*</label>
                                            <input type="text" name="visittime" placeholder="Type best time to visit  Here" value="<?php if(isset($title)){echo $visittime;}?>" class="form-control">
                                        </div>
                                    </div>
                                </div>
								
								<div class="form-group">
                                            <label for="size">Famous for:*</label>
                                            <input type="text" name="famousdescription" placeholder="Type location Here " value="<?php if(isset($title)){echo $famousdescription;}?>" class="form-control">
                                        </div>
                                
                                <div class="row">
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="file">Image 1:*</label>
                                            <input type="file" name="image1">
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="file">Image 2:*</label>
                                            <input type="file" name="image2">
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="file">Image 3:*</label>
                                            <input type="file" name="image3">
                                        </div>
                                    </div>
                                    
                                    <div class="col-sm-3">
                                        <div class="form-group">
                                            <label for="file">Image 4:*</label>
                                            <input type="file" name="image4">
                                        </div>
                                    </div>
                                </div>
                                
                                <input type="submit" class="btn btn-primary" value="Add Place" name="submit">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		 <br>



	<?php require_once('footer-admin.php');?>
