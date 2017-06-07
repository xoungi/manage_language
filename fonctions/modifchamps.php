<?php
	include_once('includes/connexion.php');
	$vue = $_POST["vue"];
	$champs = $_POST["champs"];
	$id_champs = $_POST["id_champs"];
	echo 'Le nom de la vue est : ';
	echo $vue;
	echo "<br><br>";
	echo 'Le champs lexical de la vue est : ';
	echo $champs;
	echo " (".$id_champs.")";
	echo "<br><br>";
	if(isset($_POST['Choix'])) {
		$naturenumb = $_POST["naturenumb"];
		$naturechecked = sizeof($_POST['Choix']);
		ob_start();
		foreach ($_POST['Choix'] as $id_n) {
			$nature = $id_n.',';
			echo $nature;
		}
		$output = ob_get_clean();
		$natureforsql = rtrim($output, ',');
		if ($naturechecked == 1) { echo "La nature choisie est : "; } else { echo "Les natures sont : "; }
		echo $natureforsql;
		echo "<br>";
		echo "Sur ";
		echo $naturenumb;
		echo " natures, ";
		echo $naturechecked;
		if ($naturechecked == 1) { echo " est coch&eacute;e."; } else { echo " sont coch&eacute;es."; }
		echo "<br><br>";
	} else {
		echo "Pas d'envoi possible si aucune nature n'est s&eacute;lectionn&eacute;e (<a href=\"../modifchamps.php\">retour arri&egrave;re</a>)";
	}
	if(isset($_POST['Choix'])) {
		switch ($naturechecked) {
		    case 1:
		        echo "une seule nature dans la requ&ecirc;te.";
				echo "<br><br>";
				echo "La requ&ecirc;te est : ";
		        $stmt = "ALTER VIEW $vue AS SELECT trad.id_trad, trad.trad, voc_eng.voc, champs_lex.champs, nature.nat FROM 
		        appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n, nature WHERE a_pr_n.id_n = nature.id_n AND 
		        a_pr_n.id_trad = trad.id_trad AND appartient.id_trad = trad.id_trad AND appartient.id_ch = champs_lex.id_ch 
		        AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND champs_lex.id_ch = $id_champs 
		        AND nature_voc.id_n_voc = $id_n";
			    echo $stmt.'<br><br>';
			    $a=$mysqli->query($stmt);
			    $stmt2 = "UPDATE view_spec SET nature_inc = '$natureforsql', nature_numb = $naturechecked WHERE view_name = '$vue'";
			    echo $stmt2;
			    $d=$mysqli->query($stmt2);
		        break;
		    case 2 <= $naturechecked:
		    	if ($naturechecked != $naturenumb) {
		    		echo "seules certaines natures sont pr&eacute;sentes.";
					echo "<br><br>";
					echo "La requ&ecirc;te est : ";
			        $stmt = "ALTER VIEW $vue AS SELECT trad.id_trad, trad.trad, voc_eng.voc, champs_lex.champs, nature.nat FROM 
			        appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n, nature WHERE a_pr_n.id_n = nature.id_n AND 
			        a_pr_n.id_trad = trad.id_trad AND appartient.id_trad = trad.id_trad AND appartient.id_ch = champs_lex.id_ch 
			        AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND champs_lex.id_ch = $id_champs 
			        AND nature_voc.id_n_voc IN ($natureforsql)";
					echo $stmt.'<br><br>';
					$b=$mysqli->query($stmt);
					$stmt2 = "UPDATE view_spec SET nature_inc = '$natureforsql', nature_numb = $naturechecked WHERE view_name = '$vue'";
					echo $stmt2;
					$d=$mysqli->query($stmt2);
		    	} else {
		    		echo "aucune mention relative aux natures dans la requ&ecirc;te (toutes les natures sont pr&eacute;sentes).";
					echo "<br><br>";
					echo "La requ&ecirc;te est : ";
			        $stmt = "ALTER VIEW $vue AS SELECT trad.id_trad, trad.trad, voc_eng.voc, champs_lex.champs, nature.nat FROM 
			        appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n, nature WHERE a_pr_n.id_n = nature.id_n AND 
			        a_pr_n.id_trad = trad.id_trad AND appartient.id_trad = trad.id_trad AND appartient.id_ch = champs_lex.id_ch 
			        AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND champs_lex.id_ch = $id_champs ";
			        echo $stmt.'<br><br>';
			        $c=$mysqli->query($stmt);
					$stmt2 = "UPDATE view_spec SET nature_inc = '', nature_numb = $naturechecked WHERE view_name = '$vue'";
					echo $stmt2;
					$d=$mysqli->query($stmt2);
		    	}
		    	break;
		}
		echo "<br><br>";
		echo "La vue a &eacute;t&eacute; modifi&eacute;e (<a href=\"../liste_brouillon.php?champs_lex=$vue\">voir</a>)";
	}