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
		<p>Bienvenue sur la page des statistiques !</p>
		<p>La base de donn&eacute;e courante est : <u><?php echo $bdd; ?></u></p>
		<?php 
			$query2=(" SELECT DISTINCT dlangage, ddescription FROM database_spec ");
			if ($result5 = $mysqli->query($query2)) {
				while ($row = $result5->fetch_assoc()) {
					$dlangage = $row['dlangage'];
					$ddescription = $row['ddescription']; 
					echo 'Son langage est : ' .$dlangage. '. Son contenu est : ' .$ddescription. '.' ;
				}
			}
		?>
		<p>Voici les statistiques de celle-ci (1- par champs lexical, 2- par nature (vocabulaire), 3- par nature (traduction)) :</p>
		<table class="bddleft">
			<tr>
				<th>Nom de l'en-t&ecirc;te</th>
				<th>Nombre de valeurs</th>
			</tr>
			<?php
				$num_rows = '';
				$query1 = "SHOW TABLES IN " .$bdd. " LIKE 'CL_%'";
				if ($result1 = $mysqli->query($query1)) {
					while ($row = $result1->fetch_assoc()) {
						$vue = $row['Tables_in_'.$bdd.' (CL_%)'];
						$result2 = $mysqli->query("SELECT COUNT(*) FROM $vue");
						$row = $result2->fetch_row(); ?>
					<tr>

						<!--Traduire le préfixe-->
						<?php
					    $prefixesql = " SELECT prefix_width FROM `database_spec` ";
						if ($respre = $mysqli->query($prefixesql)) {
							while ($row2 = $respre->fetch_assoc()) {
								foreach ($respre as $respre2){
									$prefix = $respre2['prefix_width'];?>
									<td><?php echo substr($vue, $prefix); ?></td><?php
								}
							}
						}?>
						<td><?php echo $row[0]; ?></td>
					</tr> <?php
					}
					$result1->free();
				} 
			?>
		</table>
		<br/>
		<table class="bddright">
			<tr>
				<th>Nom de l'en-t&ecirc;te</th>
				<th>Nombre de valeurs</th>
			</tr>
			<?php
				$num_rows = '';
				$query3 = "SHOW TABLES IN " .$bdd. " LIKE 'KIND_%' ";		
				if ($result3 = $mysqli->query($query3)) {
					while ($row = $result3->fetch_assoc()) {
						$vue = $row['Tables_in_'.$bdd.' (KIND_%)'];
						$result4 = $mysqli->query("SELECT COUNT(*) FROM $vue");
						$row = $result4->fetch_row();
					?>
					<tr>
						<td><?php echo substr($vue, 5); ?></td>
						<td><?php echo $row[0]; ?></td>
					</tr> <?php
					}
					$result3->free();
				}
			?>
		</table>
		
		<table class="bddright2">
			<tr>
				<th>Nom de l'en-t&ecirc;te</th>
				<th>Nombre de valeurs</th>
			</tr>
			<?php
				$num_rows = '';
				$query5 = "SHOW TABLES IN " .$bdd. " LIKE 'TYPE_%' ";		
				if ($result5 = $mysqli->query($query5)) {
					while ($row = $result5->fetch_assoc()) {
						$vue = $row['Tables_in_'.$bdd.' (TYPE_%)'];
						$result6 = $mysqli->query("SELECT COUNT(*) FROM $vue");
						$row = $result6->fetch_row();
					?>
					<tr>
						<td><?php echo substr($vue, 5); ?></td>
						<td><?php echo $row[0]; ?></td>
					</tr> <?php
					}
					$result6->free();
				}
			?>
		</table>
	</body>
</html>