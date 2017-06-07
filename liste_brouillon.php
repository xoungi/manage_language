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
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset>
				<legend>Listes de mots par champs lexical : </legend>
				<?php
					$champs_lex = "";
					$num_rows1 = '';
					if(isset($_GET['champs_lex'])) {
						$champs_lex = $_GET['champs_lex'];
						?>
						<b><?php echo $champs_lex; ?></b>
						</br></br>
						<table>
							<tr>
								<?php echo "<th><b><a href=\"liste_brouillon.php?champs_lex=$champs_lex&classement=voc\">Voc</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_brouillon.php?champs_lex=$champs_lex&classement=trad\">Traduction</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_brouillon.php?champs_lex=$champs_lex&classement=nature_voc\">Nature</a></b></th>"; ?>
								<th><b>Modif.</b></th>
							</tr>
							<?php
								if (isset($_GET['classement'])) {
									$classement = $_GET["classement"];
								} else {
									$classement = "voc"; 
								}
							   	$query1=(" SELECT * FROM $champs_lex ORDER BY " .$classement. " ASC ");

								if ($result1 = $mysqli->query($query1)) {
									while ($row = $result1->fetch_assoc()) {
										$num_rows1 = mysqli_num_rows($result1);
										$id_trad = $row['id_trad'];
										$voc = $row['voc'];
									    $trad = $row['trad'];
									    $nat = $row['nature_voc']; 
									    $nat_trad = $row['nature_trad']; 
									    ?>
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
											<?php echo "<td align='center'><a href=\"modification.php?varid_trad=$id_trad\">o</a> 
											<a href=\"supprimer.php?varid_trad=$id_trad\">x</a></td>"; ?>
										</tr><?php
									}	
									$result1->free();
								}
							?>
						</table> <?php
					}
				?>
				</br></br>
				<select name="champs_lex"><?php
					$query2 = ("SHOW TABLES IN " .$bdd. " LIKE 'CL_%'");

					if ($results1 = $mysqli->query($query2)) {
						while ($row = $results1->fetch_assoc()) {
							foreach ($results1 as $result2){
								$vue = $result2['Tables_in_'.$bdd.' (CL_%)'];
								if ($vue == $champs_lex) {
							       $selected = 'selected';
							    } else {
							       $selected = '';
							    }
							    // Traduire le préfixe
							    $prefixesql = " SELECT prefix_width FROM `database_spec` ";
								if ($respre = $mysqli->query($prefixesql)) {
									while ($row = $respre->fetch_assoc()) {
										foreach ($respre as $respre2){
											$prefix = $respre2['prefix_width'];
											echo '<option value="'.$vue.'"'.$selected.'>'.substr($vue, $prefix).'</option>';
										}
									}
								}

							}
						}
					} ?>
				</select>
				<button type="submit">Envoyer</button> <?php
					if ( $num_rows1 != '' ) {
						echo $num_rows1 . ' r&eacute;sultats ' ;
						echo " - <a href=\"liste_pdf.php?cat=$champs_lex&classement=$classement\">liste pour PDF</a>";
					}?>
			</fieldset>
		</form>
		<br><hr><br>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset>
				<legend>Listes de mots par nature : </legend>
				<?php
					$nature = "";
					$num_rows2 = '';
					if(isset($_GET['nature'])) {
						$nature = $_GET['nature'];?>
						<b><?php echo $nature; ?></b>
						</br></br>
						<table>
							<tr>
								<?php echo "<th><b><a href=\"liste_brouillon.php?nature=$nature&classement=voc\">Voc</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_brouillon.php?nature=$nature&classement=trad\">Traduction</a></b></th>"; ?>
								<?php echo "<th><b><a href=\"liste_brouillon.php?nature=$nature&classement=champs\">Champs</a></b></th>"; ?>
								<th><b>Modif.</b></th>
							</tr>
							<?php
								if (isset($_GET['classement'])) {
									$classement = $_GET["classement"];
								} else {
									$classement = "voc"; 
								}
							   	$query3=(" SELECT * FROM $nature ORDER BY " .$classement. " ASC ");

								if ($result3 = $mysqli->query($query3)) {
									while ($row = $result3->fetch_assoc()) {
										$num_rows2 = mysqli_num_rows($result3);
										$id_trad = $row['id_trad'];
										$voc = $row['voc'];
									    $trad = $row['trad'];
									    $champs = $row['champs']; 
									    //$id_a_pr_n_voc = $row['id_a_pr_n_voc']; 
									    //$id_a_pr_n_trad = $row['id_a_pr_n_trad']; 
									    ?>
									    <tr>
											<td><b><?php echo "$voc" ; ?></b></td>
											<td><?php echo "$trad" ; ?></td>
											<td><?php echo "$champs" ; ?></td>
											<?php echo "<td align='center'><a href=\"modification2.php?varid_trad=$id_trad\">o</a> 
											<a href=\"supprimer.php?varid_trad=$id_trad\">x</a></td>"; ?>
										</tr><?php
									}	
									$result3->free();
								}
								//$mysqli->close(); 
							?>
						</table> <?php
					}
				?>
				</br></br>
				<select name="nature"><?php
					$query4 = "SHOW TABLES IN " .$bdd. " LIKE 'KIND_%' ";

					if ($results2 = $mysqli->query($query4)) {
						while ($row = $results2->fetch_assoc()) {
							foreach ($results2 as $result4){
								$vue2 = $result4['Tables_in_'.$bdd.' (KIND_%)'];
								if ($vue2 == $champs_lex) {
							       $selected = 'selected';
							    } else {
							       $selected = '';
							    }
								echo '<option value="'.$vue2.'"'.$selected.'>'.substr($vue2, 5).'</option>';
							}
						}
					} ?>
				</select>
				<button type="submit">Envoyer</button> <?php
					if ( $num_rows2 != '' ) {
						echo $num_rows2 . ' r&eacute;sultats ' ;
						echo " - <a href=\"liste_pdf.php?cat=$nature&classement=$classement\">liste pour PDF</a>";
					}?>
			</fieldset>
		</form>
		<div><br><hr><?php
				$result5 = $mysqli->query("SELECT trad FROM trad");
				$result6 = $mysqli->query("SELECT voc FROM voc_eng");
				$result7 = $mysqli->query("SELECT champs FROM champs_lex");
				$result8 = $mysqli->query("SHOW TABLES IN " .$bdd. " LIKE 'CL_%' ");
				$result9 = $mysqli->query("SHOW TABLES IN " .$bdd. " LIKE 'KIND_%' ");
				$num_rows3 = mysqli_num_rows($result5);
				$num_rows4 = mysqli_num_rows($result6);
				$num_rows5 = mysqli_num_rows($result7);
				$num_rows6 = (mysqli_num_rows($result8));
				$num_rows7 = (mysqli_num_rows($result9));
			?>
			<p class="footer">Nombre de mots et de traductions dans la base de donn&eacute;e : <?php echo $num_rows3; ?>, <?php echo $num_rows4; ?>. Nombre de champs lexicaux, leurs vues, et vues par nature : <?php echo $num_rows5.', '. $num_rows6.', '. $num_rows7; ?>.</p>
			<p class="footer">Formulaires : <a href="ajouter.php">"ajouter un mot"</a>, <a href="ajouter_des.php">"ajouter des mots"</a>. Tableau : lien <a href="100derniersmots.php">"les 100 derniers mots ajout&eacute;s"</a>, <?php if ($num_rows3 < 300) { ?> lien <a href="touslesmots2.php">"tous les mots"</a>. <?php } else { ?> lien <a href="touslesmots.php">"tous les mots"</a>. <?php } ?></p>
			<hr>
			<?php
				$result10 = $mysqli->query("SELECT cat_views FROM database_spec");
					while ($row = $result10->fetch_assoc()) {
					$cat_views = $row['cat_views'];
				}
				if ($cat_views == 1) { 
			?>
			<p class="footer"> <a href="ajoutcat.php">Ajouter une cat&eacute;gorie</a>. <a href="modifcat.php">Modifier une cat&eacute;gorie</a>. <a href="supprcat.php">Supprimer une cat&eacute;gorie</a>. </p>
			<?php } else { echo ""; } ?>			
			<p class="footer"><a href="ajoutvue.php">Ajouter une vue</a>. <a href="modifchamps.php">Modifier une vue</a>. <a href="supprvue.php">Supprimer une vue</a>. </p>
			<p class="footer"><a href="ajoutchamps.php">Ajouter un champs lexical</a>. <a href="supprchamps.php">Supprimer un champs lexical</a>.
			<hr>
			<p class="footer"><a href="bdd_.php">Base de donn&eacute;e : <?php echo $bdd; ?>.</a> <a href="ajoutbdd.php">Cr&eacute;er une nouvelle.</a> <a href="changer.php">Changer.</a></p>
			<?php 
				if ($cat_views == 1) { 
					$result11 = $mysqli->query("SELECT dlangage FROM database_spec");
						while ($row = $result11->fetch_assoc()) {
						$langage = $row['dlangage'];
					}
			?>
			<p class="footer"> Lien : <a href="liste_allemand2.php">" liste pour l'<?php echo $langage; ?>"</a>. </p>
			<?php } else { echo ""; } ?>
		</div>
	</body>
</html>	