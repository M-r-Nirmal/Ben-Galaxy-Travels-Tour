<?php
 
    require_once('db.php');
    if(isset($_GET['del'])){
        $del = $_GET['del'];
        $q = "DELETE FROM placesdb WHERE placesdb.id = $del";
        $run = mysqli_query($con, $q);
    }

?>
<head>
<meta charset="utf-8">
<title>manage places</title>
</head>

<body>
	<div id="wrapper">
<?php require_once('header-admin.php');?>

        <div class="container-fluid body-section container">
			
            <div class="row">
                <div class="col-md-12">
                    <h2><i class="fa fa-plus-square"></i> Manage Places <small>(Add or Edit or Delete Places)</small></h2>
                    
					<div class="col-sm-12 col-md-10">
					</div>
					<div class="col-sm-12 col-md-2">
					<a href="add_places.php" class="btn btn-primary" role="button"><i class="fa fa-plus-square"></i> Add places</a>
					</div>
					<div class="col-md-12">
                    <div class="card">
                        <div class="card-content table-responsive table-full-width">
                            <table class="table">
                                <thead class="text-danger">
                                    <th><center>ID</center></th>
									<th><center>Place Title</center></th>
									<th><center>Category</center></th>
                                    <th><center>Location</center></th>
									<th><center>Best time <br> to visit</center></th>
                                    <th><center>Famous for</center></th>
                                    <th><center>Edit</center></th>
                                    <th><center>Delete</center></th>
                                </thead>
                                <tbody>
                                    <?php
                                        $q = "SELECT * FROM placesdb ORDER BY placesdb.id ASC";
                                        $run = mysqli_query($con, $q);
                                        if(mysqli_num_rows($run) > 0){
                                            while($row = mysqli_fetch_array($run)){
                                        
                                    ?>
                                    <tr>
                                        <td><center><?php echo $row['id']; ?></center></td>
                                        <td><center><?php echo $row['title']; ?></center></td>
                                        <td><center><?php echo $row['category']; ?></center></td>
										<td><center><?php echo $row['location']; ?></center></td>
                                        <td><center><?php echo $row['visit_time']; ?> </center></td>
										<td><center><?php echo $row['famous_description']; ?></center></td>
                                        
                                        
                                        <td><center><a href="sample.php?id=<?php echo $row['id']; ?>"><i class="fa fa-pencil"></i></a></center></td>
										
                                        <td><center><a href="manage_places.php?del=<?php echo $row['id']; ?>"><i class="fa fa-times"></i></a></center></td>
                                    </tr>
									
									
                                    <?php
                                            }
                                        }
                                    ?>
                                    
                                </tbody>
                            </table>

                        </div>
                    </div>
					</div>
                    <div class="row">
                        <div class="col-xs-12">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<br>

<?php require_once('footer-admin.php');?>

