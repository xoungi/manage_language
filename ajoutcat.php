<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajout d'une cat&#233;gorie</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<h3>Page de cr&#233;ation d'une cat&#233;gorie</h3>

		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Nom de la cat&#233;gorie &#224; cr&#233;er : </p>
				<input type="text" name="cat_name" size="20" required/>
				<button type="submit">Envoyer</button><br>
				<input type= "checkbox" name= "souscat" value= "souscat">Sous-cat&#233;gorie</input>
			</fieldset>
		</form>

		<form action="fonctions/ajoutcat.php" method="POST">
			<fieldset>
				<?php if(isset($_GET['cat_name'])) {
					$cat = $_GET['cat_name'];
					echo '<br>'.'<u>Nom</u> de la categorie : <b>'.$cat;
					if(isset($_GET['souscat'])) { echo " (sous-cat&#233;gorie)"; }
					echo '</b><br><br>';
					echo '<input type="hidden" name="cat" value="'.$cat.'"/>'; 
					?>
						<u>Vue(s)</u> &#224; inclure : <br><br>
							<table id="singletable2">
								<?php
									if(isset($_GET['souscat'])) { // CAS DE LA SOUS-CATEGORIE
										$query = "SELECT view_name FROM view_spec WHERE view_spe = 3";
										if ($result = $mysqli->query($query)) {
											while ($row = $result->fetch_assoc()) {
												foreach ($result as $results){
													$view_name = $results['view_name'];
													echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix2[]" value= "'.$view_name.'">'.$view_name.'</input></td></tr> ';
												}
											}
										}
									} else { // CATEGORIE NORMALE
										$query = "SELECT view_name FROM view_spec WHERE id_cat = 13";
										if ($result = $mysqli->query($query)) {
											while ($row = $result->fetch_assoc()) {
												foreach ($result as $results){
													$view_name = $results['view_name'];
													echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix[]" value= "'.$view_name.'" checked>'.$view_name.'</input></td></tr> ';
												}
											}
										} // AJOUTER A LA SUITE LA RECEPTION DES SOUS-CATEGORIES NON CATEGORISEES
									}
								?>
							</table>
						<?php 
					} 
				?>
			</fieldset>
			<fieldset><p>Impossible de cr&#233;er une cat&#233;gorie sans vue.<br>
				Si aucune vue n'est pr&#233;sente, toutes les vues sont cat&#233;goris&#233;es : soit en faire de nouvelles, soit d&#233;cat&#233;goriser les vues existantes.<br>
				Il en est de m&ecirc;me pour les sous-cat&#233;gories.<br></p>
				<button type="submit">Envoyer</button><br>
			</fieldset>
		</form>

	</body>
</html>		