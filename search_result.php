<?php 
//echo "<a href='index.php'>Go home</a>";


if(isset($_GET['item'])){

	require('includes/connection.php');


	$item = trim($_GET['item']);

	if(!empty($item)){
		//
		$query = "SELECT * FROM flm_users WHERE firstname LIKE '%$item%' || lastname LIKE '%$item%' || username LIKE '%$item%'";
		$result = mysqli_query($conn, $query);
		if($result){
			$count = mysqli_num_rows($result);
			
			if($count == 0){
				$results = "<h3>No result found</h3>";
			}else{
				
			while($rows = mysqli_fetch_array($result, MYSQLI_ASSOC)){
				$results[] = $rows['firstname'] ."-".$rows['lastname']."-".$rows['username']."-".$rows['id'];

				}

			}

			echo json_encode($results);

		}else{
			//
			//echo "Could not fetch results ...".mysqli_error($conn);
			echo json_encode("[]");
		}
	}else{
		//header('location: index.php');
		echo json_encode("[]");
	}


}



?>