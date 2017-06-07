<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Listes de mots par sous-cat&eacute;gories</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset>
				<?php $sub_name = $_GET["sub_name"];
				?>
				<legend><u>Listes de mots pour <?php echo $sub_name; ?> : </u></legend>
					
						<table>
							<tr>
								<?php echo "<th><b><a href=\"liste_sub.php?sub_name=$sub_name&classement=voc\">Voc</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_sub.php?sub_name=$sub_name&classement=trad\">Traduction</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_sub.php?sub_name=$sub_name&classement=nat\">Nature</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_sub.php?sub_name=$sub_name&classement=champs\">Champs</a></b></th>"; ?>
								<th><b>Modif.</b></th>
							</tr>
							<?php
								if (isset($_GET['classement'])) {
									$classement = $_GET["classement"];
								} else {
									$classement = "voc"; 
								}
							   	$query1=(" SELECT * FROM $sub_name ORDER BY " .$classement. " ASC ");

								if ($result1 = $mysqli->query($query1)) {
									while ($row = $result1->fetch_assoc()) {
										$num_rows1 = mysqli_num_rows($result1);
										$id_trad = $row['id_trad'];
										$voc = $row['voc'];
									    $trad = $row['trad'];
									    $nat = $row['nature_voc']; 
									    // AJOUTER UN COMPARATIF ENTRE LA VALEUR SORTIE POUR LA NATURE VOC ET CELLE DE LA NATURE TRAD
									    // SI RESULTAT != : ADAPTER L'AFFICHAGE
									    $champs = $row['champs']; ?>
									    <tr>
											<td><b><?php echo "$voc" ; ?></b></td>
											<td><?php echo "$trad" ; ?></td>
											<td><?php echo "$nat" ; ?></td>
											<td><?php echo "$champs" ; ?></td>
											<?php echo "<td align='center'><a href=\"modification.php?varid_trad=$id_trad\">o</a> 
											<a href=\"supprimer.php?varid_trad=$id_trad\">x</a></td>"; ?>
										</tr><?php
									}	
									$result1->free();
								}
							?>
						</table>

					<?php //if ( $num_rows1 != '' ) {
						echo $num_rows1 . ' r&eacute;sultats ' ;
						echo " - <a href=\"liste_pdf.php?cat=$sub_name&classement=$classement\">liste pour narrateur</a>";
					//}?>
			</fieldset>
		</form>
	</body>
</html>	