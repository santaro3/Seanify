<?php
include("../../config.php");

if(!isset($_POST['username'])) {
	echo "Could not Set Username";
	exit();
}


if(!isset($_POST['oldPassword']) || !isset($_POST['newPassword1']) || !isset($_POST['newPassword2'])) {
	echo "Did not Enter in all Fields";
	exit();
}


if($_POST['oldPassword'] == "" || $_POST['newPassword1'] == "" || $_POST['newPassword2']== "") {
	echo "You left a field empty";
	exit();
}

$username = $_POST['username'];
$oldPassword = $_POST['oldPassword'];
$newPassword1 = $_POST['newPassword1'];
$newPassword2 = $_POST['newPassword2'];


$oldMd5 = md5($oldPassword);

$passwordCheck = mysqli_query($con, "SELECT * FROM users WHERE username='$username' AND password='$oldMd5'");

if (mysqli_num_rows($passwordCheck) != 1) {
	echo "Password is Incorrect";
	exit();
}

if($newPassword1 != $newPassword2) {
	echo "Your new Passwords do not match";
	exit();
}

if(preg_match('/[^A-Za-z0-9]/', $newPassword1)) {
	echo "Your Password must only contain letters and/or Numbers";
	exit();
}

if(strlen($newPassword1) > 30 || strlen($newPassword1) < 5) {
	echo "Your Password must be between 5 and 30 charahters";
	exit();
}

$newMd5 = md5($newPassword1); 

$query= mysqli_query($con, "UPDATE users SET password='$newMd5' WHERE username='$username'");
echo "Password Updated";

?>