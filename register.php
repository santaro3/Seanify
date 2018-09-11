
<?php  
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");	

	function getInputValue ($name) {

		if(isset($_POST[$name])) {
			echo $_POST[$name]; 
		}
	}
?>

<html>
<head>
	<title>Welcome to Seanify</title>
	<link rel="stylesheet" type="text/css" href="assets/css/register.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
</head>
<body>
	
	<?php 
		
		if(isset($_POST['registerButton'])) {
			echo '<script>
					$(document).ready(function(){
					$("#loginForm").hide();
					$("#registerForm").show();
					});
				</script>';
		
		} else {
				
			echo '<script>
					$(document).ready(function(){
					$("#loginForm").show();
					$("#registerForm").hide();
					});
				</script>';
		}

	?>

	<div id="background">

		<div id="loginContainer">
			
			<div id="inputContainer">
					<form id="loginForm" action="register.php" method="POST">
						<h2>Login to Your Acount</h2>
						<p> 
							<?php  echo $account -> getError(Constants::$loginFailed);	?>
							<LABEL for="loginUsername"> Username</LABEL> 
							<input id="loginUsername" type="text" name="loginUsername" placeholder="e.g. SeanSantarossa" value="<?php getInputValue('loginUsername')?>" required> 
						</p>
						<p> 
							<LABEL for="loginPassword"> Password</LABEL>
							<input id="loginPassword" type="password" name="loginPassword" required> 
						</p>
						<button type="submit" name="loginButton"> Login </button>
						
						<div class="hasAccountText">
							<span id="hideLogin"> Don't have and Account Yet? Sign-Up Here</span>
						</div>

					</form>
				

					<form id="registerForm" action="register.php" method="POST">
							<h2>Register Your Acount</h2>
							
							<p> 
								<?php  echo $account -> getError(Constants::$usernameCharachters);	?>
								<?php  echo $account -> getError(Constants::$usernameTaken);	?>
								<LABEL for="username"> Username</LABEL> 
								<input id="username" type="text" name="username" placeholder="e.g. SeanSantarossa" value="<?php getInputValue('username')?>" required> 
							</p>
							
							<p> 
								<?php  echo $account -> getError(Constants::$firstNameCharachters);	?>
								<LABEL for="firstName"> First Name</LABEL> 
								<input id="firstName" type="text" name="firstName" placeholder="e.g. SeanSantarossa" value="<?php getInputValue('firstName')?>" required> 
							</p>

							<p> 
								<?php  echo $account -> getError(Constants::$lastNameCharachters);	?>
								<LABEL for="lastName"> Last Name </LABEL> 
								<input id="lastName" type="text" name="lastName" placeholder="e.g. SeanSantarossa" value="<?php getInputValue('lastName')?>" required> 
							</p>

							<p> 
								<?php  echo $account -> getError(Constants::$emailsDoNotMatch);	?>
								<?php  echo $account -> getError(Constants::$emailInvalid);	?>
								<?php  echo $account -> getError(Constants::$emailTaken);	?>
								<LABEL for="email"> Email </LABEL> 
								<input id="email" type="email" name="email" placeholder="e.g. Seanify@gmail.com" value="<?php getInputValue('email')?>" required> 
							</p>

							<p> 
								<LABEL for="email2"> Confirm Email </LABEL> 
								<input id="email2" type="email" name="email2" placeholder="e.g. Seanify@gmail.com" value="<?php getInputValue('email2')?>" required> 
							</p>

							<p> 
								<?php  echo $account -> getError(Constants::$passwordsDoNotMatch);	?>
								<?php  echo $account -> getError(Constants::$passwordNotAlphanumeric);	?>
								<?php  echo $account -> getError(Constants::$passwordCharacters);	?>
								<LABEL for="password"> Password </LABEL>
								<input id="password" type="password" name="password" placeholder= "Your Password" required> 
							</p>


							<p> 
								<LABEL for="password2"> Confirm Password </LABEL>
								<input id="password2" type="password" name="password2" placeholder= "Your Password" required> 
							</p>

							<button type="submit" name="registerButton"> SignUp </button>

							<div class="hasAccountText">
								<span id="hideRegister"> Already have an Account? Sign In Here</span>
							</div>

					</form>
			</div>

			<div id=loginText>
				<h1> Your Music, Wherever you Go</h1>
				<h2> Because you should always be able to enjoy yourself, no matter where you are </h2>
				<ul>
					<li> Stream your Music for free, from anywhere in the world</li>	
					<li> Create your own playlist</li>	
					<li> Never worry about not having your music again</li>	
				</ul>
			</div>

		</div>
	</div>
</body>
</html>