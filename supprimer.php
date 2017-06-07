<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Supprimer un mot</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
	<div><h2><a href="index.php">Home</a></h2><hr><br></div>
	<?php
		$id_trad = $_GET["varid_trad"];
		echo "<u>Page de suppression des entr&eacute;es :</u> ";
		echo "<br><br>";
		$query1= "SELECT dlangage FROM database_spec";
			if ($result1 = $mysqli->query($query1)) {
				while ($row1 = $result1->fetch_assoc()) {
					$langage = $row1['dlangage'];

					$query2=(" SELECT nature_voc.id_n_voc, nature_trad.id_n_trad, champs_lex.id_ch, appartient.id_app, a_pr_n_voc.id_a_pr_n_voc, a_pr_n_trad.id_a_pr_n_trad, trad.id_trad, trad.trad, voc_eng.id_voc, voc_eng.voc, champs_lex.champs, nature_trad.nature_trad, nature_voc.nature_voc FROM appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n_trad, a_pr_n_voc, nature_trad, nature_voc WHERE a_pr_n_trad.id_n_trad = nature_trad.id_n_trad AND a_pr_n_trad.id_trad = trad.id_trad AND a_pr_n_voc.id_n_voc = nature_voc.id_n_voc AND a_pr_n_voc.id_voc = voc_eng.id_voc AND appartient.id_se_trad = se_trad.id_se_trad AND appartient.id_ch = champs_lex.id_ch AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND trad.id_trad = '".$id_trad."' ");
					
						if ($result2 = $mysqli->query($query2)) {
							while ($row2 = $result2->fetch_assoc()) {
								$id_voc = $row2['id_voc'];
								$trad = $row2['trad']; 
								$voc = $row2['voc'];
								$id_app = $row2['id_app'];
								$nat_voc = $row2['nature_voc'];
								$nat_trad = $row2['nature_trad'];
								$champs = $row2['champs'];
								$id_ch = $row2['id_ch'];
								echo '<form name="supprVoc" action="fonctions/suppr.php" method="post">';
								echo '
								<table>
									<tr>
										<td>Identifiant fran&ccedil;ais</td>
										<td>"'.$id_voc.'"</td>';
										echo '<input type="hidden" name="idv" value="'.$id_voc.'"/>'; 
									echo '</tr>
									<tr>
										<td>Identifiant '.$langage.'</td>
										<td>"'.$id_trad.'"</td>';
										echo '<input type="hidden" name="idt" value="'.$id_trad.'"/>'; 
									echo '</tr>
									<tr>
										<td>Vocabulaire '.$langage.'</td>
										<td>"'.$voc.'"</td>';
										echo '<input type="hidden" name="vocabulaire" value="'.$voc.'"/>'; 
									echo '</tr>
									<tr>
										<td>Traduction fran&ccedil;aise</td>
										<td>"'.$trad.'"</td>';
										echo '<input type="hidden" name="traduction" value="'.$trad.'"/>'; 
									echo '</tr>
									<tr>
										<td>Champs lexical</td>
										<td>"'.$champs.'"</td>';
										echo '<input type="hidden" name="champs" value="'.$champs.'"/>'; 
									echo '</tr>
									<tr>
										<td>Nature du vocabulaire</td>
										<td>"'.$nat_voc.'"</td>';
										echo '<input type="hidden" name="nature" value="'.$nat_voc.'"/>'; 
									echo '</tr>
									<tr>
										<td>Nature de la traduction</td>
										<td>"'.$nat_trad.'"</td>';
										echo '<input type="hidden" name="nature" value="'.$nat_trad.'"/>'; 

										echo '<input type="hidden" name="id_ch" value="'.$id_ch.'"/>'; 
										echo '<input type="hidden" name="id_app" value="'.$id_app.'"/>'; 
										
									echo '</tr>';
								echo'</table>';
								echo '<br>
							<input type="submit" name="suppr" value=" Confirmer ">
							<br><br></form>';
						}
					}
				}
			}
		?>
	</body>
</html>