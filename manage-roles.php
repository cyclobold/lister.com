<?php 
session_start();
if(!isset($_SESSION['username'])){
	header('location: login.php');
	exit();
}

require "includes/functions/functions.php";

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Lister App</title>
	<link rel='stylesheet' href='thirdparties/bootstrap/css/bootstrap.min.css'>
	<link rel='stylesheet' href='css/style.css'>
</head>
<body>
	<style>
		body{
			color: black;
		}
	</style>

<div class='container'>
	<!-- Navigation bar -->
		<?php include('includes/nav.include.php'); ?>

	<!-- End of Navigation --> 
		
		<div class='row'>
			
			<div class='adjust-10'></div>
			<div class='col-md-6 col-md-offset-3'>
				<div class='well'>
					<div>
					<strong>Welcome <?php echo "{$_SESSION['firstname']}!"; ?> </strong>
					<div id='update_id'>
					<a href='posts.php' class='btn btn-sm btn-primary'> My Posts</a>
					<a href='logout.php' class='btn btn-sm btn-primary'> Log out</a>
					</div>
					</div>
					<hr>

					<?php
					 get_all_roles();
					?>
					
					




				</div>
			</div>

		</div>


</div>

 

<script src='js/scripts.js'></script>
</body>
</html>