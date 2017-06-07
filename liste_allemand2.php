<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Choix du champs lexical</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<?php 
			$sql1 = "SELECT * FROM view_cat WHERE cat_name != 'sans'";
			if ($result1 = $mysqli->query($sql1)) {
				while ($row = $result1->fetch_assoc()) {
					$categories = $row["cat_name"];
					$id_cat = $row["id_cat"];

					// UNIFORMISER LES CATEGORIES : PASSER A QUELQUE CHOSE PLUS SIMPLE - refaire l'allemand
					//$id_cat2 = sprintf("%02d", $id_cat);
					//echo "<b><a href=\"liste_cat.php?cat=$id_cat2$categories\">".$categories."</a></b><br>";

					echo "<b><a href=\"liste_cat.php?cat=$categories\">".$categories."</a></b><br>";


					$sql2 = "SELECT view_name FROM view_spec WHERE id_cat = '$id_cat'";
					if ($result2 = $mysqli->query($sql2)) {
						while ($row = $result2->fetch_assoc()) {
							$view_name = $row["view_name"];
							//$id_cat = $row["id_cat"];

						    $prefixesql = " SELECT prefix_width FROM `database_spec` ";
							if ($respre = $mysqli->query($prefixesql)) {
								while ($row = $respre->fetch_assoc()) {
									foreach ($respre as $respre2){
										$prefix = $respre2['prefix_width'];
										echo substr($view_name, $prefix)."<br>";
									}
								}
							} 
						} 
					}

					$sql3 = "SELECT sub_name FROM view_sub WHERE id_cat = '$id_cat'";
					if ($result3 = $mysqli->query($sql3)) {
						while ($row = $result3->fetch_assoc()) {
							$sub_name = $row["sub_name"];
							echo "<b><a href=\"liste_sub.php?sub_name=$sub_name\">".$sub_name."</a></b>";
							echo "<br>";
						} 
					} 
					echo "<br>";
				} 
			} 
		?>
		
	</body>
</html>