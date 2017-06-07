<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Listes de mots par cat&eacute;gories</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset>
				<?php $categories = $_GET["cat"];
				?>
				<legend><u>Listes de mots pour <?php echo $categories; ?> : </u></legend>
					
						<table>
							<tr>
								<?php echo "<th><b><a href=\"liste_cat.php?cat=$categories&classement=voc\">Voc</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_cat.php?cat=$categories&classement=trad\">Traduction</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_cat.php?cat=$categories&classement=nature_voc\">Nature</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_cat.php?cat=$categories&classement=champs\">Champs</a></b></th>"; ?>
								<th><b>Modif.</b></th>
							</tr>
							<?php
								if (isset($_GET['classement'])) {
									$classement = $_GET["classement"];
								} else {
									$classement = "voc"; 
								}
							   	$query1=(" SELECT * FROM $categories ORDER BY " .$classement. " ASC ");

								if ($result1 = $mysqli->query($query1)) {
									while ($row = $result1->fetch_assoc()) {
										$num_rows1 = mysqli_num_rows($result1);
										$id_trad = $row['id_trad'];
										$voc = $row['voc'];
									    $trad = $row['trad'];
									    $nat = $row['nature_voc']; 
									    $nat_trad = $row['nature_trad']; 
									    $champs = $row['champs']; ?>
									    <tr>
											<td><b><?php echo "$voc" ; ?></b></td>
											<td><?php echo "$trad" ; ?></td>
											<td><?php 
												if ($nat==$nat_trad){
													echo "$nat";
												} else {
													echo "$nat"." / "."$nat_trad";
												}
											?></td>
											<td><?php echo "$champs" ; ?></td>
											<?php echo "<td align='center'><a href=\"modification.php?varid_trad=$id_trad\">o</a> 
											<a href=\"supprimer.php?varid_trad=$id_trad\">x</a></td>"; ?>
										</tr><?php
									}	
									$result1->free();
								}
							?>
						</table>

					<?php if ( $num_rows1 != '' ) {
						echo $num_rows1 . ' r&eacute;sultats ' ;
						echo " - <a href=\"liste_pdf.php?cat=$categories&classement=$classement\">liste pour PDF</a>";
					}?>
			</fieldset>
		</form>
	</body>
</html>	