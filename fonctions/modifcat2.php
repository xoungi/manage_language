<?php 
	include_once('includes/connexion.php');
	$cat = $_POST['cat2'];
	$view_name = $_POST['view_name'];
	$sql_id = "SELECT id_cat FROM view_cat WHERE cat_name = '$cat'";
	if ($result_cat = $mysqli->query($sql_id)) {
		while ($row = $result_cat->fetch_assoc()) {
			foreach ($result_cat as $result_cat2){
				$id_cat = $result_cat2['id_cat'];
			}
		}
	} 

	if(isset($_POST['view_name2'])) {

		ob_start();
		foreach ($view_name as $view) {
			$views = $view.' UNION SELECT * FROM ';
			echo $views;
		}
		$output = ob_get_clean();
		$viewsforsql = rtrim($output, ' UNION SELECT * FROM ');

		$view_name2 = array();
		$view_name2 = $_POST['view_name2'];
		for($counter = 0; $counter < sizeof($view_name2); $counter++){
		    $stmt2 = "UPDATE view_spec SET id_cat = $id_cat WHERE view_name = '$view_name2[$counter]'";
		    $a=$mysqli->query($stmt2);
		    echo $stmt2.'<br>';
		}

		ob_start();
		foreach ($view_name2 as $view2) {
			$views2 = $view2.' UNION SELECT * FROM ';
			echo $views2;
		}
		$output2 = ob_get_clean();
		$viewsforsql2 = rtrim($output2, ' UNION SELECT * FROM ');

		$stmt_delete = "DROP VIEW $cat";
		$i=$mysqli->query($stmt_delete);
		echo $stmt_delete."<br><br>";

// PROBLEME ICI

	 	$stmt = "CREATE VIEW $cat AS SELECT * FROM $viewsforsql UNION SELECT * FROM $viewsforsql2";
	    echo $stmt."<br><br>";
	    $j=$mysqli->query($stmt);

// ICI RAJOUTER L'EDITION DES VIEW_SPEC + IMPORTER L'ID DE LA CATEGORIE



	} else {
		ob_start();
		foreach ($view_name as $view) {
			$views = $view.' UNION SELECT * FROM ';
			echo $views;
		}
		$output = ob_get_clean();
		$viewsforsql = rtrim($output, ' UNION SELECT * FROM ');
		$stmt_delete = "DROP VIEW $cat";
		echo $stmt_delete."<br><br>";
		$k=$mysqli->query($stmt_delete);
	 	$stmt = "CREATE VIEW $cat AS SELECT * FROM $viewsforsql";
	    echo $stmt."<br><br>";
	    $l=$mysqli->query($stmt);


		// $view_name = array();
		// $view_name = $_POST['view_name'];
		// for($counter = 0; $counter < $numb_view_3; $counter++){
		//     $stmt2 = "UPDATE view_spec SET id_cat = 13 WHERE view_name = '$view_name[$counter]'";
		//     $a=$mysqli->query($stmt2);
		//     echo $stmt2.'<br>';
		// }


// ICI RAJOUTER L'EDITION DES VIEW_SPEC

	}
	echo "<a href=\"../liste_brouillon.php\">Retour a la page d'accueil</a>";