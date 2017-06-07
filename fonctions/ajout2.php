<?php
	include_once('includes/connexion.php');

	$id_voc = $_POST["idv"];
	if(isset($_POST["idv2"])) { $id_voc2 = $_POST["idv2"]; }
	if(isset($_POST["idv3"])) { $id_voc3 = $_POST["idv3"]; }
	if(isset($_POST["idv4"])) { $id_voc4 = $_POST["idv4"]; }

	$voc = $_POST["vocabulaire"];
	if(isset($_POST["vocabulaire2"])) { $voc2 = $_POST["vocabulaire2"]; }
	if(isset($_POST["vocabulaire3"])) { $voc3 = $_POST["vocabulaire3"]; }
	if(isset($_POST["vocabulaire4"])) { $voc4 = $_POST["vocabulaire4"]; }

	$id_trad = $_POST["idt"];
	if(isset($_POST["idt2"])) { $id_trad2 = $_POST["idt2"]; }
	if(isset($_POST["idt3"])) { $id_trad3 = $_POST["idt3"]; }
	if(isset($_POST["idt4"])) { $id_trad4 = $_POST["idt4"]; }

	$trad = $_POST["traduction"];
	if(isset($_POST["traduction2"])) { $trad2 = $_POST["traduction2"]; }
	if(isset($_POST["traduction3"])) { $trad3 = $_POST["traduction3"]; }
	if(isset($_POST["traduction4"])) { $trad4 = $_POST["traduction4"]; }

	$id_se_trad = $_POST["idst"];
	if(isset($_POST["idst2"])) { $id_se_trad2 = $_POST["idst2"]; }
	if(isset($_POST["idst3"])) { $id_se_trad3 = $_POST["idst3"]; }
	if(isset($_POST["idst4"])) { $id_se_trad4 = $_POST["idst4"]; }

	$id_ch = $_POST["idc"];
	if(isset($_POST["idc2"])) { $id_ch2 = $_POST["idc2"]; }
	if(isset($_POST["idc3"])) { $id_ch3 = $_POST["idc3"]; }
	if(isset($_POST["idc4"])) { $id_ch4 = $_POST["idc4"]; }
	//$champs = $_POST["champs"];

	$id_app = $_POST["idapp"];
	if(isset($_POST["idapp2"])) { $id_app2 = $_POST["idapp2"]; }
	if(isset($_POST["idapp3"])) { $id_app3 = $_POST["idapp3"]; }
	if(isset($_POST["idapp4"])) { $id_app4 = $_POST["idapp4"]; }

	$id_n_voc = $_POST["idn_voc"];
	if(isset($_POST["idn_voc2"])) { $id_n_voc2 = $_POST["idn_voc2"]; }
	if(isset($_POST["idn_voc3"])) { $id_n_voc3 = $_POST["idn_voc3"]; }
	if(isset($_POST["idn_voc4"])) { $id_n_voc4 = $_POST["idn_voc4"]; }

	$id_n_trad = $_POST["idn_trad"];
	if(isset($_POST["idn_trad2"])) { $id_n_trad2 = $_POST["idn_trad2"]; }
	if(isset($_POST["idn_trad3"])) { $id_n_trad3 = $_POST["idn_trad3"]; }
	if(isset($_POST["idn_trad4"])) { $id_n_trad4 = $_POST["idn_trad4"]; }

	$id_a_pr_n_voc = $_POST["aprn_voc"];
	if(isset($_POST["aprn_voc2"])) { $id_a_pr_n_voc2 = $_POST["aprn_trad2"]; }
	if(isset($_POST["aprn_voc3"])) { $id_a_pr_n_voc3 = $_POST["aprn_trad3"]; }
	if(isset($_POST["aprn_voc4"])) { $id_a_pr_n_voc4 = $_POST["aprn_trad4"]; }

	$id_a_pr_n_trad = $_POST["aprn_trad"];	
	if(isset($_POST["aprn_trad2"])) { $id_a_pr_n_trad2 = $_POST["aprn_trad2"]; }
	if(isset($_POST["aprn_trad3"])) { $id_a_pr_n_trad3 = $_POST["aprn_trad3"]; }
	if(isset($_POST["aprn_trad4"])) { $id_a_pr_n_trad4 = $_POST["aprn_trad4"]; }

