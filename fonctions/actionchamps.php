<?php
	include_once('includes/connexion.php');
	$id_voc = $_POST["idv"];
	$id_trad = $_POST["idt"];
	$voc = $_POST["vocabulaire"];
	$trad = $_POST["traduction"];
	$id_app = $_POST["id_app"];
	$id_ch = $_POST["idc"];
	$id_a_pr_n_voc = $_POST["id_a_pr_n_voc"];
	$id_a_pr_n_trad = $_POST["id_a_pr_n_trad"];
	$id_n_voc = $_POST["idn_voc"];
	$id_n_trad = $_POST["idn_trad"];
	$champs = $_POST["champs"];
	$nat_voc = $_POST["nat_voc"];
	$nat_trad = $_POST["nat_trad"];


	$stmt1 = " UPDATE `trad` SET `trad` = '$trad' WHERE `trad`.`id_trad` = $id_trad ";
	//echo $stmt1;
	//echo '<br>';
	$a=$mysqli->query($stmt1);

	$stmt2 = " UPDATE `voc_eng` SET `voc` = '$voc' WHERE `voc_eng`.`id_voc` = $id_voc ";
	//echo $stmt2;
	//echo '<br>';
	$b=$mysqli->query($stmt2);


	$stmt3 = " UPDATE appartient SET id_ch = $id_ch WHERE id_app = $id_app ";
	//echo $stmt3;
	//echo '<br>';
	$c=$mysqli->query($stmt3);

	$stmt4 = " UPDATE a_pr_n_voc SET id_n_voc = $id_n_voc WHERE id_a_pr_n_voc = $id_a_pr_n_voc ";
	//echo $stmt4;
	$d=$mysqli->query($stmt4);

	$stmt5 = " UPDATE a_pr_n_trad SET id_n_trad = $id_n_trad WHERE id_a_pr_n_trad = $id_a_pr_n_trad ";
	//echo $stmt4;
	$e=$mysqli->query($stmt5);

	$sql1 = " SELECT view_name FROM `view_spec` WHERE id_ch = '$id_ch'  ";
	if ($result = $mysqli->query($sql1)) {
		while ($row = $result->fetch_assoc()) {
			$view = $row['view_name'];
			header("Location:../liste_brouillon.php?champs_lex=$view");
		}
	}