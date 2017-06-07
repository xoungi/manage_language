<?php
	include_once('includes/connexion.php');
	$id_voc = $_POST["idv"];
	$id_trad = $_POST["idt"];
	$id_ch = $_POST["id_ch"];
	$id_app = $_POST["id_app"];
/*
	$voc = $_POST["vocabulaire"];
	$trad = $_POST["traduction"];
	$id_ch = $_POST["idch"];
	$champs = $_POST["champs"];
	$id_n = $_POST["idn"];
	$id_se_trad = $_POST["idst"];
	$id_app = $_POST["idapp"];
	$id_a_pr_n = $_POST["idaprn"];
	echo '
	<p>"'.$id_voc.'"</p>
	<p>"'.$voc.'"</p>
	<p>"'.$id_trad.'"</p>
	<p>"'.$trad.'"</p>
	<p>"'.$id_ch.'"</p>
	<p>"'.$champs.'"</p>
	<p>"'.$id_n.'"</p>
	<p>"'.$id_se_trad.'"</p>
	<p>"'.$id_app.'"</p>
	<p>"'.$id_a_pr_n.'"</p>
	';
*/
	$query1 = "DELETE FROM `voc_eng` WHERE `voc_eng`.`id_voc` = $id_voc";
	$a=$mysqli->query($query1);
	$query2 = "DELETE FROM `trad` WHERE `trad`.`id_trad` = $id_trad";
	$b=$mysqli->query($query2);
	$query3 = "DELETE FROM `setrad` WHERE `trad` = $id_trad";
	$c=$mysqli->query($query3);
	$query4 = "DELETE FROM `appartient` WHERE `id_app` = $id_app";
	$d=$mysqli->query($query4);
	$query5 = "DELETE FROM `a_pr_n_trad` WHERE `trad` = $id_trad";
	$e=$mysqli->query($query5);
	$query6 = "DELETE FROM `a_pr_n_voc` WHERE `voc` = $id_voc";
	$f=$mysqli->query($query6);


	$sql1 = " SELECT view_name FROM `view_spec` WHERE id_ch = '$id_ch'  ";
	if ($result = $mysqli->query($sql1)) {
		while ($row = $result->fetch_assoc()) {
			$view = $row['view_name'];
			header("Location:../liste_brouillon.php?champs_lex=$view");
		}
	}