<?php
	include_once('includes/connexion.php');
	$cat_name = $_POST['cat'];
	$sql_id = "SELECT id_cat FROM view_cat WHERE cat_name = '$cat_name'";
	if ($result_cat = $mysqli->query($sql_id)) {
		while ($row = $result_cat->fetch_assoc()) {
			foreach ($result_cat as $result_cat2){
				$id_cat = $result_cat2['id_cat'];
			}
		}
	} 

	$sql_catviews = "UPDATE view_spec SET id_cat = 13 WHERE id_cat = $id_cat";
	//echo $sql_catviews;
	$a=$mysqli->query($sql_catviews);
	//echo '<br><br>';
	$stmt_delete = "DROP VIEW $cat_name";
	$b=$mysqli->query($stmt_delete);
	//echo $stmt_delete;
	//echo '<br><br>';
	$stmt_delete2 = "DELETE FROM `view_cat` WHERE `view_cat`.`id_cat` = $id_cat ";
	$c=$mysqli->query($stmt_delete2);
	//echo $stmt_delete2;
	//echo '<br><br>';

	header("Location:../liste_brouillon.php");