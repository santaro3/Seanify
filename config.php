<?php
	ob_start();
	session_start();
	
	$timezone = date_default_timezone_set("America/Toronto");

	$con = mysqli_connect("shareddb-h.hosting.stackcp.net", "seanify-33311a82", "nr896v8eri", "seanify-33311a82");

	if (mysqli_connect_errno()) {
		echo "Failed to Connect" . mysqli_connect_errno();
	}

?>