<?php
	include_once('includes/connexion.php');
	$id_champs2 = $_POST["idchamps2"];
	$champs2 = $_POST["champs2"];

	$stmt = " INSERT INTO champs_lex (id_ch, champs) VALUES ($id_champs2,  '$champs2') ";
	$a=$mysqli->query($stmt);


header("Location:../liste_brouillon.php");