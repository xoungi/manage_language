<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajout d'un champs lexical</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<u>Page d'insertion d'un champs lexical :</u>
		<br><br>

		<form name="ajoutChamps" action="fonctions/ajoutchamps.php" method="post">
			<table class="singletable">
				<tr>
					<td>Identifiant du nouveau champs : 
						<?php
							$query= "SELECT id_ch FROM champs_lex WHERE id_ch=(SELECT max(id_ch) FROM champs_lex)";
								if ($result = $mysqli->query($query)) {
									while ($row = $result->fetch_assoc()) {
									$id_champs2 = $row["id_ch"] + '1';
									echo '<u>'.$id_champs2.'</u>' ; 
									echo '<input type="hidden" name="idchamps2" value="'.$id_champs2.'"/>'; 
								}
							}
						?>
					</td>
				</tr>
				<tr>
					<td>Nom du nouveau champs : <input type="text" name="champs2" value=""> </input></td>
				</tr>

			</table>
			<br><button type="submit">Envoyer</button>
		</form>
    <hr><p>Pas besoin de préfixe pour les champs lexicaux.</p>
	</body>
</html>