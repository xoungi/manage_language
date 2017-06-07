<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajouter un mot</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<form name="nombre" action="ajouter_des.php" method="get">
		<p>Combien de mots d&eacute;sirez-vous ajouter ?
		<select name="nombre">
			<?php
				$numbers = array( 2, 3, 4, 5, 6, 7, 8, 9, 10 );
		        foreach ($numbers as $number) {
		            echo '<option value="'. $number .'">'.$number.'</option>';
		        }
		        //unset($number);
	        ?>
		</select><input type="submit" value=" Ok "></p></form>

		<form name="ajoutVoc" action="ajout2.php" method="post">

		<?php
			
			if(isset($_GET['nombre'])) {

				$query2= "SELECT dlangage FROM database_spec";
					if ($result2 = $mysqli->query($query2)) {
						while ($row2 = $result2->fetch_assoc()) {
							$langage = $row2['dlangage']; ?>
							<u>Page d'insertion de vocabulaire multiple</u> <?php if(isset($_GET['nombre'])) { $nombre = $_GET['nombre']; echo "(".$nombre.")" ; ?> : 
								<tr>
									<td>champs lexical</td>
									<td>
										<select name="idc"><?php
											$query3 = "SELECT id_ch, champs FROM champs_lex";
											if ($result3 = $mysqli->query($query3)) {
												while ($row = $result3->fetch_assoc()) {
													foreach ($result3 as $result01){
														echo '<option value="'. $result01['id_ch'] .'">'.$result01['champs'].'</option>';
													}
												}
											}?>
										</select>
									</td>
								</tr>
								 ; 
								<tr>
									<td>nature des mots</td>
									<td>
										<select name="idn"><?php
											$query4 = "SELECT id_n_voc, nature_voc FROM nature_voc";
											if ($result4 = $mysqli->query($query4)) {
												while ($row = $result4->fetch_assoc()) {
													foreach ($result4 as $result02){
														echo '<option value="'. $result02['id_n_voc'] .'">'.$result02['nature_voc'].'</option>';
													}
												}
											}?>
										</select>
									</td>
								</tr><br><br>

								<?php for ($i = 1; $i <= $nombre; $i++) { ?>

									<table>
										<?php
										$query= "SELECT id_voc FROM voc_eng WHERE id_voc=(SELECT max(id_voc) FROM voc_eng)";
										if ($result = $mysqli->query($query)) {
											while ($row = $result->fetch_assoc()) {
											$id_voc2 = $row["id_voc"] + $i;
										echo '<input type="hidden" name="id_voc[]" value="'.$id_voc2.'"/>'; 
										}}
										$query2= "SELECT id_trad FROM trad WHERE id_trad=(SELECT max(id_trad) FROM trad)";
										if ($result2 = $mysqli->query($query2)) {
											while ($row = $result2->fetch_assoc()) {
												$id_trad2 = $row["id_trad"] + $i;					
										echo '<input type="hidden" name="id_trad[]" value="'.$id_trad2.'"/>'; 
										}}?>
										</tr>
										<tr>
											<td>Vocabulaire <?php echo $langage.' ('.$id_voc2.')'; ?></td>

											<td><?php 
												echo '<input type="text" name="vocabulaire[]" required/>'; ?>	
											</td>
										</tr>
										<tr>
											<td>Traduction fran&ccedil;aise <?php echo '('.$id_trad2.')'?></td>
											<td><?php 
												echo '<input type="text" name="traduction[]" required/>'; ?>
											</td>
										</tr>
										<hr>
									</table>
								<?php
							}					
						}
					}
				} ?> <hr><input type="submit" value=" Envoyer "></form>
			<?php 
		} ?>
	
	</body>
<hr><p>Les identifiants sont d&eacute;finis automatiquement &agrave; partir de la derni&egrave;re valeur entr&eacute;e.</p>
<p>Pour les guillemets : mettre un antislash avant de l'&eacute;crire. ( \' )</p>
<p>Cette page permet d'ajouter de manière simplifiée une liste de mots ayant la même nature et le même champs lexical.</p> 
<p>A la différence des touches + dans l'ajout simple, il s'agit de mot ayant un identifiant différent donc n'ayant pas de rapport entre eux.
</p><p>Attention, si vous constatez que vous avez ajouté un mot de trop, ajoutez un mot que vous effacerez par la suite. Cela évite de tout recommencer.</p>
<p>Naviguez entre les cases avec la touche Tab.</p>      
</html>