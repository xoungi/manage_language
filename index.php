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
		<div><h2><a href="projetanglais/index.php">Home</a></h2><hr><br></div>
		<?php
			$mysqli1 = new mysqli("localhost", "root", "", "shareboard");
			if (mysqli_connect_errno()) {
				printf("Échec de la connexion : %s\n", $mysqli->connect_error);
				exit();
			}

			$query=(" SELECT database_name FROM current_database WHERE id_current=(SELECT max(id_current) FROM current_database) ");
			if ($result = $mysqli1->query($query)) {
				while ($row = $result->fetch_assoc()) {
					$bdd = $row['database_name'];
				}
			}
			if ($bdd != "") {
			    header("Location:liste_brouillon.php");
			} else { ?>
				<form name="choixBase" action="index.php" method="get">
					<p>Bienvenue. Ceci est votre connexion 1. Veuillez choisir votre base de donn&eacute;e :</p>
					<select name="bdd"><?php
						$mysqli = new mysqli("localhost", "root", "");
						if (mysqli_connect_errno()) {
							printf("Échec de la connexion : %s\n", $mysqli->connect_error);
							exit();
						}
						$query = " SHOW DATABASES LIKE 'dlangage%' ";
							if ($result = $mysqli->query($query)) {
								while ($row = $result->fetch_assoc()) {
									foreach ($result as $results){
										$database = $results['Database (dlangage%)'];
										echo '<option value="'. $database .'">'.$database.'</option>';
									}
								}
							} $mysqli->close(); 
						?>
					</select><button type="submit">Envoyer</button>
				</form> <!-- à faire : essai sur cookie -->
			<?php
			if(isset($_GET['bdd'])) {
				$langage = $_GET['bdd'];

				$stmt = " INSERT INTO `current_database` (`id_current`, `database_name`, `current_change`) VALUES (1, '".$langage."', CURRENT_TIMESTAMP) ";
				echo $stmt;
				$a=$mysqli1->query($stmt);

				header("Location:liste_brouillon.php");
			} 
		}

		// ALTER TABLE current_database AUTO_INCREMENT = 1 

		?>
	</body>
</html>