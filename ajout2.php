<!DOCTYPE html> <!-- MODIFICATION SUR PLURALITE NATURE LE 4-4 NON TERMINE -->
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajouter des mots</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
	<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<form name="ajoutVoc" action="fonctions/ajout22.php" method="post">
			<?php
		    	$vocabulaires = array();
		    	$traductions = array();
		    	$vocabulaires = $_POST['vocabulaire'];
		    	$traductions = $_POST['traduction'];

		    	$id_vocs = array();
		    	$id_trads = array();
	    		$id_vocs = $_POST["id_voc"];
				$id_trads = $_POST["id_trad"];
		    	
		    	for($counter = 0; $counter < sizeof($vocabulaires); $counter++)
		    	{
		    		echo "vocabulaire #".($counter + 1).": ".$id_vocs[$counter]."<br />";
					echo '<input type="hidden" name="id_voc[]" value="'.$id_vocs[$counter].'"/>'; 
		    		echo "vocabulaire : ".$vocabulaires[$counter]."<br />";
		    		echo '<input type="hidden" name="vocabulaire[]" value="'.$vocabulaires[$counter].'"/>'; 
		    		echo "traduction : ".$id_trads[$counter]."<br />";
		    		echo '<input type="hidden" name="id_trad[]" value="'.$id_trads[$counter].'"/>'; 
		    		echo "traduction : ".$traductions[$counter]."<br /><br />";
		    		echo '<input type="hidden" name="traduction[]" value="'.$traductions[$counter].'"/>'; 
		    	}

				echo "<br>";
				echo "<u>champs lexical et nature des mots : </u><br />";
				$id_champs = $_POST["idc"];
				$query1 = "SELECT champs FROM champs_lex WHERE id_ch = '".$id_champs."' ";
					if ($result1 = $mysqli->query($query1)) {
						while ($row = $result1->fetch_assoc()) {
							$champs = $row["champs"] ;
				}} echo "$champs";
				echo '<input type="hidden" name="idc" value="'.$id_champs.'"/>'; 
				echo '<input type="hidden" name="champs" value="'.$champs.'"/>'; 
				echo ", ";
				$id_nat_voc = $_POST["idn"];
				$query2 = "SELECT nature_voc FROM nature_voc WHERE id_n_voc = '".$id_nat_voc."' ";
					if ($result2 = $mysqli->query($query2)) {
						while ($row = $result2->fetch_assoc()) {
							$nat_voc = $row["nature_voc"] ;
				}} echo "$nat_voc";
				echo '<input type="hidden" name="idn" value="'.$id_nat_voc.'"/>'; 
				$id_nat_trad = $_POST["idn"];
				$query3 = "SELECT nature_trad FROM nature_trad WHERE id_n_trad = '".$id_nat_voc."' ";
					if ($result3 = $mysqli->query($query3)) {
						while ($row = $result2->fetch_assoc()) {
							$nat_trad = $row["nature_trad"] ;
				}} //echo "$nat_trad";
				//echo '<input type="hidden" name="idn" value="'.$id_nat_trad.'"/>'; 

				echo '<br><br><hr><br>';
			?>
			<input type="submit" name="save" value="Confirmer">
			
			<br><br>
		</form>
	</body>
</html>