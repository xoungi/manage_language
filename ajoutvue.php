<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajout d'une vue</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>

		<h3>Page de cr&#233;ation d'une vue</h3>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset><p>Champs lexical dont la vue se sert : </p>
				<?php
				$champs_lex="";
				$id_champs="";
				if(isset($_GET['champs_lex'])) {
					$champs_lex = $_GET['champs_lex'];
				}?>

				<select name="champs_lex"><?php
					$query3 = "SELECT id_ch, champs FROM champs_lex";

					if ($result3 = $mysqli->query($query3)) {
						while ($row = $result3->fetch_assoc()) {
							foreach ($result3 as $result01){
								if ($result01['id_ch'] == $_GET['champs_lex']) {
							       $selected = 'selected';
							       $champs_lex = $result01['champs'];
							       $id_champs = $result01['id_ch'];
							    } else {
							       $selected = '';
							    }
								echo '<option value="'. $result01['id_ch'] . '" '.$selected.'>'.$result01['champs'].'</option>';
							}
						}
					} ?>
				</select> <button type="submit">Envoyer</button><br><br>
			</fieldset>
		</form>

		<form action="fonctions/ajoutvue.php" method="POST">
			<fieldset><br>
				<label for-"vue">Nom de la vue :</label><br>
				<input type="text" name="vue" required placeholder="cl_"> </input>
				<br><br>
				<label for="champslex">Nom du <u>champs lexical</u> (id) :</label> <br>
				<?php 
					if ($champs_lex != "") {
						echo ' <u>'.$champs_lex.'</u> ';
						echo '<input type="hidden" name="champs" value="'.$champs_lex.'"/>'; 
					}
					else {
						echo "";
					}
					if ($id_champs != "") {
						echo '('.$id_champs.')';
						echo '<input type="hidden" name="idchamps" value="'.$id_champs.'"/>'; 
					}
					else {
						echo '';
					}
				?>

				<br><p><u>Natures</u> incluses : 
					<?php
						$query = "SELECT id_n_voc, nature_voc FROM nature_voc";
						if ($result = $mysqli->query($query)) {
							while ($row = $result->fetch_assoc()) {
								$id_n = $row['id_n_voc'];
								$nature = $row['nature_voc']; 
								$num_rows1 = mysqli_num_rows($result);
								echo ' <input type= "checkbox" name= "Choix[]" value= "'.$id_n.'">'.$nature.'</input> ';
							}
							echo '<input type="hidden" name="naturenumb" value="'.$num_rows1.'"/>';
						} 
					?>
				</p>
				<br>

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
				<input onclick="CocheTout(this, 'Choix[]');" type="checkbox">Automatiquement tout cocher</input>
				<br><br><button type="submit">Envoyer</button><br>
			</fieldset>
		</form>
    <hr><p>Il faut obligatoirement créer un champs lexical avant de créer la vue.<br>
    Il faut obligatoirement commencer le nom de la vue par les lettres <mark>cl</mark>, + ce que vous voulez en fonction du nombre de caractères définis dans le préfixe.<br>
    Attention, la vue sera créée même si vous omettez de choisir un champs lexical. Pour l'effacer, il faudra aller dans votre base de donnée dlangage(n° du champs lexical),
    table view_spec. <br>Il s'agit de la dernière entrée. N'oubliez pas le <mark>nom de la vue</mark> après le préfixe (ex: cl1cinema pour un préfixe 3).<br>
    Attention les accents ne sont pas toujours bien pris en compte. Si certaines redirections ne se font pas, revenez manuellement à l'index. <br>
    Merci de votre attention.</p> 
	</body>
</html>