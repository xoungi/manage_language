<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Modification d'une cat&#233;gorie</title>
		<?php include_once('includes/connexion.php'); ?>
		<script>
			window.location.hash="no-back-button";
			window.location.hash="Again-No-back-button";//again because google chrome don't insert first hash into history
			window.onhashchange=function(){window.location.hash="no-back-button";}
		</script> 
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<h3>Page de modification d'une cat&#233;gorie</h3>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Nom de la cat&#233;gorie &#224; modifier : </p>
				<select name="cat_name">
					<?php
						$query3 = "SELECT id_cat, cat_name FROM view_cat WHERE cat_name != 'sans'";
						if ($result3 = $mysqli->query($query3)) {
							while ($row = $result3->fetch_assoc()) {
								foreach ($result3 as $result01){
									$id_cat = $result01['id_cat'];
									$cat_name = $result01['cat_name'];
									if ($_GET['cat_name'] == $id_cat) {
								       $selected = 'selected';
								    } else {
								       $selected = '';
								    }
									echo '<option value="'.$id_cat. '" '.$selected.'>'.$cat_name.'</option>';
								}
							}
						} 
					?>
				</select> <button type="submit">Envoyer</button><br><br>
			</fieldset>
		</form>
		<form action="fonctions/modifcat.php" method="POST">
			<fieldset>
				<?php if(isset($_GET['cat_name'])) {
					$id_cat = $_GET['cat_name'];
					?>
						<u>Vue(s)</u> incluse(s) : <br><br>
							<table id="singletable2">
								<?php
									$query = "SELECT view_name FROM view_spec WHERE id_cat = $id_cat";
									if ($result = $mysqli->query($query)) {
										while ($row = $result->fetch_assoc()) {
											foreach ($result as $results){
												$view_name = $results['view_name'];
												$numb_view_1 = mysqli_num_rows($result);
												echo '<input type="hidden" name="numb_view_1" value="'.$numb_view_1.'"/>'; 
												//echo $view_name."<br>";
												echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix[]" value= "'.$view_name.'" checked>'.$view_name.'</input></td></tr> ';
											}
										}
									} 
								?>
							</table>
						<?php 
					} 
				?>
			</fieldset>
			<fieldset>
				<?php if(isset($_GET['cat_name'])) {
					$id_cat = $_GET['cat_name'];
					?>
						<u>Sous-cat&#233;gorie(s)</u> incluse(s) : <br><br>
							<table id="singletable2">
								<?php
									$query2 = "SELECT sub_name FROM view_sub WHERE id_cat = $id_cat";
									if ($result2 = $mysqli->query($query2)) {
										while ($row = $result2->fetch_assoc()) {
											foreach ($result2 as $results2){
												$sub_name = $results2['sub_name'];
												$numb_sub_1 = mysqli_num_rows($result2);
												echo '<input type="hidden" name="numb_sub_1" value="'.$numb_sub_1.'"/>'; 
												//echo $view_name."<br>";
												echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix3[]" value= "'.$sub_name.'" checked>'.$sub_name.'</input></td></tr> ';
											}
										}
									} 
								?>
							</table>
						<?php 
					} 
				?>
			</fieldset>
			<fieldset>
				<!--faire apparaître les vues de la catégories 13-->
				<?php if(isset($_GET['cat_name'])) {
					$cat = $_GET['cat_name'];
					echo '<input type="hidden" name="cat" value="'.$cat.'"/>'; 
					?>
						<u>Vue(s)</u> &#224; inclure : <br><br>
							<table id="singletable2">
								<?php
									$query1 = "SELECT view_name FROM view_spec WHERE id_cat = 13";
									if ($result1 = $mysqli->query($query1)) {
										while ($row = $result1->fetch_assoc()) {
											foreach ($result1 as $results1){
												$view_name2 = $results1['view_name'];
												echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix2[]" value= "'.$view_name2.'">'.$view_name2.'</input></td></tr> ';
											}
										}
									} 
								?>
							</table>
						<?php 
					} 
				?>
			</fieldset>
			<fieldset>
				<!--faire apparaître les sous-categories sans cat-->
				<?php if(isset($_GET['cat_name'])) {
					$cat = $_GET['cat_name'];
					echo '<input type="hidden" name="cat" value="'.$cat.'"/>'; 
					?>
						<u>Sous-cat&#233;gorie(s)</u> &#224; inclure : <br><br>
							<table id="singletable2">
								<?php
									$query3 = "SELECT sub_name FROM view_sub WHERE id_cat = 0";
									if ($result3 = $mysqli->query($query3)) {
										while ($row = $result3->fetch_assoc()) {
											foreach ($result3 as $results3){
												$sub_name2 = $results3['sub_name'];
												echo ' <tr><td class="nature"><input type= "checkbox" name= "Choix4[]" value= "'.$sub_name2.'">'.$sub_name2.'</input></td></tr> ';
											}
										}
									} 
								?>
							</table>
						<?php 
					} 
				?>
			</fieldset>
			<fieldset><p>Si aucune vue n'est dans la cat&#233;gorie &#224; inclure c'est que toutes les vues sont cat&#233;goris&#233;es : soit en faire de nouvelles, soit d&#233;cat&#233;goriser les vues existantes.
			<br>Il en est de m&ecirc;me pour les sous-cat&#233;gories.<br></p>
			<button type="submit">Envoyer</button><br>
			</fieldset>
		</form>
	</body>
</html>		