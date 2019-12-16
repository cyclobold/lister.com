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


