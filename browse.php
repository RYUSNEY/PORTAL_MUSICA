<?php 
include("includes/includedFiles.php"); 
?>

<h1 class="pageHeadingBig">Álbumes Populares</h1>

<div class="gridViewContainer" style="padding: 0px 30px">

	<?php
		$albumQuery = mysqli_query($con, "SELECT * FROM albums ORDER BY RAND() LIMIT 10");

		while($row = mysqli_fetch_array($albumQuery)) {
			



			echo "<div class='gridViewItem'>
					<span role='link' tabindex='0' onclick='openPage(\"album.php?id=" . $row['id'] . "\")'>
						<img src='" . $row['artworkPath'] . "' style='border-radius :90px;'>

						<div class='gridViewInfo'>
							"
							. $row['title'] .
						"</div>
					</span>

				</div>";



		}
	?>

</div>