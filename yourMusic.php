<?php
include("includes/includedFiles.php");
?>

<div class="playlistsContainer">

	<div class="gridViewContainer">
		<h2 style="font-size:50">
			LISTAS DE REPRODUCCION 
			<br>
			<button type="button" class="btn btn-success" onclick="createPlaylist()">+ Agregar nueva</button>
		</h2>


		<?php
			$username = $userLoggedIn->getUsername();

			$playlistsQuery = mysqli_query($con, "SELECT * FROM playlists WHERE owner='$username'");

			if(mysqli_num_rows($playlistsQuery) == 0) {
				echo "<span class='noResults'>Aún no tienes ninguna lista de reproducción.</span>";
			}

			while($row = mysqli_fetch_array($playlistsQuery)) {

				$playlist = new Playlist($con, $row);

				echo "<div class='gridViewItem' role='link' tabindex='0' 
							onclick='openPage(\"playlist.php?id=" . $playlist->getId() . "\")'>

						<div class='playlistImage'>
							<img src='assets/images/icons/playlist.png'>
						</div>
						
						<div class='gridViewInfo'>"
							. $playlist->getName() .
						"</div>

					</div>";



			}
		?>






	</div>

</div>