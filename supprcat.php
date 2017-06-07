<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Suppression d'une cat&#233;gorie</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<h3>Page de suppression d'une cat&#233;gorie</h3>

		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Nom de la cat&#233;gorie &#224; modifier : </p>

				<select name="cat_name">
					<?php
						$query3 = "SELECT id_cat, cat_name FROM view_cat WHERE cat_name != 'sans'";
						if ($result3 = $mysqli->query($query3)) {
							while ($row = $result3->fetch_assoc()) {
								foreach ($result3 as $result01){
									$id_cat = $result01['id_cat'];
									$cat_name = $result01['cat_name'];
									if ($_GET['cat_name'] == $id_cat) {
								       $selected = 'selected';
								    } else {
								       $selected = '';
								    }
									echo '<option value="'.$cat_name. '" '.$selected.'>'.$cat_name.' ('.$id_cat.')'.'</option>';
								}
							}
						} 
					?>
				</select> <button type="submit">Envoyer</button><br><br>
			</fieldset>
		</form>

		<?php
			if(isset($_GET['cat_name'])) {
				$cat_name = $_GET['cat_name'];
?>

		<form action="fonctions/supprcat.php" method="POST">
			<fieldset>
				<p>Nom de la <u>cat&#233;gorie</u> choisie :</p> 
				<?php 
					if ($cat_name != "") {
						echo ' <u>'.$cat_name.'</u> ';
						echo '<input type="hidden" name="cat" value="'.$cat_name.'"/>'; 
					}
					else {
						echo "";
					}
				?>
			<button type="submit">Supprimer</button>
			</fieldset>
		</form>
		<?php
			}
		?>
		<fieldset><p>Toutes les vues seront d&#233;cat&#233;goris&#233;es</p></fieldset>
	</body>
</html>		