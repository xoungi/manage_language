<?php

// FICHIER EN TRAVAUX - 6/2 - LAISSE DE COTE SUITE AU PASSAGE A LA VERSION MVC - Supprimer le view_spec

// Problématique : Impose la création de catégorie car : si l'on se fit à un ordre logique numérique la suppression entrainera un trou.

// DELETE FROM `view_spec` WHERE view_name = '$view_name'

	include_once('includes/connexion.php');
	$vue = $_POST["vue"];

	$query = "DROP VIEW $vue";
	$a=$mysqli->query($query); 

	$query2 = "DELETE FROM view_spec WHERE view_name = '$vue'";
	echo $query2;
	$b=$mysqli->query($query2); 


	header("Location:../liste_brouillon.php");