<?php
	include_once('includes/connexion.php');
	$id_ch = $_POST["idc"];
	$champs = $_POST["champs"];

	$id_n = $_POST["idn"];

	$vocabulaires = array();
	$traductions = array();
	$vocabulaires = $_POST['vocabulaire'];
	$traductions = $_POST['traduction'];

	$id_vocs = array();
	$id_trads = array();
	$id_vocs = $_POST["id_voc"];
	$id_trads = $_POST["id_trad"];
	
	for($counter = 0; $counter < sizeof($vocabulaires); $counter++){

		$stmt = " INSERT INTO voc_eng (id_voc, voc) VALUES ($id_vocs[$counter], '$vocabulaires[$counter]'); ";
		//echo $stmt; //De la possibilité de mettre le $stmt et le $a en array qui aboutit sur le même résultat.
		$a=$mysqli->query($stmt);

		$stmt2 = " INSERT INTO trad (id_trad, trad) VALUES ($id_trads[$counter],  '$traductions[$counter]'); ";
		$b=$mysqli->query($stmt2);

		$query1= "SELECT id_se_trad FROM se_trad WHERE id_se_trad=(SELECT max(id_se_trad) FROM se_trad)";
		if ($result1 = $mysqli->query($query1)) {
			while ($row = $result1->fetch_assoc()) {
				//$id_se_trad = array(); // paramètre counter inutile dans la variable id_se_trad obligatoire en revanche pour les autres.
				$id_se_trad = $row["id_se_trad"] + '1' + $counter;
		}}

		$stmt3 = " INSERT INTO se_trad (id_se_trad, id_voc, id_trad) VALUES ($id_se_trad, $id_vocs[$counter], $id_trads[$counter]); ";
		//echo $stmt3;
		$c=$mysqli->query($stmt3);

		$query2= "SELECT id_app FROM appartient WHERE id_app=(SELECT max(id_app) FROM appartient)";
		if ($result2 = $mysqli->query($query2)) {
			while ($row = $result2->fetch_assoc()) {
				$id_app = $row["id_app"] + '1' + $counter;
		}}

		$stmt4 = " INSERT INTO appartient (id_app, id_se_trad, id_ch) VALUES ($id_app, $id_se_trad, $id_ch); ";
		echo $stmt4;
		$d=$mysqli->query($stmt4);

		$query3= "SELECT id_a_pr_n_voc FROM a_pr_n_voc WHERE id_a_pr_n_voc =(SELECT max(id_a_pr_n_voc) FROM a_pr_n_voc)";
		if ($result3 = $mysqli->query($query3)) {
			while ($row = $result3->fetch_assoc()) {
				$id_a_pr_n_voc = $row["id_a_pr_n_voc"] + '1' + $counter;
		}}

		$stmt5 = " INSERT INTO a_pr_n_voc (id_a_pr_n_voc, id_voc, id_n_voc) VALUES ($id_a_pr_n_voc, $id_vocs[$counter], $id_n) ";
		//echo $stmt5;
		$e=$mysqli->query($stmt5);
    
    $query4= "SELECT id_a_pr_n_trad FROM a_pr_n_trad WHERE id_a_pr_n_trad =(SELECT max(id_a_pr_n_trad) FROM a_pr_n_trad)";
		if ($result4 = $mysqli->query($query4)) {
			while ($row = $result4->fetch_assoc()) {
				$id_a_pr_n_trad = $row["id_a_pr_n_trad"] + '1' + $counter;
		}}
    
		$stmt6 = " INSERT INTO a_pr_n_trad (id_a_pr_n_trad, id_trad, id_n_trad) VALUES ($id_a_pr_n_trad, $id_trads[$counter], $id_n) ";
		//echo $stmt5;
		$f=$mysqli->query($stmt6);

	}

	$sql1 = " SELECT view_name FROM `view_spec` WHERE id_ch = '$id_ch'  ";
  echo "<br>";
  echo $sql1;
	if ($result = $mysqli->query($sql1)) {
		while ($row = $result->fetch_assoc()) {
			$view = $row['view_name'];
			header("Location:../liste_brouillon.php?champs_lex=$view");
		}
	}