<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <div class="container-fluid">
		<a class="navbar-brand" href="#" onclick="openPage('browse.php')">MusicRusso</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarCollapse">

			<ul class="navbar-nav me-auto mb-2 mb-md-0">
				<li class="nav-item">
					<span role="link" tabindex="0" onclick="openPage('browse.php')" class="nav-link">
						Inicio
					</span>
				</li>
				<li class="nav-item">
					<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="nav-link">
						Tu biblioteca
					</span>
				</li>
				<li class="nav-item">
					<span role="link" tabindex="0" onclick="createPlaylist()" class="nav-link" >
						<i class="fa-sharp fa-solid fa-plus"></i> Crear playlist
					</span>
				</li>
				<li class="nav-item">
					<span role='link' tabindex='0' onclick='openPage("search.php")' class="nav-link">
						Buscar
					</span>
				</li>
			</ul>

			<ul class="navbar-nav mb-2 mb-md-0">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
						<?php echo $userLoggedIn->getFirstAndLastName(); ?>
						&nbsp 
						<img src="assets/images/Luffy.jpg" alt="mdo" width="32" height="32" class="rounded-circle">
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Perfil</a></li>
                        <li><a class="dropdown-item" href="#" onclick="openPage('updateDetails.php')">Configuracion</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#" onclick="logout()">Cerrar Sesion</a></li>
                    </ul>
                </li>
            </ul>

		</div>
    </div>
</nav>



<!--SUSPENDEMOS
<div id="navBarContainer">
	<nav class="navBar">

		<span role="link" tabindex="0" onclick="openPage('index.php')" class="logo">
			<img src="assets/images/icons/logo.png">
		</span>

		<div class="group">

			<div class="navItem">
				<span role='link' tabindex='0' onclick='openPage("search.php")' class="navItemLink">
					<img src="assets/images/icons/search.png" class="icon" alt="Search">
					Buscar
				</span>
			</div>

		</div>

		<div class="group">
			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('browse.php')" class="navItemLink">
					<i class="fa-sharp fa-solid fa-plus"></i>  Iniciar
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('yourMusic.php')" class="navItemLink">
					<i class="fa-sharp fa-solid fa-plus"></i> Tu musica
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="createPlaylist()" class="navItemLink" >
					<i class="fa-sharp fa-solid fa-plus"></i> Crear playlist
				</span>
			</div>

			<div class="navItem">
				<span role="link" tabindex="0" onclick="openPage('settings.php')" class="navItemLink"><?php //echo $userLoggedIn->getFirstAndLastName(); ?>
					
				</span>
			
			</div>

			

		</div>

	</nav>
</div-->