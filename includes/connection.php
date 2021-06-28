<?php 
/**
 * Database parameters
 * @var string
 */
$database_name = 'flamy';
$username = 'root';
$password = '';
$host = '127.0.0.1';

$conn = mysqli_connect($host, $username, $password, $database_name) or die("Sorry, wrong database configuration");



//Create privileges table
$create_privi = "CREATE TABLE IF NOT EXISTS `users_privileges`(
    
        `id` INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
        `users_privilege` VARCHAR(32) NOT NULL,
        `category_name` VARCHAR(32) NOT NULL,
        `allowed_roles` LONGTEXT DEFAULT(NULL),
        `created_at` TIMESTAMP NOT NULL, 
        `updated_at` TIMESTAMP NOT NULL

)";


$create_privi_result = mysqli_query($conn, $create_privi);

if($create_privi_result){
    require("__privi/__default_privileges.php");

   //run the default privileges
   //echo "<pre>";
   //print_r($privileges);
   foreach($privileges as $privilege_key => $privilege_value){

            $category_name = $privileges[$privilege_key]['category'];
            $allowed_roles = json_encode($privileges[$privilege_key]['allowed_roles']);
        

            //check if the privilege has been created already
            $check_query = "SELECT * FROM `users_privileges` WHERE `users_privilege`='$privilege_key' LIMIT 1";

            $check_query_result = mysqli_query($conn, $check_query);

            if(mysqli_num_rows($check_query_result) != 1){
                 $add_privilege_query = "INSERT INTO `users_privileges` (`users_privilege`,`category_name`, `allowed_roles`, `created_at`, `updated_at` ) VALUES('$privilege_key', '$category_name', '$allowed_roles', NOW(), NOW())";

            $add_privilege_result = mysqli_query($conn, $add_privilege_query);
            }



           



   }


}else{
    echo mysqli_error($conn);
}








