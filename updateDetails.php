<?php
include("includes/includedFiles.php");
?>

<div class="userDetails">

	<div class="container borderBottom">
		<h2>CORREO ELECTRONICO</h2>
		<input type="text" class="email" name="email" placeholder="Email address..." value="<?php echo $userLoggedIn->getEmail(); ?>">
		<span class="message"></span>
		<button class="button" onclick="updateEmail('email')">GUARDAR</button>
	</div>

	<div class="container">
		<h2>CAMBIAR CONTRASEÑA</h2>
		<input type="password" class="oldPassword" name="oldPassword" placeholder="Contraseña Actual">
		<input type="password" class="newPassword1" name="newPassword1" placeholder="Contraseña Nueva">
		<input type="password" class="newPassword2" name="newPassword2" placeholder="Confirmar Contraseña">
		<span class="message"></span>
		<button class="button" onclick="updatePassword('oldPassword', 'newPassword1', 'newPassword2')">GUARDAR</button>
	</div>

</div>