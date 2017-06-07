<?php
	include_once('includes/connexion.php');
	$id_ch = $_POST["idchamps"];
	$champs = $_POST["champs"];

	$query = "DELETE FROM `champs_lex` WHERE `champs_lex`.`id_ch` = $id_ch";
	$a=$mysqli->query($query);


header("Location:../liste_brouillon.php");