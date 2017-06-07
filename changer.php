<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Choix du champs lexical</title>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
			<?php
				$mysqli = new mysqli("localhost", "root", "");
				if (mysqli_connect_errno()) {
					printf("Échec de la connexion : %s\n", $mysqli->connect_error);
					exit();
				}
			?>
			<form name="choixBase" action="<?php $_SERVER['PHP_SELF']; ?>" method="get">
				<p>Ceci est la page pour changer de base de donnée. Veuillez choisir parmi celles existantes :</p>
				<select name="bdd"><?php
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
			</form>
		<?php
			if(isset($_GET['bdd'])) {
				$langage = $_GET['bdd'];

				$mysqli2 = new mysqli("localhost", "root", "", "shareboard");
				if (mysqli_connect_errno()) {
					printf("Échec de la connexion : %s\n", $mysqli->connect_error);
					exit();
				}

				$stmt = " INSERT INTO `current_database` (`id_current`, `database_name`, `current_change`) VALUES (NULL, '".$langage."', CURRENT_TIMESTAMP) ";
				echo $stmt;
				$a=$mysqli2->query($stmt);

				header("Location:liste_brouillon.php");
			}
		?>
	</body>
</html>