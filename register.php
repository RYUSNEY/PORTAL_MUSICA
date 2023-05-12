<?php
	include("includes/config.php");
	include("includes/classes/Account.php");
	include("includes/classes/Constants.php");

	$account = new Account($con);

	include("includes/handlers/register-handler.php");
	include("includes/handlers/login-handler.php");

	function getInputValue($name) {
		if(isset($_POST[$name])) {
			echo $_POST[$name];
		}
	}
?>

<html>
<head>
	<title>Bienvenido MusicRusso!</title>

	<link rel="stylesheet" type="text/css" href="assets/css/register.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="assets/js/register.js"></script>
</head>
<body>
	<?php

	if(isset($_POST['registerButton'])) {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").hide();
					$("#registerForm").show();
				});
			</script>';
	}
	else {
		echo '<script>
				$(document).ready(function() {
					$("#loginForm").show();
					$("#registerForm").hide();
				});
			</script>';
	}

	?>
	

	<div id="background" style="background-image: url(assets/images/fondo.jpg);">

		<div id="loginContainer">

			<div id="inputContainer" class="form-signin w-100 m-auto">
				<form id="loginForm" action="register.php" method="POST">
					<h2>Inicio de Sesion</h2>
					<p>
						<?php echo $account->getError(Constants::$loginFailed); ?>
						<label for="loginUsername">Username</label>
						<input id="loginUsername" name="loginUsername" type="text" placeholder="ej. Geopro" value="<?php getInputValue('loginUsername') ?>" required autocomplete="off">
					</p>
					<p>
						<label for="loginPassword">Password</label>
						<input id="loginPassword" name="loginPassword" type="password" placeholder="ej. Contrasenia12&3$" required>
					</p>

					<button type="submit" name="loginButton">INICIAR SESION</button>

					<div class="hasAccountText">
						<span id="hideLogin">¿Aún no tienes una cuenta? Registrate aquí</span>
					</div>
					
				</form>



				<form id="registerForm" action="register.php" method="POST">
					<h2>Crear cuenta</h2>
					<p>
						<?php echo $account->getError(Constants::$usernameCharacters); ?>
						<?php echo $account->getError(Constants::$usernameTaken); ?>
						<label for="username">Username</label>
						<input id="username" name="username" type="text" placeholder="ej. Geopro" value="<?php getInputValue('username') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$firstNameCharacters); ?>
						<label for="firstName">Nombre</label>
						<input id="firstName" name="firstName" type="text" placeholder="ej. Peter" value="<?php getInputValue('firstName') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$lastNameCharacters); ?>
						<label for="lastName">Apellido</label>
						<input id="lastName" name="lastName" type="text" placeholder="ej. Parker" value="<?php getInputValue('lastName') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$emailsDoNotMatch); ?>
						<?php echo $account->getError(Constants::$emailInvalid); ?>
						<?php echo $account->getError(Constants::$emailTaken); ?>
						<label for="email">Correo electronico</label>
						<input id="email" name="email" type="email" placeholder="ej. petpar@gmail.com" value="<?php getInputValue('email') ?>" required>
					</p>

					<p>
						<label for="email2">Confirmacion de correo electronico</label>
						<input id="email2" name="email2" type="email" placeholder="ej. petpar@gmail.com" value="<?php getInputValue('email2') ?>" required>
					</p>

					<p>
						<?php echo $account->getError(Constants::$passwordsDoNoMatch); ?>
						<?php echo $account->getError(Constants::$passwordNotAlphanumeric); ?>
						<?php echo $account->getError(Constants::$passwordCharacters); ?>
						<label for="password">Password</label>
						<input id="password" name="password" type="password" placeholder="ej. password123&&45" required>
					</p>

					<p>
						<label for="password2">Confirmacion de password</label>
						<input id="password2" name="password2" type="password" placeholder="ej. password123&&45" required>
					</p>

					<button type="submit" name="registerButton">CREAR CUENTA</button>

					<div class="hasAccountText">
						<span id="hideRegister">¿Ya tienes una cuenta? Entre aquí.</span>
					</div>
					
				</form>


			</div>

			<div id="loginText">
				<h1>MusicRusso</h1>
				<h2>Beneficios</h2>
				<ul>
					<li>Disfruta de musica sin anuncios</li>
					<li>Crea tu propia playlist</li>
					<li>Los ultimos exitos</li>
				</ul>
			</div>

		</div>
	</div>

</body>
</html>