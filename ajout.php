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
		<form name="ajoutVoc" action="fonctions/ajout2.php" method="post">
			<?php

/* RECEPTION */

				$id_voc = $_POST["idv"];
				$voc = $_POST["vocabulaire"];
				$id_trad = $_POST["idt"];
				$trad = $_POST["traduction"];

				$id_champs = $_POST["idc"];
				$id_nat_voc = $_POST["idn_voc"];
				$id_nat_trad = $_POST["idn_trad"];

				if(isset($_POST["vocabulaire2"])) { $voc2 = $_POST["vocabulaire2"]; 
				$id_voc2 = $id_voc + '1'; 
				}
				if(isset($_POST["vocabulaire3"])) { $voc3 = $_POST["vocabulaire3"]; 
				$id_voc3 = $id_voc + '2'; 
				}
				if(isset($_POST["vocabulaire4"])) { $voc4 = $_POST["vocabulaire4"]; 
				$id_voc4 = $id_voc + '3'; 
				}
				if(isset($_POST["traduction2"])) { $trad2 = $_POST["traduction2"]; 
				$id_trad2 = $id_trad + '1'; 
				}
				if(isset($_POST["traduction3"])) { $trad3 = $_POST["traduction3"]; 
				$id_trad3 = $id_trad + '2'; 
				}
				if(isset($_POST["traduction4"])) { $trad4 = $_POST["traduction4"]; 
				$id_trad4 = $id_trad + '3'; 
				}
				if(isset($_POST["champs2"])) { $champs2 = $_POST["champs2"]; 
				$querya = "SELECT id_ch FROM champs_lex WHERE champs = '$champs2'";
				if ($resulta = $mysqli->query($querya)) {
					while ($row = $resulta->fetch_assoc()) {
						$id_champs2 = $row["id_ch"];
				}}}
				if(isset($_POST["champs3"])) { $champs3 = $_POST["champs3"]; 
				$queryb = "SELECT id_ch FROM champs_lex WHERE champs = '$champs3'";
				if ($resultb = $mysqli->query($queryb)) {
					while ($row = $resultb->fetch_assoc()) {
						$id_champs3 = $row["id_ch"];
				}}}
				if(isset($_POST["champs4"])) { $champs4 = $_POST["champs4"]; 
				$queryc = "SELECT id_ch FROM champs_lex WHERE champs = '$champs4'";
				if ($resultc = $mysqli->query($queryc)) {
					while ($row = $resultc->fetch_assoc()) {
						$id_champs4 = $row["id_ch"];
				}}}
				if(isset($_POST["nat_voc2"])) { $nat_voc2 = $_POST["nat_voc2"]; 
				$queryd = "SELECT id_n_voc FROM nature_voc WHERE nature_voc = '$nat_voc2'";
				if ($resultd = $mysqli->query($queryd)) {
					while ($row = $resultd->fetch_assoc()) {
						$id_nat_voc2 = $row["id_n_voc"];
				}}}
				if(isset($_POST["nat_voc3"])) { $nat_voc3 = $_POST["nat_voc3"]; 
				$querye = "SELECT id_n_voc FROM nature_voc WHERE nature_voc = '$nat_voc3'";
				if ($resulte = $mysqli->query($querye)) {
					while ($row = $resulte->fetch_assoc()) {
						$id_nat_voc3 = $row["id_n_voc"];
				}}}
				if(isset($_POST["nat_voc4"])) { $nat_voc4 = $_POST["nat_voc4"]; 
				$queryf = "SELECT id_n_voc FROM nature_voc WHERE nature_voc = '$nat_voc4'";
				if ($resultf = $mysqli->query($queryf)) {
					while ($row = $resultf->fetch_assoc()) {
						$id_nat_voc4 = $row["id_n_voc"];
				}}}
				if(isset($_POST["nat_trad2"])) { $nat_trad2 = $_POST["nat_trad2"]; 
				$queryg = "SELECT id_n_trad FROM nature_trad WHERE nature_trad = '$nat_trad2'";
				if ($resultg = $mysqli->query($queryg)) {
					while ($row = $resultg->fetch_assoc()) {
						$id_nat_trad2 = $row["id_n_trad"];
				}}}
				if(isset($_POST["nat_trad3"])) { $nat_trad3 = $_POST["nat_trad3"]; 
				$queryh = "SELECT id_n_trad FROM nature_trad WHERE nature_trad = '$nat_trad3'";
				if ($resulth = $mysqli->query($queryh)) {
					while ($row = $resulth->fetch_assoc()) {
						$id_nat_trad3 = $row["id_n_trad"];
				}}}
				if(isset($_POST["nat_trad4"])) { $nat_trad4 = $_POST["nat_trad4"]; 
				$queryi = "SELECT id_n_trad FROM nature_trad WHERE nature_trad = '$nat_trad4'";
				if ($resulti = $mysqli->query($queryi)) {
					while ($row = $resulti->fetch_assoc()) {
						$id_nat_trad4 = $row["id_n_trad"];
				}}}

				$query4= "SELECT id_se_trad FROM se_trad WHERE id_se_trad=(SELECT max(id_se_trad) FROM se_trad)";
				if ($result4 = $mysqli->query($query4)) {
					while ($row = $result4->fetch_assoc()) {
						$id_se_trad = $row["id_se_trad"] + '1';
				}}
				if((isset($_POST["vocabulaire2"]))&&(isset($_POST["traduction2"]))) { 
				$id_se_trad2 = $id_se_trad + '1'; 
				}
				if((isset($_POST["vocabulaire2"]))||(isset($_POST["traduction2"]))) { 
				$id_se_trad2 = $id_se_trad + '1'; 
				}

				// CELA SE COMPLIQUE POUR LA SUITE
				if((isset($_POST["vocabulaire3"]))&&(isset($_POST["traduction3"]))) { 
				$id_se_trad3 = $id_se_trad + '2'; 
				}
				if((isset($_POST["vocabulaire4"]))&&(isset($_POST["traduction4"]))) { 
				$id_se_trad4 = $id_se_trad + '3'; 
				}

				$query5= "SELECT id_app FROM appartient WHERE id_app=(SELECT max(id_app) FROM appartient)";
				if ($result5 = $mysqli->query($query5)) {
					while ($row = $result5->fetch_assoc()) {
						$id_app = $row["id_app"] + '1';
				}}
				$id_app2 = $id_app + '1'; 
				$id_app3 = $id_app + '2'; 
				$id_app4 = $id_app + '3'; 

				$query6= "SELECT id_a_pr_n_voc FROM a_pr_n_voc WHERE id_a_pr_n_voc =(SELECT max(id_a_pr_n_voc) FROM a_pr_n_voc)";
				if ($result6 = $mysqli->query($query6)) {
					while ($row = $result6->fetch_assoc()) {
						$id_a_pr_n_voc = $row["id_a_pr_n_voc"] + '1';
				}}
				$id_a_pr_n_voc2 = $id_a_pr_n_voc + '1';
				$id_a_pr_n_voc3 = $id_a_pr_n_voc + '2';
				$id_a_pr_n_voc4 = $id_a_pr_n_voc + '3';

				$query7= "SELECT id_a_pr_n_trad FROM a_pr_n_trad WHERE id_a_pr_n_trad =(SELECT max(id_a_pr_n_trad) FROM a_pr_n_trad)";
				if ($result7 = $mysqli->query($query7)) {
					while ($row = $result7->fetch_assoc()) {
						$id_a_pr_n_trad = $row["id_a_pr_n_trad"] + '1';
				}}
				$id_a_pr_n_trad2 = $id_a_pr_n_trad + '1';
				$id_a_pr_n_trad3 = $id_a_pr_n_trad + '2';
				$id_a_pr_n_trad4 = $id_a_pr_n_trad + '3';

