<?php
	include_once('includes/connexion.php');
	$vue = $_POST["vue"];
	$id_champs = $_POST["idchamps"];
	$champs = $_POST["champs"];
	echo 'Le nom de la vue est : ';
	echo $vue;
	echo "<br><br>";
	echo 'Le champs lexical de la vue est : ';
	echo $champs;
	echo " (".$id_champs.")";
	echo "<br><br>";
	if(isset($_POST['Choix'])) {
		// Grosse réussite sur ce fichier : seule remarque le sql n'est pas en guillemet mais en accent grave
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
		echo "Pas d'envoi possible si aucune nature n'est s&eacute;lectionn&eacute (<a href=\"../ajoutvue.php\">retour arri&egrave;re</a>)";
	}
	$query= "SELECT id_view FROM view_spec WHERE id_view=(SELECT max(id_view) FROM view_spec)";
		if ($result = $mysqli->query($query)) {
			while ($row = $result->fetch_assoc()) {
			$id_view = $row["id_view"] + '1';
		}}
	if(isset($_POST['Choix'])) {
		switch ($naturechecked) {
		    case 1:
	        echo "une seule nature dans la requ&ecirc;te.";
			echo "<br><br>";
			echo "La requ&ecirc;te est : ";
	        $stmt = 

	        "CREATE VIEW $vue AS SELECT trad.id_trad, trad.trad, voc_eng.voc, champs_lex.champs, nature.nat FROM 
	        appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n, nature WHERE a_pr_n.id_n = nature.id_n AND 
	        a_pr_n.id_trad = trad.id_trad AND appartient.id_trad = trad.id_trad AND appartient.id_ch = champs_lex.id_ch 
	        AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND champs_lex.id_ch = $id_champs 
	        AND nature_voc.id_n_voc = $id_n";


		    echo $stmt."<br><br>";
		    $a=$mysqli->query($stmt);
		    //$stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `id_cat`, `nature_inc`, `nature_numb`, `view_spe`) VALUES ('$id_view', '$vue', '13', '$natureforsql', '$naturechecked', '3')";
		    $stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `nature_inc`, `nature_numb`, `view_spe`, `id_cat`, `id_sub`, `id_ch`) VALUES ('$id_view', '$vue', '$natureforsql', '$naturechecked', '3', '13', '0', '$id_champs')";
        echo $stmt2;
		    $d=$mysqli->query($stmt2);
	        break;
		    case 2 <= $naturechecked:
	    	if ($naturechecked != $naturenumb) {
	    		echo "seules certaines natures sont pr&eacute;sentes.";
				echo "<br><br>";
				echo "La requ&ecirc;te est : ";
		        $stmt = 

		        "CREATE VIEW $vue AS SELECT trad.id_trad, trad.trad, voc_eng.voc, champs_lex.champs, nature.nat FROM 
		        appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n, nature WHERE a_pr_n.id_n = nature.id_n AND 
		        a_pr_n.id_trad = trad.id_trad AND appartient.id_trad = trad.id_trad AND appartient.id_ch = champs_lex.id_ch 
		        AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND champs_lex.id_ch = $id_champs 
		        AND nature_voc.id_n_voc IN ($natureforsql)";


				echo $stmt."<br><br>";
				$b=$mysqli->query($stmt);
				//$stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `id_cat`, `nature_inc`, `nature_numb`, `view_spe`) VALUES ('$id_view', '$vue', '13', '$natureforsql', '$naturechecked', '3')";
        $stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `nature_inc`, `nature_numb`, `view_spe`, `id_cat`, `id_sub`, `id_ch`) VALUES ('$id_view', '$vue', '$natureforsql', '$naturechecked', '3', '13', '0', '$id_champs')";
		    	echo $stmt2;
		    	$d=$mysqli->query($stmt2);
	    	} else {
	    		echo "aucune mention relative aux natures dans la requ&ecirc;te (toutes les natures sont pr&eacute;sentes).";                          
				echo "<br><br>";
				echo "La requ&ecirc;te est : ";
		        $stmt = "CREATE VIEW $vue AS SELECT trad.id_trad, trad.trad, voc_eng.voc, champs_lex.champs, nature_trad.nature_trad, nature_voc.nature_voc FROM 
				appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n_trad, a_pr_n_voc, nature_trad, nature_voc WHERE 
				a_pr_n_trad.id_n_trad = nature_trad.id_n_trad AND a_pr_n_trad.id_trad = trad.id_trad AND a_pr_n_voc.id_n_voc = nature_voc.id_n_voc AND 
				a_pr_n_voc.id_voc = voc_eng.id_voc AND appartient.id_se_trad = se_trad.id_se_trad AND appartient.id_ch = champs_lex.id_ch AND 
				se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND champs_lex.id_ch = $id_champs";
		        
		        echo $stmt."<br><br>";
		        $c=$mysqli->query($stmt);
				// $stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `id_cat`, `nature_inc`, `nature_numb`, `view_spe`) VALUES ('$id_view', '$vue', '13', '', '$naturechecked', '3')";
        //$stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `nature_inc`, `nature_numb`, `view_spe`, `id_cat`, `id_sub`, `id_ch`) VALUES ('$id_view', '$vue', '', '$naturechecked', '3', '13', '$id_champs')";
        $stmt2 = "INSERT INTO `view_spec` (`id_view`, `view_name`, `nature_inc`, `nature_numb`, `view_spe`, `id_cat`, `id_sub`, `id_ch`) VALUES ('$id_view', '$vue', '', '$naturechecked', '3', '13', '0', '$id_champs')";
		    	echo $stmt2;
		    	$d=$mysqli->query($stmt2);
	    	}
	    	break;
		}
		echo "<br><br>";
		echo "La vue a &eacute;t&eacute; cr&eacute;e (<a href=\"../liste_brouillon.php?champs_lex=$vue\">voir</a>)";
	}