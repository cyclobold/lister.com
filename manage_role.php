<?php
if(isset($_GET['rid']) && is_numeric($_GET['rid'])){

	$role_id = (int)$_GET['rid'];

	//bring in the functions
	require("includes/functions/functions.php");
	$role = get_role($role_id);

	if($role == false){
		die("You have accessed this page in error");
	}

	//get privileges
	$users_privileges = get_privileges();

}else{

	die("You have accessed this page in error");

}
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
					<a href='posts.php' class='btn btn-sm btn-primary'>Create Role</a>
					<a href='logout.php' class='btn btn-sm btn-primary'> Log out</a>
					</div>

					
					</div>


					<hr>
					<h4>Manage Privileges for <?php echo $role['type_name']; ?></h4>
					<form class='form'>

						<?php 
							//echo "<pre>";
							//print_r($users_privileges);
							//echo "</pre>";
							foreach($users_privileges as $users_privilege_key => $users_privilege_value){

							$users_privi_key_removed = str_replace("_", " ", $users_privilege_key);

							$users_privi_key_removed = ucfirst($users_privi_key_removed);

							$allowed_roles = json_decode($users_privileges[$users_privilege_key]['allowed_roles']);

							$allowed_role = false;
							if(in_array($role_id, $allowed_roles)){
								$allowed_role = true;
							}else{
								$allowed_role = false;
							}



								echo "
								<div class='form-group'>
									<label>{$users_privi_key_removed}</label>
									<select class='form-control'>";

									if($allowed_role == true){
										echo "<option selected>Yes</option>
										  	  <option>No</option>";
									}else{
										echo "<option>Yes</option>
										  	  <option selected>No</option>";

									}

										

								echo "</select>
								</div>

								";
									


							}

						?>

						<div class="form-group">
							<button class='btn btn-md btn-warning'>Update Privileges</button>
						</div>

					</form>


					
					
					




				</div>
			</div>

		</div>


</div>

 

<script src='js/scripts.js'></script>
</body>
</html>