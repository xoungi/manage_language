<?php
	include_once('includes/connexion.php');
	$id_voc = $_POST["idv"];
	$id_trad = $_POST["idt"];
	$voc = $_POST["vocabulaire"];
	$trad = $_POST["traduction"];
	$id_app = $_POST["id_app"];
	$id_ch = $_POST["idc"];
	$id_a_pr_n = $_POST["id_a_pr_n"];
	$id_n = $_POST["idn"];
	$nat = $_POST["nat"];


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

	$stmt4 = " UPDATE a_pr_n SET id_n = $id_n WHERE id_a_pr_n = $id_a_pr_n ";
	//echo $stmt4;
	$d=$mysqli->query($stmt4);

	header("Location:../liste_brouillon.php?nature=kind_$nat");