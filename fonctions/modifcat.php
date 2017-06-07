<?php // REPRENDRE LIGNE 166 // POUR CHAQUE CAS AJOUTER LE CAS DES SOUS-CATEGORIES - ENLEVABLE SI VRAIMENT IMPOSSIBLE
// ABANDONNER LE 21 FEV. FONCTIONNE SEULEMENT SUR LES VUES. A VOIR EN DEVELOPPER OBJET


/* PRESENTATION DE LA CATEGORIE : DEBUT */ 

	include_once('includes/connexion.php');
	$cat = $_POST['cat'];
	$numb_view_1 = $_POST['numb_view_1'];

	if(isset($_POST['numb_sub_1'])) { $numb_sub_1 = $_POST['numb_sub_1']; }

	echo 'L\'id de la cat&#233;gorie est : ';
	echo $cat.'<br><br>';

	echo 'Son nom est : ';
	$cat_name_sql = "SELECT cat_name FROM view_cat WHERE id_cat = $cat";
	if ($result_cat = $mysqli->query($cat_name_sql)) {
		while ($row = $result_cat->fetch_assoc()) {
			foreach ($result_cat as $result_cat2){
				$cat_name = $result_cat2['cat_name'];
			}
		}
	} 
	echo $cat_name.'<br>';
	echo "<br><br>";
	echo "Cette cat&#233;gorie comprenait au depart ".$numb_view_1." vue(s)";
	if(isset($_POST['Choix3'])) { echo " et ".$numb_sub_1." sous-cat&#233;gorie(s)."; } else { echo '.'; }
	echo "<br><br>";

/* PRESENTATION DE LA CATEGORIE : FIN */