// (A TESTER) CAS DE BASE : AJOUT D'UN MOT SIMPLE (1 réponse partout) :

	$stmt1 = " INSERT INTO voc_eng (id_voc, voc) VALUES ($id_voc,  '$voc') ";
	$a=$mysqli->query($stmt1);
	if(isset($_POST["vocabulaire2"])){
		$stmt1b = " INSERT INTO voc_eng (id_voc, voc) VALUES ($id_voc2,  '$voc2') ";
		$a1=$mysqli->query($stmt1b);
	}
	if(isset($_POST["vocabulaire3"])){
		$stmt1c = " INSERT INTO voc_eng (id_voc, voc) VALUES ($id_voc3,  '$voc3') ";
		$a2=$mysqli->query($stmt1c);
	}	
	if(isset($_POST["vocabulaire4"])){
		$stmt1d = " INSERT INTO voc_eng (id_voc, voc) VALUES ($id_voc4,  '$voc4') ";
		$a3=$mysqli->query($stmt1d);
	}


	$stmt2 = " INSERT INTO trad (id_trad, trad) VALUES ($id_trad,  '$trad') ";
	$b=$mysqli->query($stmt2);
	if(isset($_POST["traduction2"])){
		$stmt2b = " INSERT INTO trad (id_trad, trad) VALUES ($id_trad2,  '$trad2') ";
		$b1=$mysqli->query($stmt2b);
	}
	if(isset($_POST["traduction3"])){
		$stmt2c = " INSERT INTO trad (id_trad, trad) VALUES ($id_trad3,  '$trad3') ";
		$b2=$mysqli->query($stmt2c);
	}
	if(isset($_POST["traduction4"])){
		$stmt2d = " INSERT INTO trad (id_trad, trad) VALUES ($id_trad4,  '$trad4') ";
		$b3=$mysqli->query($stmt2d);
	}


	$stmt3 = " INSERT INTO se_trad (id_se_trad, id_voc, id_trad) VALUES ($id_se_trad, $id_voc, $id_trad) ";
	echo $stmt3."<br>";
	$c=$mysqli->query($stmt3);
	if((isset($_POST["vocabulaire2"]))&&(isset($_POST["traduction2"]))){
		$stmt3b = " INSERT INTO se_trad (id_se_trad, id_voc, id_trad) VALUES ($id_se_trad2, $id_voc2, $id_trad2) ";
		echo $stmt3b."<br>";
		$c2=$mysqli->query($stmt3b);
	}
	if(isset($_POST["vocabulaire3"])&&(isset($_POST["traduction3"]))){
		$stmt3d = " INSERT INTO se_trad (id_se_trad, id_voc, id_trad) VALUES ($id_se_trad3, $id_voc3, $id_trad3) ";
		$c4=$mysqli->query($stmt3d);
	}
	if(isset($_POST["vocabulaire4"])&&(isset($_POST["traduction4"]))){
		$stmt3e = " INSERT INTO se_trad (id_se_trad, id_voc, id_trad) VALUES ($id_se_trad4, $id_voc4, $id_trad4) ";
		$c5=$mysqli->query($stmt3e);
	}


	$stmt4 = " INSERT INTO appartient (id_app, id_se_trad, id_ch) VALUES ($id_app, $id_se_trad, $id_ch) ";
	$d=$mysqli->query($stmt4);

	if(isset($_POST["idapp2"])) { 
		$stmt4b = " INSERT INTO appartient (id_app, id_se_trad, id_ch) VALUES ($id_app2, $id_se_trad2, $id_ch2) ";
		$d2=$mysqli->query($stmt4b);
	}
	if(isset($_POST["idapp3"])) { 
		$stmt4c = " INSERT INTO appartient (id_app, id_se_trad, id_ch) VALUES ($id_app3, $id_se_trad3, $id_ch3) ";
		$d3=$mysqli->query($stmt4c);
	}
	if(isset($_POST["idapp4"])) { 
		$stmt4d = " INSERT INTO appartient (id_app, id_se_trad, id_ch) VALUES ($id_app4, $id_se_trad4, $id_ch4) ";
		$d4=$mysqli->query($stmt4d);
	}


	$stmt5 = " INSERT INTO a_pr_n_voc (id_a_pr_n_voc, id_voc, id_n_voc) VALUES ($id_a_pr_n_voc, $id_voc, $id_n_voc) ";
	$e=$mysqli->query($stmt5); // ICI CAS : ID IDENTIQUES

	if(isset($_POST["idv2"])) { 
		$stmt5b = " INSERT INTO a_pr_n_voc (id_a_pr_n_voc, id_voc, id_n_voc) VALUES ($id_a_pr_n_voc, $id_voc2, $id_n_voc) ";
		$e2=$mysqli->query($stmt5b);
	}
	if(isset($_POST["idv3"])) { 
		$stmt5c = " INSERT INTO a_pr_n_voc (id_a_pr_n_voc, id_voc, id_n_voc) VALUES ($id_a_pr_n_voc, $id_voc3, $id_n_voc) ";
		$e3=$mysqli->query($stmt5c);
	}
	if(isset($_POST["idv4"])) { 
		$stmt5d = " INSERT INTO a_pr_n_voc (id_a_pr_n_voc, id_voc, id_n_voc) VALUES ($id_a_pr_n_voc, $id_voc4, $id_n_voc) ";
		$e4=$mysqli->query($stmt5d);
	}


	$stmt6 = " INSERT INTO a_pr_n_trad (id_a_pr_n_trad, id_trad, id_n_trad) VALUES ($id_a_pr_n_trad, $id_trad, $id_n_trad) ";
	$f=$mysqli->query($stmt6); // ICI CAS : ID IDENTIQUES

	if(isset($_POST["idt2"])) { 
		$stmt6b = " INSERT INTO a_pr_n_trad (id_a_pr_n_trad, id_trad, id_n_trad) VALUES ($id_a_pr_n_trad, $id_trad2, $id_n_trad) ";
		$f2=$mysqli->query($stmt6b);
	}
	if(isset($_POST["idt3"])) { 
		$stmt6c = " INSERT INTO a_pr_n_trad (id_a_pr_n_trad, id_trad, id_n_trad) VALUES ($id_a_pr_n_trad, $id_trad3, $id_n_trad) ";
		$f3=$mysqli->query($stmt6c);
	}
	if(isset($_POST["idt4"])) { 
		$stmt6d = " INSERT INTO a_pr_n_trad (id_a_pr_n_trad, id_trad, id_n_trad) VALUES ($id_a_pr_n_trad, $id_trad4, $id_n_trad) ";
		$f4=$mysqli->query($stmt6d);
	}


// RETOUR A LA VUE QUI AFFICHE LE MOT :

	$sql1 = " SELECT view_name FROM `view_spec` WHERE id_ch = '$id_ch'  ";
  echo $sql1;
	if ($result = $mysqli->query($sql1)) {
		while ($row = $result->fetch_assoc()) {
			$view = $row['view_name'];
			header("Location:../liste_brouillon.php?champs_lex=$view");
		}
	}