<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Suppression d'un champs lexical</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Champs lexical &#224; supprimer : </p>
				<?php
				$champs_lex="";
				$id_champs="";
				if(isset($_GET['champs_lex'])) {
					$champs_lex = $_GET['champs_lex'];
				}?>

				<select name="champs_lex"><?php
					$query3 = "SELECT id_ch, champs FROM champs_lex";

					if ($result3 = $mysqli->query($query3)) {
						while ($row = $result3->fetch_assoc()) {
							foreach ($result3 as $result01){
								if ($result01['id_ch'] == $_GET['champs_lex']) {
							       $selected = 'selected';
							       $champs_lex = $result01['champs'];
							       $id_champs = $result01['id_ch'];
							    } else {
							       $selected = '';
							    }
								echo '<option value="'. $result01['id_ch'] . '" '.$selected.'>'.$result01['champs'].'</option>';
							}
						}
					} ?>
				</select> <button type="submit">Envoyer</button><br><br>
			</fieldset>
		</form>

		<form action="fonctions/supprchamps.php" method="POST">
			<fieldset>
			<label for="champslex">Nom du <u>champs lexical</u> (id) :</label> <br>
				<?php 
					if ($champs_lex != "") {
						echo ' <u>'.$champs_lex.'</u> ';
						echo '<input type="hidden" name="champs" value="'.$champs_lex.'"/>'; 
					}
					else {
						echo "";
					}
					if ($id_champs != "") {
						echo '('.$id_champs.')';
						echo '<input type="hidden" name="idchamps" value="'.$id_champs.'"/>'; 
					}
					else {
						echo '';
					}
				?>
			<button type="submit">Supprimer</button>
			<br></fieldset>
		</form>
	</body>
</html>