/* SI IL Y A AU MOINS UNE VUE DE BASE INCLUSE : DEBUT */

	if(isset($_POST['Choix'])) {

		$viewchecked = sizeof($_POST['Choix']);

		if ($viewchecked < $numb_view_1) { // PREMIER CAS : NOMBRE DE VUES INFERIEURES AU NOMBRE PAR DEFAUT.
			echo "Des vues ont &#233;t&#233; enlev&#233;es et seront d&#233;sormais sans cat&#233;gorie, celles-ci sont : ";
			echo "<br><br>";
			$choix = array();
			$choix = $_POST['Choix'];
			$viewchecked = sizeof($_POST['Choix']);

			if ($viewchecked == 1) { // PREMIERE CONDITION : 1 SEULE VUE
				for($counter = 0; $counter < $viewchecked; $counter++){		
					$sql2 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat' AND view_name != '$choix[$counter]'";
					//echo 'cas 1'.'<br>';
					if ($result2 = $mysqli->query($sql2)) {
						while ($row = $result2->fetch_assoc()) {
							foreach ($result2 as $results2){
								$view_name = $results2['view_name'];
							    $stmt2 = "UPDATE view_spec SET id_cat = 13 WHERE view_name = '$view_name'";
							    $a=$mysqli->query($stmt2);
							    echo $stmt2.'<br>';
							}
						}
					}
					echo "<br>";
				}
	        echo "Une seule vue pr&#233;sente de base dans la requ&ecirc;te.";
			echo "<br><br>";


/* SI EN PLUS IL Y A DE NOUVELLES VUES : DEBUT */ 

			if(isset($_POST['Choix2'])) { // SUITE POUR LE CHOIX 2

				if (sizeof($_POST['Choix2']) == 0) {
					echo "<br><br>";
					echo "cas 2";			
				} else {
					echo "<br>De nouvelles vues ont &#233;t&#233; incluses.";
					echo "<br><br>";
					$viewchecked = sizeof($_POST['Choix2']);
					echo "Les nouvelles vues sont au nombre de ";
					echo $viewchecked.".";
					echo "<br><br>";

					// CE CAS MARCHE FACILEMENT PUISQU'IL N'Y A QU'UNE SEULE VUE DANS LA REQUETE IL EST DECLARE AVANT LA MODIF DES AUTRES
					$sql3 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat'";
					if ($result3 = $mysqli->query($sql3)) {
						while ($row = $result3->fetch_assoc()) {
							foreach ($result3 as $results3){
								$view_name3 = $results3['view_name'];
							}
						}
					}

					$view_name2 = array();
					$view_name2 = $_POST['Choix2'];
					for($counter = 0; $counter < sizeof($view_name2); $counter++){
					    $stmt2 = "UPDATE view_spec SET id_cat = $cat WHERE view_name = '$view_name2[$counter]'";
					    $a=$mysqli->query($stmt2);
					    echo $stmt2.'<br>';
					} 

					ob_start();
					foreach ($_POST['Choix2'] as $view) {
						$views = $view.' UNION SELECT * FROM ';
						echo $views;
					}
					$output = ob_get_clean();
					$viewsforsql = rtrim($output, ' UNION SELECT * FROM ');
					echo "<br>Les requ&ecirc;tes sont : ";					
					$stmt_delete = "DROP VIEW $cat_name";
					$b=$mysqli->query($stmt_delete);
					echo "<br>".$stmt_delete."<br>";

			        $stmt = "CREATE VIEW $cat_name AS SELECT * FROM $view_name3 UNION SELECT * FROM $viewsforsql";
				    $c=$mysqli->query($stmt);
				    echo $stmt."<br><br>";
				    echo "<a href=\"../liste_brouillon.php\">Retour a la page d'accueil</a>";

				}

/* SI EN PLUS IL Y A DE NOUVELLES VUES : FIN */
// ATTENTION LE CAS CI-DESSOUS NE MARCHERA PAS SI IL Y A DEJA UNE OU DES CATEGORIES EXISTANTES !!!
			} 

/* SI EN PLUS IL Y A DE NOUVELLES SOUS-CATEGORIES : DEBUT */ 

			// if(isset($_POST['Choix4'])) { // SUITE POUR LE CHOIX 4

			// 	if (sizeof($_POST['Choix4']) == 0) {
			// 		echo "<br><br>";
			// 		echo "cas 3";			
			// 	} else {
			// 		echo "<br>De nouvelles sous-cat&#233;gories ont &#233;t&#233; incluses.";
			// 		echo "<br><br>";
			// 		$subchecked = sizeof($_POST['Choix4']);
			// 		echo "Les nouvelles sous-cat&#233;gories sont au nombre de ";
			// 		echo $subchecked.".";
			// 		echo "<br><br>";

			// 		// CE CAS MARCHE FACILEMENT PUISQU'IL N'Y A QU'UNE SEULE VUE DANS LA REQUETE IL EST DECLARE AVANT LA MODIF DES AUTRES
			// 		$sql5 = "SELECT sub_name FROM view_sub WHERE id_cat = '$cat'";
			// 		if ($result5 = $mysqli->query($sql5)) {
			// 			while ($row = $result5->fetch_assoc()) {
			// 				foreach ($result5 as $results5){
			// 					$sub_name1 = $results5['sub_name'];
			// 				}
			// 			}
			// 		}

			// 		$sub_name2 = array();
			// 		$sub_name2 = $_POST['Choix4'];
			// 		for($counter = 0; $counter < sizeof($sub_name2); $counter++){
			// 		    $stmt3 = "UPDATE view_sub SET id_cat = $cat WHERE sub_name = '$sub_name2[$counter]'";
			// 		    $i=$mysqli->query($stmt2);
			// 		    echo $stmt3.'<br>';
			// 		} 

			// 		ob_start();
			// 		foreach ($_POST['Choix4'] as $sub) {
			// 			$subs = $sub.' UNION SELECT * FROM ';
			// 			echo $subs;
			// 		}
			// 		$output = ob_get_clean();
			// 		$subsforsql = rtrim($output, ' UNION SELECT * FROM ');
			// 		echo "<br>Les requ&ecirc;tes sont : ";					
			// 		$stmt_delete = "DROP VIEW $cat_name";
			// 		$j=$mysqli->query($stmt_delete);
			// 		echo "<br>".$stmt_delete."<br>";

			// 		// A ECLAIRCIR : A FUSIONNER AVEC LA PRECEDENTE - $cat : id != $cat_name

			//         $stmt = "CREATE VIEW $cat_name AS SELECT * FROM $view_name3 UNION SELECT * FROM $viewsforsql";
			// 	    $c=$mysqli->query($stmt);
			// 	    echo $stmt."<br><br>";
			// 	    echo "<a href=\"../liste_brouillon.php\">Retour a la page d'accueil</a>";

			// 	}}

/* SI EN PLUS IL Y A DE NOUVELLES SOUS-CATEGORIES : FIN */ 


			else { // RIEN N'EST SELECTIONNE
				echo "Aucune nouvelle vue ajout&#233;e.<br><br>";
				echo "Les requ&ecirc;tes sont : ";
				$stmt_delete = "DROP VIEW $cat_name";
				$d=$mysqli->query($stmt_delete);
				echo "<br><br>".$stmt_delete."<br>";
		        $stmt = "CREATE VIEW $cat_name AS SELECT * FROM $view_name";
		        $e=$mysqli->query($stmt);
			    echo $stmt."<br><br>";
			    echo "<a href=\"../liste_brouillon.php\">Retour a la page d'accueil</a>";
			}

			} else if ($viewchecked != 0) { // DEUXIEME CONDITION : PLUSIEURS VUES

				for($counter = 0; $counter < $viewchecked; $counter++){	
					ob_start();
					foreach ($_POST['Choix'] as $view) {
						$views = $view.'\' AND view_name != \'';
						echo $views;
					}
					$output = ob_get_clean();
					$viewsforsql = rtrim($output, '\' AND view_name != \'');
				}
				$sql2 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat' AND view_name != '".$viewsforsql."'";
				//echo "<br>".$sql2."<br>";
				if ($result2 = $mysqli->query($sql2)) {
					while ($row = $result2->fetch_assoc()) {
						foreach ($result2 as $results2){
							$numb_view_2 = mysqli_num_rows($result2);
							$view_name = $results2['view_name'];
						    $stmt2 = "UPDATE view_spec SET id_cat = 13 WHERE view_name = '$view_name'";
						    $f=$mysqli->query($stmt2);
							echo $stmt2.'<br>';
						}
						echo "<br>";
						?> <!-- PRESENCE INITIALE DU FORMULAIRE TRAITEMENT EN modifcat2.php -->
							<form name="modifcat" action="modifcat2.php" method="POST">
							<fieldset>
						<?php
						echo "Les vues restantes sont au nombre de "; // $numb_view_1 -> NBRE DE VUES DE BASE
						$magic_number = $numb_view_1 - $numb_view_2; // $numb_view_2 -> NBRE DE VUES RESTANTES
						echo $magic_number." : <br>";
						if ($numb_view_2 == 1) { // TOURNE A VIDE POUR LE PREMIER CAS SI LA REQUETE N'EST PAS ACTIVEE. [[CODE]]
							$sql3 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat' AND view_name != '".$view_name."'";
						} else { // CECI NE MARCHE PAS : RESOLU
							$sql3 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat'";
						}
						if ($result3 = $mysqli->query($sql3)) {
							while ($row = $result3->fetch_assoc()) {
								foreach ($result3 as $results3){
									$view_name2 = $results3['view_name'];
									echo $view_name2;
									echo "<br>";
									echo '<input type="hidden" name="view_name[]" value="'.$view_name2.'"/>'; 
								}
								echo "<br>";
								echo "La cat&#233;gorie sera modifi&#233;e si vous validez ce formulaire.<br>";

								if(isset($_POST['Choix2'])) { // SUITE POUR LE CHOIX 2
									if (sizeof($_POST['Choix2']) == 0) {
										echo "<br><br>";
										echo "cas 2";			
									} else {
										echo "De plus, de nouvelles vues ont &#233;t&#233; incluses.";
										echo "<br><br>";

										$viewchecked = sizeof($_POST['Choix2']);
										echo "Les nouvelles vues sont au nombre de ";
										echo $viewchecked.".";
										echo "<br><br>";
										ob_start();
										foreach ($_POST['Choix2'] as $view) {
											$views = $view.'<br>';
											echo $views;
											echo '<input type="hidden" name="view_name2[]" value="'.$view.'"/>'; 
										}
										$output = ob_get_clean();
										$viewsforsql = rtrim($output, '<br>');
										echo $viewsforsql;
									}
								} 
							}
						} 
						?>  <br><br> <!-- PRESENCE INITIALE DU FORMULAIRE -->
							<label>Reecrivez le nom complet de la categorie ici : </label>
							<input type="text" name="cat2" required/>
							<button type="submit">Envoyer</button><br>
							</fieldset>
							</form>
						<?php
					}
				} echo "<br>";
			} 
		
		} else if ($viewchecked = $numb_view_1) { // DEUXIEME CAS : NOMBRE DE VUES EGAL : RIEN N'A CHANGE

			echo "Vous avez choisi de conserver toutes les vues pr&#233;sentes de base dans la cat&#233;gorie.<br>";
			if(isset($_POST['Choix2'])) {
				if (sizeof($_POST['Choix2']) == 0) {
					echo "<br><br>";
					echo "cas 2";			
				} else {
					echo "<br>De nouvelles vues ont &#233;t&#233; incluses.";
					echo "<br><br>";
					?> <!-- PRESENCE INITIALE DU FORMULAIRE 2 TRAITEMENT EN modifcat2.php -->
						<form name="modifcat" action="modifcat2.php" method="POST">
						<fieldset>
					<?php
					$viewchecked = sizeof($_POST['Choix2']);
					echo "Les nouvelles vues sont au nombre de ";
					echo $viewchecked.".";
					echo "<br><br>";
					ob_start();
					foreach ($_POST['Choix2'] as $view2) {
						echo '<input type="hidden" name="view_name2[]" value="'.$view2.'"/>'; 
						$views = $view2.'<br>';
						echo $views;
					}
					$output = ob_get_clean();
					$viewsforsql = rtrim($output, '<br>');
					echo $viewsforsql;

					$sql3 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat'";
					if ($result3 = $mysqli->query($sql3)) {
						while ($row = $result3->fetch_assoc()) {
							foreach ($result3 as $results3){
								$view_name = $results3['view_name'];
								echo '<input type="hidden" name="view_name[]" value="'.$view_name.'"/>'; 
							} 
						}
					}
					?>  <br><br> <!-- PRESENCE INITIALE DU FORMULAIRE 2 -->
						<label>Reecrivez le nom complet de la categorie ici : </label>
						<input type="text" name="cat2" required/>
						<button type="submit">Envoyer</button><br>
						</fieldset>
						</form>
					<?php					
				}
			} 

		} else { // RIEN N'EST SELECTIONNE
			echo "Aucune nouvelle vue ajout&#233;e.";
		}

/* SI IL Y A AU MOINS UNE VUE DE BASE INCLUSE : FIN */


	} else { // CE CAS EST VALABLE UNIQUEMENT SI LE CHOIX 1 EST SANS RETOUR 

		if(isset($_POST['Choix2'])) {
			if (sizeof($_POST['Choix2']) == 0) {
				echo "<br><br>";				
			} else {
				echo "Toutes les anciennes vues ont &#233;t&#233; d&#233;categoris&#233;es mais de nouvelles ont &#233;t&#233; incluses.";
				echo "<br><br>";

				// RENDRE LA DECATEGORISATION EFFECTIVE
				echo "Les anciennes vues sont : ";
				echo "<br><br>";
				$sql4 = "SELECT view_name FROM view_spec WHERE id_cat = '$cat'";
				//echo 'cas 1'.'<br>';
				if ($result4 = $mysqli->query($sql4)) {
					while ($row = $result4->fetch_assoc()) {
						foreach ($result4 as $results4){
							$view_name = $results4['view_name'];
						    $stmt2 = "UPDATE view_spec SET id_cat = 13 WHERE view_name = '$view_name'";
						    $m=$mysqli->query($stmt2);
						    echo $stmt2.'<br>';
						}
					}
				}

				echo "Les nouvelles vues sont : "; // FAIRE COMME LE FORMULAIRE QUI N'EST PAS INDISPENSABLE
				echo "<br>";
				$viewchecked = sizeof($_POST['Choix2']);

				$view_name2 = array();
				$view_name2 = $_POST['Choix2'];
				for($counter = 0; $counter < $viewchecked; $counter++){
				    $stmt2 = "UPDATE view_spec SET id_cat = $cat WHERE view_name = '$view_name2[$counter]'";
				    $n=$mysqli->query($stmt2);
				    echo $stmt2.'<br>';
				}

				ob_start();
				foreach ($_POST['Choix2'] as $view) {
					$views = $view.' UNION SELECT * FROM ';
					echo $views;
				}
				$output = ob_get_clean();
				$viewsforsql = rtrim($output, ' UNION SELECT * FROM ');

				echo "Les requ&ecirc;tes sont : ";
				$stmt_delete = "DROP VIEW $cat_name";
				$g=$mysqli->query($stmt_delete);
				echo "<br><br>".$stmt_delete."<br>";
		        $stmt = "CREATE VIEW $cat_name AS SELECT * FROM $viewsforsql";
			    echo $stmt."<br><br>";
			    $h=$mysqli->query($stmt);
			    echo "<a href=\"../liste_brouillon.php\">Retour a la page d'accueil</a>";
			}

		} else { // RIEN N'EST SELECTIONNE
			echo "Il est impossible de faire une cat&#233;gorie sans vue. Utiliser la fonction <a href=\"../supprcat.php\">supprimer</a>.";
		}
	}