<?php
	ini_set('default_charset', 'ISO-8859-1');
	
	$mysqli1 = new mysqli("localhost", "root", "", "shareboard");
	if (mysqli_connect_errno()) {
		printf("Échec de la connexion : %s\n", $mysqli->connect_error);
		exit();
	}

	$query=(" SELECT database_name FROM current_database WHERE id_current=(SELECT max(id_current) FROM current_database) ");
	if ($result = $mysqli1->query($query)) {
		while ($row = $result->fetch_assoc()) {
			$bdd = $row['database_name'];

			$mysqli = new mysqli("localhost", "root", "", $bdd);
			mysqli_close($mysqli1);
			
			if (mysqli_connect_errno()) {
				printf("Échec de la connexion : %s\n", $mysqli->connect_error);
				exit();
			}
		}
	}