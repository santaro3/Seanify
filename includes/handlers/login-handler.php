<?php
if (isset($_POST['loginButton'])) {
	//Login Button is Pressed
	$username = $_POST['loginUsername'];
	$password = $_POST['loginPassword'];

	//Call Login Function
	$result = $account-> login($username,$password);

	if($result == true) {
		$_SESSION['userLoggedIn'] = $username;
		header("Location: index.php");
	}
}
?>