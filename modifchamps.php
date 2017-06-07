<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Modification d'une vue</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Nom de la vue &#224; modifier : </p>
				<?php
					if(isset($_GET['vue_name'])) {
						$vue_name = $_GET['vue_name'];
					}
				?>
				<select name="vue_name">
					<?php
						$query3 = "SHOW TABLES IN " .$bdd. " LIKE 'CL_%' ";
						if ($result3 = $mysqli->query($query3)) {
							while ($row = $result3->fetch_assoc()) {
								foreach ($result3 as $result01){
									$vue = $result01['Tables_in_'.$bdd.' (CL_%)'];
									if ($result01['Tables_in_'.$bdd.' (CL_%)'] == $vue_name) {
								       $selected = 'selected';
								    } else {
								       $selected = '';
								    }
									echo '<option value="'.$vue. '" '.$selected.'>'.$vue.'</option>';
								}
							}
						} 
					?>
				</select> <button type="submit">Envoyer</button><br><br>
			</fieldset>
		</form>
		<form action="fonctions/modifchamps.php" method="POST">
			<fieldset><br>
				<label for="champslex">Nom du <u>champs lexical</u> rattach&#233; :</label> 
				<?php 
					if(isset($_GET['vue_name'])) {
						$query2 = "SELECT champs from $vue_name LIMIT 1";
						if ($result2 = $mysqli->query($query2)) {
							while ($row = $result2->fetch_assoc()) {
								$champs = $row['champs'];
								echo "<u>$champs</u>";
								echo '<input type="hidden" name="champs" value="'.$champs.'"/>'; 
								echo '<input type="hidden" name="vue" value="'.$vue_name.'"/>'; 

								$query4= "SELECT id_ch FROM champs_lex WHERE champs = '$champs'";
								if ($result4 = $mysqli->query($query4)) {
									while ($row = $result4->fetch_assoc()) {
										$id_champs = $row['id_ch'];
										echo '<input type="hidden" name="id_champs" value="'.$id_champs.'"/>'; 
									}
								}
							}
						}
					?>
					<br><br>
					<u>Nature(s)</u> incluse(s) : 
						<table id="singletable2">
							<?php
								$query = "SELECT id_n_voc, nature_voc FROM nature_voc";
								if ($result = $mysqli->query($query)) {
									while ($row = $result->fetch_assoc()) {
										$id_n = $row['id_n_voc'];
										$nature = $row['nature_voc']; 
										$num_rows1 = mysqli_num_rows($result);
										$query1 = "SELECT nature_inc, nature_numb FROM `view_spec` WHERE view_name = '$vue_name' ";
										if ($result1 = $mysqli->query($query1)) {
											while ($row = $result1->fetch_assoc()) {
												$array_nature = $row['nature_inc'];
												$exploded_array = explode(',', $array_nature);
												foreach ($exploded_array as $element)
												{
													// echo "<br>";
													// echo $id_n;
													// echo " - ";
													// echo $element; 
													if ($element == $id_n) {
												       $selected = 'checked';
												    } else {
												       $selected = '';
												    }
												} 
											}
										}
										echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix[]" value= "'.$id_n.'" '.$selected.'>'.$nature.' ('.$id_n.')</input></td></tr> ';
									}
									echo "<br>";
									if ($array_nature != '') { echo $array_nature; } else { echo "toutes les natures sont pr&#233;sentes"; }
									echo ' - '.'<input onclick="CocheTout(this, \'Choix[]\');" type="checkbox" >Automatiquement tout cocher</input>'.'<br><br>';
									echo '<input type="hidden" name="naturenumb" value="'.$num_rows1.'"/>';
								} 
							?>
							</table>
							<script>
								window.location.hash="no-back-button";
								window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
								window.onhashchange=function(){window.location.hash="no-back-button";}
							</script> 
							<script>
								function CocheTout(ref, name) {
									var form = ref;
									while (form.parentNode && form.nodeName.toLowerCase() != 'form'){ 
										form = form.parentNode; 
									}
									var elements = form.getElementsByTagName('input');
									for (var i = 0; i < elements.length; i++) {
										if (elements[i].type == 'checkbox' && elements[i].name == name) {
											elements[i].checked = ref.checked;
										}
									}
								}
							</script>
							<?php 
						} 
					?>
				</fieldset>
				<fieldset><p>Les vues sans entr&#233;es ne sont pas modifiables.<br><br>
				<button type="submit">Envoyer</button><br>
			</fieldset>
		</form>
	</body>
</html>