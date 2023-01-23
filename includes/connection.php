<?php 
/**
 * Database parameters
 * @var string
 */
$database_name = 'flamy';
$username = 'root';
$password = 'root';
$host = '127.0.0.1:8889';

$conn = mysqli_connect($host, $username, $password, $database_name) or die("Sorry, wrong database configuration");





