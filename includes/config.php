<?php
	ob_start();
	session_start();
	
	$timezone = date_default_timezone_set("America/Toronto");

	$con = mysqli_connect("localhost", "root", "", "Seanify");

	if (mysqli_connect_errno()) {
		echo "Failed to Connect" . mysqli_connect_errno();
	}

?>