/* ECRITURE ET ENVOI */

	// VOC & ID

				echo "$id_voc, $voc"; 
				echo '<input type="hidden" name="idv" value="'.$id_voc.'"/>';
				echo '<input type="hidden" name="vocabulaire" value="'.$voc.'"/>'; 
				if(isset($_POST["vocabulaire2"])) { echo "<br>"; echo "$id_voc2".", "."$voc2"; 
					echo '<input type="hidden" name="idv2" value="'.$id_voc2.'"/>';
					echo '<input type="hidden" name="vocabulaire2" value="'.$voc2.'"/>'; 
				} 
				if(isset($_POST["vocabulaire3"])) { echo "<br>"; echo "$id_voc3".", "."$voc3"; 
					echo '<input type="hidden" name="idv3" value="'.$id_voc3.'"/>';
					echo '<input type="hidden" name="vocabulaire3" value="'.$voc3.'"/>'; 
				} 
				if(isset($_POST["vocabulaire4"])) { echo "<br>"; echo "$id_voc4".", "."$voc4"; 
					echo '<input type="hidden" name="idv4" value="'.$id_voc4.'"/>';
					echo '<input type="hidden" name="vocabulaire4" value="'.$voc4.'"/>'; 
				} 

	// TRAD & ID

				echo "<br><br>";
				echo "$id_trad, $trad";
				echo '<input type="hidden" name="idt" value="'.$id_trad.'"/>'; 
				echo '<input type="hidden" name="traduction" value="'.$trad.'"/>'; 
				if(isset($_POST["traduction2"])) { echo "<br>"; echo "$id_trad2".", "."$trad2"; 
					echo '<input type="hidden" name="idt2" value="'.$id_trad2.'"/>'; 
					echo '<input type="hidden" name="traduction2" value="'.$trad2.'"/>'; 
				} 
				if(isset($_POST["traduction3"])) { echo "<br>"; echo "$id_trad3".", "."$trad3"; 
					echo '<input type="hidden" name="idt3" value="'.$id_trad3.'"/>'; 
					echo '<input type="hidden" name="traduction3" value="'.$trad3.'"/>'; 
				} 
				if(isset($_POST["traduction4"])) { echo "<br>"; echo "$id_trad4".", "."$trad4"; 
					echo '<input type="hidden" name="idt4" value="'.$id_trad4.'"/>'; 
					echo '<input type="hidden" name="traduction4" value="'.$trad4.'"/>'; 
				} 

	// CAS DE LA TRADUCTION APPARENTEE A UN VOCABULAIRE => PROBLEME ICI : QUELLE(s) LIAISON(s) VALIDER ?

				echo "<br><br>";
				echo "traduction n&#176;"."$id_se_trad"." (se_trad)";
				echo '<input type="hidden" name="idst" value="'.$id_se_trad.'"/>'; 
				echo "<br>";

				if((isset($_POST["vocabulaire2"]))&&(isset($_POST["traduction2"]))) { 
					echo "traduction n&#176;"."$id_se_trad2"." (se_trad)";
					echo '<input type="hidden" name="idst2" value="'.$id_se_trad2.'"/>'; 
					echo "<br>";
				} else if((isset($_POST["vocabulaire2"]))||(isset($_POST["traduction2"]))) { 
					echo "traduction n&#176;"."$id_se_trad2"." (se_trad)";
					echo '<input type="hidden" name="idst2" value="'.$id_se_trad2.'"/>'; 
					echo "<br>";
				}

				// CELA SE COMPLIQUE POUR LA SUITE
				if((isset($_POST["vocabulaire3"]))&&(isset($_POST["traduction3"]))) { 
					echo "traduction n&#176;"."$id_se_trad3"." (se_trad)";
					echo '<input type="hidden" name="idst3" value="'.$id_se_trad3.'"/>'; 
					echo "<br>";
				}

				if((isset($_POST["vocabulaire4"]))&&(isset($_POST["traduction4"]))) { 
					echo "traduction n&#176;"."$id_se_trad4"." (se_trad)";
					echo '<input type="hidden" name="idst4" value="'.$id_se_trad4.'"/>'; 
					echo "<br>";
				}

	// CAS DE L'APPARTENANCE A UN CHAMPS LEXICAL
	// CHAMPS LEXICAL(AUX)

				echo "<br>";
				$query1 = "SELECT champs FROM champs_lex WHERE id_ch = '".$id_champs."' ";
					if ($result1 = $mysqli->query($query1)) {
						while ($row = $result1->fetch_assoc()) {
							$champs = $row["champs"] ;
				}} 
				echo "appartient (n&#176;"."$id_app".") au champs lexical : "."$champs"." ("."$id_champs".")";
				echo '<input type="hidden" name="idc" value="'.$id_champs.'"/>'; 
				echo '<input type="hidden" name="idapp" value="'.$id_app.'"/>'; 
				//echo '<input type="hidden" name="champs" value="'.$champs.'"/>'; 

				if(isset($_POST["champs2"])) { 
				// CE QUI EST COMMENTE DOIT ETRE TRAVAILLER SUR AJOUT2
					// if((isset($_POST["vocabulaire2"]))&&(isset($_POST["traduction2"]))) { 
					// 	echo "<br>";
					// 	echo "appartient (n&#176;"."$id_app2".") au champs lexical : "."$champs2"." ("."$id_champs2".")";
					// 	echo '<input type="hidden" name="idc2" value="'.$id_champs2.'"/>'; 
					// 	echo '<input type="hidden" name="idapp2" value="'.$id_app2.'"/>'; 
					// } else {
					echo "<br>";
					echo "appartient (n&#176;"."$id_app2".") au champs lexical : "."$champs2"." ("."$id_champs2".")";
					echo '<input type="hidden" name="idc2" value="'.$id_champs2.'"/>'; 
					echo '<input type="hidden" name="idapp2" value="'.$id_app2.'"/>'; 
					// }
				}

				if(isset($_POST["champs3"])) { 
					echo "<br>";
					echo "appartient (n&#176;"."$id_app3".") au champs lexical : "."$champs3"." ("."$id_champs3".")";
					echo '<input type="hidden" name="idc3" value="'.$id_champs3.'"/>'; 
					echo '<input type="hidden" name="idapp3" value="'.$id_app3.'"/>'; 
				}

				if(isset($_POST["champs4"])) { 
					echo "<br>";
					echo "appartient (n&#176;"."$id_app4".") au champs lexical : "."$champs4"." ("."$id_champs4".")";
					echo '<input type="hidden" name="idc4" value="'.$id_champs4.'"/>'; 
					echo '<input type="hidden" name="idapp4" value="'.$id_app4.'"/>'; 
				}

	// NATURE(S) (VOC)

				echo "<br><br>";
				$query2 = "SELECT nature_voc FROM nature_voc WHERE id_n_voc = '".$id_nat_voc."' ";
					if ($result2 = $mysqli->query($query2)) {
						while ($row = $result2->fetch_assoc()) {
							$nat_voc = $row["nature_voc"] ;
				}} 
				echo "a pour nature (n&#176;"."$id_a_pr_n_voc".") "."$nat_voc"." (".$id_nat_voc.")"; 
				echo '<input type="hidden" name="idn_voc" value="'.$id_nat_voc.'"/>'; 
				echo '<input type="hidden" name="aprn_voc" value="'.$id_a_pr_n_voc.'"/>'; 

				if(isset($_POST["nat_voc2"])) { 
					echo "<br>"; 
					echo "a pour nature (n&#176;"."$id_a_pr_n_voc2".") "."$nat_voc2"." (".$id_nat_voc2.")"; 
					echo '<input type="hidden" name="idn_voc2" value="'.$id_nat_voc2.'"/>'; 
					echo '<input type="hidden" name="aprn_voc2" value="'.$id_a_pr_n_voc2.'"/>'; 
				}
				if(isset($_POST["nat_voc3"])) { 
					echo "<br>"; 
					echo "a pour nature (n&#176;"."$id_a_pr_n_voc3".") "."$nat_voc3"." (".$id_nat_voc3.")"; 
					echo '<input type="hidden" name="idn_voc3" value="'.$id_nat_voc3.'"/>'; 
					echo '<input type="hidden" name="aprn_voc3" value="'.$id_a_pr_n_voc3.'"/>';
				}
				if(isset($_POST["nat_voc4"])) { 
					echo "<br>"; 
					echo "a pour nature (n&#176;"."$id_a_pr_n_voc4".") "."$nat_voc4"." (".$id_nat_voc4.")"; 
					echo '<input type="hidden" name="idn_voc4" value="'.$id_nat_voc4.'"/>'; 
					echo '<input type="hidden" name="aprn_voc4" value="'.$id_a_pr_n_voc4.'"/>';
				} 
				echo "<br><br>";

	// NATURE(S) (TRAD)

				$query3 = "SELECT nature_trad FROM nature_trad WHERE id_n_trad = '".$id_nat_trad."' ";
					if ($result3 = $mysqli->query($query3)) {
						while ($row = $result3->fetch_assoc()) {
							$nat_trad = $row["nature_trad"] ;
				}} 
				echo "a pour nature (n&#176;"."$id_a_pr_n_trad".") "."$nat_trad"." (".$id_nat_trad.")"; 
				echo '<input type="hidden" name="idn_trad" value="'.$id_nat_trad.'"/>'; 
				echo '<input type="hidden" name="aprn_trad" value="'.$id_a_pr_n_trad.'"/>'; 

				if(isset($_POST["nat_trad2"])) { 
					echo "<br>"; 
					echo "a pour nature (n&#176;"."$id_a_pr_n_trad2".") "."$nat_trad2"." (".$id_nat_trad2.")"; 
					echo '<input type="hidden" name="idn_trad2" value="'.$id_nat_trad2.'"/>'; 
					echo '<input type="hidden" name="aprn_trad2" value="'.$id_a_pr_n_trad2.'"/>'; 
				} 
				if(isset($_POST["nat_trad3"])) { 
					echo "<br>"; 
					echo "a pour nature (n&#176;"."$id_a_pr_n_trad3".") "."$nat_trad3"." (".$id_nat_trad3.")"; 
					echo '<input type="hidden" name="idn_trad3" value="'.$id_nat_trad3.'"/>'; 
					echo '<input type="hidden" name="aprn_trad3" value="'.$id_a_pr_n_trad3.'"/>'; 
				}
				if(isset($_POST["nat_trad4"])) { 
					echo "<br>"; 
					echo "a pour nature (n&#176;"."$id_a_pr_n_trad4".") "."$nat_trad4"." (".$id_nat_trad4.")"; 
					echo '<input type="hidden" name="idn_trad4" value="'.$id_nat_trad4.'"/>'; 
					echo '<input type="hidden" name="aprn_trad4" value="'.$id_a_pr_n_trad4.'"/>'; 
				}

				echo '<br><br><hr><br>';
			?>
			<input type="submit" name="save" value="Confirmer">
			<br><br>
		</form>
	</body>
</html>