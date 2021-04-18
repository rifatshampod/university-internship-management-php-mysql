<?php
session_start();
//error_reporting(0);
include('include/config.php');
include('include/checklogin.php');
check_login();

if(isset($_POST['submit'])){
			$id = $_POST["id"];
			$name= $_POST["name"];
			$address =  $_POST["address"];
			$city = $_POST["city"];
			$gender = $_POST["gender"];
			$faculty = $_POST["faculty"];
			$depertment = $_POST["depertment"];
			$studentNo = $_POST["studentNo"];
			$email = $_POST["email"];


	$sql ="UPDATE users SET fullName='$name', address='$address', city='$city', gender='$gender', faculty='$faculty', depertment='$depertment', studentNo='$studentNo', email='$email' WHERE id ='$id' ";

	if ($con->query($sql) === TRUE) {    
		echo "<script type='text/javascript'>alert('Student Profile updated');</script>";
	} else {
		echo "<script type='text/javascript'>alert('Error Updating Data');</script>";
	}

}




?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Admin | Manage Student</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="vendor/themify-icons/themify-icons.min.css">
		<link href="vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css" rel="stylesheet" media="screen">
		<link href="vendor/select2/select2.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css" rel="stylesheet" media="screen">
		<link href="vendor/bootstrap-timepicker/bootstrap-timepicker.min.css" rel="stylesheet" media="screen">
		<link rel="stylesheet" href="assets/css/styles.css">
		<link rel="stylesheet" href="assets/css/plugins.css">
		<link rel="stylesheet" href="assets/css/themes/theme-1.css" id="skin_color" />
	</head>
	<body>
		<div id="app">		
<?php include('include/sidebar.php');?>
			<div class="app-content">
				
						<?php include('include/header.php');?>
						
				<!-- end: TOP NAVBAR -->
				<div class="main-content" >
					<div class="wrap-content container" id="container">
						<!-- start: PAGE TITLE -->
						<section id="page-title">
							<div class="row">
								<div class="col-sm-8">
									<h1 class="mainTitle">Admin | Edit Student</h1>
								</div>
								<ol class="breadcrumb">
									<li>
										<span>Admin</span>
									</li>
									<li class="active">
										<span>Edit Student</span>
									</li>
								</ol>
							</div>
						</section>
						<!-- end: PAGE TITLE -->
						<!-- start: BASIC EXAMPLE -->
						<div class="container-fluid container-fullw bg-white">
						

							<div class="row">
								<div class="col-md-8">
									<?php
									
										if(isset($_GET['edit']))
											{
													$studentID = $_GET['id'];
													$sqladdr = "SELECT * FROM users WHERE id='$studentID'"; 
													$addsql=mysqli_query($con,$sqladdr);
													while($row = $addsql->fetch_assoc()) {
														$primary = $row["id"];
														$fullName =  $row["fullName"];
														$address = $row["address"];
														$city = $row["city"];
														$gender = $row["gender"];
														$faculty = $row["faculty"];
														$depertment = $row["depertment"];
														$studentNo = $row["studentNo"];
														$email = $row["email"];
?>

														<form method="post">
															Student ID : <input type="number" class="form-control" name="id" value= "<?php echo $primary?>" readonly><br>
															Name : <input type="text" class="form-control" name="name" value= "<?php echo $fullName?>"><br>
															New Address : <input type="text"class="form-control" name="address" value= "<?php echo $address?>"><br>
															New City : <input type="text"class="form-control" name="city" value= "<?php echo $city?>"><br>
															Gender : <input type="text"class="form-control" name="gender" value= "<?php echo $gender?>"><br>
															New Faculty : <input type="text"class="form-control" name="faculty" value= "<?php echo $faculty?>"><br>
															New Department : <input type="text"class="form-control" name="depertment" value= "<?php echo $depertment?>"><br>
															New Student No : <input type="text"class="form-control" name="studentNo" value= "<?php echo $studentNo?>"><br>
															New Email : <input type="text"class="form-control" name="email" value= "<?php echo $email?>"><br>
															
															
															<input class="btn btn-success" type="submit" name="submit">
														</form>
									<?php
														
													}
											}
										
									?>
							</div>
						</div>
						<!-- end: BASIC EXAMPLE -->
						<!-- end: SELECT BOXES -->
						
					</div>
				</div>
			</div>
			<!-- start: FOOTER -->
	<?php include('include/footer.php');?>
			<!-- end: FOOTER -->

		</div>
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/modernizr/modernizr.js"></script>
		<script src="vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="vendor/maskedinput/jquery.maskedinput.min.js"></script>
		<script src="vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
		<script src="vendor/autosize/autosize.min.js"></script>
		<script src="vendor/selectFx/classie.js"></script>
		<script src="vendor/selectFx/selectFx.js"></script>
		<script src="vendor/select2/select2.min.js"></script>
		<script src="vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
		<script src="vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: CLIP-TWO JAVASCRIPTS -->
		<script src="assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="assets/js/form-elements.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				FormElements.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: CLIP-TWO JAVASCRIPTS -->
	</body>
</html>
