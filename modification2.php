<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Modification d'un mot</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<u>Page de modification des entr&eacute;es :</u><br><br>
		<?php
			$id_trad = $_GET["varid_trad"];

			$query2= "SELECT dlangage FROM database_spec";
				if ($result2 = $mysqli->query($query2)) {
					while ($row2 = $result2->fetch_assoc()) {
						$langage = $row2['dlangage'];	
								
			$query=(" SELECT trad.id_trad, voc_eng.id_voc, trad.trad, voc_eng.voc, champs_lex.champs, champs_lex.id_ch, nature.nat, nature.id_n, appartient.id_app, a_pr_n.id_a_pr_n from appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n, nature where a_pr_n.id_n = nature.id_n AND a_pr_n.id_trad = trad.id_trad AND appartient.id_trad = trad.id_trad AND appartient.id_ch = champs_lex.id_ch AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND trad.id_trad = '".$id_trad."' ");
			if ($result = $mysqli->query($query)) {
				while ($row = $result->fetch_assoc()) {
					$id_voc = $row['id_voc'];
					$id_trad = $row['id_trad'];
					$trad = $row['trad']; // $id_voc = $row['id_voc']; sont équivalents 15-12-2016 (avec id_trad)
					$voc = $row['voc'];
					$id_n = $row['id_n'];
					$nat = $row['nat'];
					$champs = $row['champs'];
					$id_champs = $row['id_ch'];
					$id_app = $row['id_app'];
					$id_a_pr_n = $row['id_a_pr_n'];?>
					<form name="modifVoc" action="fonctions/actionnat.php" method="post"><?php
						echo '<input type="hidden" name="idv" value="'.$id_voc.'"/>';
						echo '<input type="hidden" name="idt" value="'.$id_trad.'"/>';
						echo '<input type="hidden" name="id_app" value="'.$id_app.'"/>';
						echo '<input type="hidden" name="id_a_pr_n" value="'.$id_a_pr_n.'"/>';
						echo '<input type="hidden" name="champs" value="'.$champs.'"/>';
						echo '<input type="hidden" name="nat" value="'.$nat.'"/>';
						?>
						<table>
							<tr>
								<td>Num&eacute;ro <?php echo $langage; ?></td>
								<td><?php echo $id_voc; ?></td>
							</tr>
							<tr>
								<td>Num&eacute;ro fran&ccedil;ais</td>
								<td><?php echo $id_trad; ?></td>
							</tr>
							<tr>
								<td>Appartient, a pour nature</td>
								<td><?php echo "$id_app".", "."$id_a_pr_n"; ?></td>
							</tr>
								<tr>
									<td>Vocabulaire <?php echo $langage; ?></td>
									<!--<input type="text" name="vocabulaire" required >-->
									<script>
										function incSize(event) {
										   var size = event.value.length; 
										   event.setAttribute("size", size);
										   event.setAttribute("style", "width:auto")    
										}
									</script>
									<td>
										<input type="text" name="vocabulaire" onkeyup="incSize(this)" value="<?php echo $voc; ?>" required/>
									</td>
								</tr>
								<tr>
									<td>Traduction fran&ccedil;aise</td>
									<td>
										<input type="text" name="traduction" onkeyup="incSize(this)" value="<?php echo $trad; ?>" required/>
									</td>
								</tr>
								<tr> 
									<td>Champs lexical</td>
									<td>
										<select name="idc"><?php
										$query3 = "SELECT id_ch, champs FROM champs_lex";
										if ($result3 = $mysqli->query($query3)) {
											while ($row = $result3->fetch_assoc()) {
												foreach ($result3 as $result01){

													if ($result01['id_ch'] == $id_champs) {
												       $selected = 'selected';
												    } else {
												       $selected = '';
												    }
													echo '<option value="'. $result01['id_ch'] . '" '.$selected.'>'.$result01['champs'].'</option>';
												}
											}
										} ?>
										</select>
										<a href="">+</a>
									</td>
								</tr>
							<tr>
								<td>Nature du / des mots</td>
								<td>
									<select name="idn"><?php
									$query4 = "SELECT id_n, nat FROM nature";
									if ($result4 = $mysqli->query($query4)) {
										while ($row = $result4->fetch_assoc()) {
											foreach ($result4 as $result02){
												if ($result02['id_n'] == $id_n) {
											       $selected = 'selected';
											    } else {
											       $selected = '';
											    }
												echo '<option value="'. $result02['id_n'] . '" '.$selected.'>'.$result02['nat'].'</option>';
											}
										}
									}?>
									</select>
								</td>
							</tr>
						</table>
						<br>
						<input type="submit" value=" Envoyer ">	
					</form><br><?php
				}
			}}}
		?>
		<hr><p>Lorsque la zone de texte est trop petite pour lire le contenu, cliquez dessus et appuyez sur une des touches fl&eacute;ch&eacute;es.</p>	
	</body>
</html>