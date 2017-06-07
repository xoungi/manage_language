<?php
	include_once('includes/connexion.php');

	$cat = $_POST['cat'];
	echo 'Le nom de la ';
	if(isset($_POST['Choix2'])) { echo "sous-"; } else { echo ''; }
	echo 'categorie est : ';
	echo $cat;
	echo "<br><br>";
	if(isset($_POST['Choix'])) { // CATEGORIE
		$viewchecked = sizeof($_POST['Choix']);
		// essayer de le faire deux fois : 1- pour montrer -> à faire 2- pour les requetes -> fait
		ob_start();
		foreach ($_POST['Choix'] as $view) {
			$views = $view.' UNION SELECT * FROM ';
			echo $views;
		}
		$output = ob_get_clean();
		$viewsforsql = rtrim($output, ' UNION SELECT * FROM ');

		$query= "SELECT id_cat FROM view_cat WHERE id_cat=(SELECT max(id_cat) FROM view_cat)";
			if ($result = $mysqli->query($query)) {
				while ($row = $result->fetch_assoc()) {
				$id_cat = $row["id_cat"] + '1';
			}}

	} else if (isset($_POST['Choix2'])) { // SOUS-CATEGORIE
		$viewchecked = sizeof($_POST['Choix2']);
		ob_start();
		foreach ($_POST['Choix2'] as $view) {
			$views = $view.' UNION SELECT * FROM ';
			echo $views;
		}
		$output = ob_get_clean();
		$viewsforsql = rtrim($output, ' UNION SELECT * FROM ');

		$query= "SELECT id_sub FROM view_sub WHERE id_sub=(SELECT max(id_sub) FROM view_sub)";
			if ($result = $mysqli->query($query)) {
				while ($row = $result->fetch_assoc()) {
				$id_sub = $row["id_sub"] + '1';
			}}

	} else {
		echo "Pas d'envoi possible si aucune vue n'est s&eacute;lectionn&eacute;e (<a href=\"../ajoutcat.php\">retour arri&egrave;re</a>)";
	}



	if(isset($_POST['Choix'])) { 
	// SI C'EST LE CAS, REFAIRE LE SWITCH EN AJOUTANT LA VIEW_CAT EN VIEW_SPEC (view_spec = 2)
	// EN EDITANT LA VIEW SPEC DES VUES CHOISIES : (view_spe = 1)
	// PROBLEME : id_cat ? LES PASSER A 13 : MAUVAIS
	// SOLUTION : FAIRE UNE TABLE view_sub : id_cat : METTRE A 0 : EDITER LE id_sub DE BASE SUR 0
	// PLUS TARD, DANS LA RECEPTION DES CATEGORIES, SI UNE VUE A POUR id_cat = 0, IGNORER SA PRISE EN COMPTE ET PASSER DIRECTEMENT 
	// A LA CATEGORIE.

		//$query2= "INSERT INTO view_cat (id_cat, cat_name) VALUES ('$id_cat', '".substr($cat, 2)."')";
		$query2= "INSERT INTO view_cat (id_cat, cat_name) VALUES ('$id_cat', '$cat')";
		$b=$mysqli->query($query2);

		switch ($viewchecked) {
		    case 1:
	        echo "une seule vue dans la requ&ecirc;te.";
			echo "<br><br>";
			echo "La requ&ecirc;te est : ";
	        $stmt = "CREATE VIEW $cat AS SELECT * FROM $viewsforsql";
		    echo $stmt."<br><br>";
		    $a=$mysqli->query($stmt);

		    $stmt2 = "UPDATE view_spec SET id_cat = $id_cat WHERE view_name = '$view'";

		    echo $stmt2;
		    $d=$mysqli->query($stmt2);
	        break;

		    case 2 <= $viewchecked:
	        echo "plusieurs vues dans la requ&ecirc;te.";
			echo "<br><br>";
			echo "La requ&ecirc;te est : ";
	        $stmt = "CREATE VIEW $cat AS SELECT * FROM $viewsforsql";
		    echo $stmt."<br><br>";
		    $a=$mysqli->query($stmt);

		    foreach ($_POST['Choix'] as $view) {
			    $stmt2 = "UPDATE view_spec SET id_cat = $id_cat WHERE view_name = '$view'";
			    $d=$mysqli->query($stmt2);
			    echo $stmt2.'<br>';
			}
	    
	    	break;
		}
		echo "<br><br>";
		echo "La vue a &eacute;t&eacute; cr&eacute;e (<a href=\"../liste_allemand2.php\">voir</a>)";


	} else {


		$query2= "INSERT INTO view_sub (id_sub, sub_name) VALUES ('$id_sub', '$cat')";
		$b=$mysqli->query($query2);

		switch ($viewchecked) {
		    case 1:
	        echo "une seule vue dans la requ&ecirc;te.";
			echo "<br><br>";
			echo "La requ&ecirc;te est : ";
	        $stmt = "CREATE VIEW $cat AS SELECT * FROM $viewsforsql";
		    echo $stmt."<br><br>";
		    $a=$mysqli->query($stmt);

		    $stmt2 = "UPDATE view_spec SET id_cat = 0, id_sub = $id_sub, view_spe = 1 WHERE view_name = '$view'";

		    echo $stmt2;
		    $d=$mysqli->query($stmt2);
	        break;

		    case 2 <= $viewchecked:
	        echo "plusieurs vues dans la requ&ecirc;te.";
			echo "<br><br>";
			echo "La requ&ecirc;te est : ";
	        $stmt = "CREATE VIEW $cat AS SELECT * FROM $viewsforsql";
		    echo $stmt."<br><br>";
		    $a=$mysqli->query($stmt);

		    foreach ($_POST['Choix2'] as $view) {
			    $stmt2 = "UPDATE view_spec SET id_cat = 0, id_sub = $id_sub, view_spe = 1 WHERE view_name = '$view'";
			    $d=$mysqli->query($stmt2);
			    echo $stmt2.'<br>';
			}
	    
	    	break;
		}
		echo "<br><br>";
		echo "La vue a &eacute;t&eacute; cr&eacute;e (<a href=\"../liste_allemand2.php\">voir</a>)";

	}