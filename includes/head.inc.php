<?php 
	$page_path = $_SERVER['REQUEST_URI'];
	$page = basename($page_path);
	$page_box = explode(".", $page);
	$page_title = ucfirst($page_box[0]);

	$page_title = str_replace("_", " ", $page_title);


?>

<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $page_title; ?></title>
	<link rel='stylesheet' href='thirdparties/bootstrap/css/bootstrap.min.css'>
	<link rel='stylesheet' href='css/style.css'>
</head>