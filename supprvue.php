<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Suppression d'une vue</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Nom de la vue &#224; supprimer : </p>
				<?php
				if(isset($_GET['vue_name'])) {
					$vue_name = $_GET['vue_name'];
				}?>

				<select name="vue_name"><?php
					$query3 = "SHOW TABLES IN " .$bdd. " LIKE 'CL_%' ";

					if ($result3 = $mysqli->query($query3)) {
						while ($row = $result3->fetch_assoc()) {
							foreach ($result3 as $result01){
								
								if ($result01['Tables_in_'.$bdd.' (CL_%)'] == $vue_name) {
							       $selected = 'selected';
							    } else {
							       $selected = '';
							    }
								echo '<option value="'. $result01['Tables_in_'.$bdd.' (CL_%)'] . '" '.$selected.'>'.$result01['Tables_in_'.$bdd.' (CL_%)'].'</option>';
							}
						}
					} ?>
				</select> <button type="submit">Envoyer</button><br><br>
			</fieldset>
		</form>
		<form action="fonctions/supprvue.php" method="POST">
			<fieldset>
				<p>Nom de la <u>vue</u> choisie :</p> 
				<?php 
					if ($vue_name != "") {
						echo ' <u>'.$vue_name.'</u> ';
						echo '<input type="hidden" name="vue" value="'.$vue_name.'"/>'; 
					}
					else {
						echo "";
					}
				?>
			<button type="submit">Supprimer</button>

			<br></fieldset>
		</form>
	</body>
</html>