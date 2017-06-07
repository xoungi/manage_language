<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajouter une bdd</title>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

	<u>Page d'ajout d'une base de donn&eacute;e :</u> <a href="ajoutbdd.php">(actualiser)</a>
	<p><mark>Voir indications en bas de page.</mark></p>
	<form name="ajoutBdd" action="<?php $_SERVER['PHP_SELF']; ?>" method="get">
		<table class="singletable">
			<tr>
				<td>Bases de donn&eacute;es existantes : </td>
				<td>
				<?php
					$mysqli = new mysqli("localhost", "root", "");
					if (mysqli_connect_errno()) {
						printf("Échec de la connexion : %s\n", $mysqli->connect_error);
						exit();
					}
					
				   	$query=(" SHOW DATABASES LIKE 'dlangage%' ");

					if ($result = $mysqli->query($query)) {
						while ($row = $result->fetch_assoc()) {
							$num_rows = mysqli_num_rows($result);
							$database = $row['Database (dlangage%)']; ?>
						    <tr>
								<td><b><?php echo "$database" ; ?></b></td>
							</tr><?php
						}	
					}
				?>
				</td>
			</tr>
			<tr>
				<td>Nom de la nouvelle base de donn&eacute;e :</td>
				<tr><td><b><?php 
					$num_rows2 = $num_rows+1;
					echo "dlangage".$num_rows2; 
					echo '<input type="hidden" name="new_bdd" value="dlangage'.$num_rows2.'"/>'; ?>
				</b></td></tr>
			</tr>
			<tr>
				<td><u>Langage :</u></td>
				<tr><td>
					<input name="dlangage" required/>
				</td></tr>
			</tr>
			<tr>
				<td><u>Description :</u></td>
				<tr><td>
					<input name="ddescription" required/>
				</td></tr>
				<td><u>Construction :</u></td>
				<tr><td>
					<input type="radio" name="database_type" value="langage3a.sql"> Simple 
    				<input type="radio" name="database_type" value="langage3b.sql"> Complexe
				</td></tr>
				<td><u>Largeur du préfixe des vues :</u></td>
				<tr><td>
					<input name="prefix_view" required placeholder="5 (ex: cl01a -ajustable)"/>
				</td></tr>
			</tr>
		</table>
		<br>
		<input type="submit" value=" Confirmer "> 
		<?php if (isset($_GET['new_bdd'])) { 
			$new_database = $_GET['new_bdd'];
			$dlangage = $_GET['dlangage'];
			$ddescription = $_GET['ddescription'];
			$prefix_width = $_GET['prefix_view'];
			echo $new_database; 
			$sql = "CREATE DATABASE $new_database";
			if (mysqli_query($mysqli, $sql)) {
			    echo " database created successfully.";
			} else {
			    echo " Error creating database: " . mysqli_error($mysqli);
			}
			$database_type = $_GET['database_type'];
		} 
	$mysqli->close(); 
	?>
		<!-- FERMER LA CONNEXION ET LA ROUVRIR AVEC LA NOUVELLE BDD + LIRE LE FICHIER SQL -->
	<?php
		if (isset($_GET['new_bdd'])) { 
			$db = new PDO('mysql:host=localhost;dbname='.$new_database.'', 'root', '');
			$sql = file_get_contents($database_type);
			$qr = $db->exec($sql);

			// Si 3a --> passe en simple Si 3b --> passe en complexe
			//echo "<br><br>".$database_type."<br><br>";

			if ($database_type == "langage3b.sql") {
				$sql3 = " INSERT INTO `database_spec` (`dlangage`, `ddescription`, `prefix_width`, `cat_views`) VALUES 
				('$dlangage', '$ddescription', $prefix_width, 1) ";
				echo "<br><br>".$sql3."<br><br>";
			} else {
				$sql3 = " INSERT INTO `database_spec` (`dlangage`, `ddescription`, `prefix_width`, `cat_views`) VALUES 
				('$dlangage', '$ddescription', $prefix_width, 0) ";
				echo "<br><br>".$sql3."<br><br>";
			}
			
			$b=$db->query($sql3);
			echo " Views and tables too.";
		}
	?>
	</form>
  <hr><p>Il est très important de respecter les préfixes. Il faut que ceux-ci commencent obligatoirement par les lettres cl.<br>
  Je conseille de mettre un préfixe pouvant laisser une suite numérique de type 1 à 9 (préfixe 3) ou 01 à 99 par exemple (préfixe 4).<br>
  Ceux-ci permettent de classer les champs lexicaux dans un ordre d'apparition.</p>
  <p>Lors de la première utilisation, ne commencez pas par supprimer champs, vues et mot(s) déjà présent. Créer les vôtres et effacez les mots de base par la suite. <br>
  Cela est valable également pour les catégories dans les bases de données choisies complexes. </p>
  <p>Pour vérifier que la base a bien été créée, cliquez sur <a href="ajoutbdd.php">actualiser</a>. Pour aller ensuite sur votre base de donnée, utilisez la page "<a href="changer.php">changer</a>" (index).  </p>
  <p>Si vous ne vous rappelez plus du nombre de lettres du préfixe. Aller sur votre base de donnée dans phpmyadmin, table database_spec.</p>
</html>