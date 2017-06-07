<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Les 100 derniers mots</title>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<table>
			<tr>
				<th><b>Voc</b></th>
				<th><b>Traduction</b></th>
				<th><b>Champs</b></th>
				<th><b>Nature</b></th>
				<th><b>Modif.</b></th>
			</tr>
			<?php
				include_once('includes/connexion.php');
				$result01 = $mysqli->query("SELECT trad FROM trad");
				$num_rows = mysqli_num_rows($result01);
				$num_rows2 = $num_rows - 100 ;
				$query=(" SELECT trad.id_trad, trad.trad, nature_trad.nature_trad, voc_eng.voc, voc_eng.id_voc, nature_voc.nature_voc, champs_lex.champs FROM appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n_trad, a_pr_n_voc, nature_trad, nature_voc WHERE a_pr_n_trad.id_n_trad = nature_trad.id_n_trad AND a_pr_n_trad.id_trad = trad.id_trad AND a_pr_n_voc.id_n_voc = nature_voc.id_n_voc AND a_pr_n_voc.id_voc = voc_eng.id_voc AND appartient.id_se_trad = se_trad.id_se_trad AND appartient.id_ch = champs_lex.id_ch AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND voc_eng.id_voc >= '".$num_rows2."' ORDER BY `voc_eng`.`id_voc` ASC ");
				if ($result = $mysqli->query($query)) {
					while ($row = $result->fetch_assoc()) {
						$id_voc = $row['id_voc'];
						$id_trad = $row['id_trad'];
						$voc = $row['voc'];
					    $trad = $row['trad'];
					    $champs = $row['champs'];
					    $nat = $row['nature_voc'];
					    $nat_trad = $row['nature_trad']; ?>
					    <tr>
							<td><b><?php echo "$voc" ; ?></b></td>
							<td><?php echo "$trad" ; ?></td>
							<td><?php echo "$champs" ; ?></td>
							<td><?php 
								if ($nat==$nat_trad){
									echo "$nat";
								} else {
									echo "$nat"." / "."$nat_trad";
								}
							?></td>
							<?php echo "<td align='center'><a href=\"modification.php?varid_trad=$id_trad\">o</a> <a href=\"supprimer.php?varid_trad=$id_trad\">x</a></td>"; ?>
						</tr><?php
					}	
					$result->free();
				}
				$mysqli->close();
			?>
		</table>
	</body>
</html>