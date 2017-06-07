<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Modification d'un mot</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<script>
			function incSize(event) {
			   var size = event.value.length; 
			   event.setAttribute("size", size);
			   event.setAttribute("style", "width:auto")    
			}
			I=1; J=1; K=1; L=1; M=1;
			function Ajouter_voc() {
		 	I++;
			elem = document.createElement("INPUT") ;
				if (I<5) {
					elem.setAttribute("placeholder", "vocabulaire " + I) ;
			   		elem.setAttribute("onkeyup", "incSize(this)") ;
			   		elem.setAttribute("name", "vocabulaire" + I) ;
			   		myDiv_voc.appendChild(elem) ;       
				}
		 	}
			function Retirer_voc() {
			   list = document.getElementById("myDiv_voc") ;
			   if ( I > 0 ) { I--; list.removeChild(list.childNodes[I]); }
			}
			function Ajouter_trad() {
			    J++;
			    elem = document.createElement("INPUT") ;
			    if (J<5) {
				    elem.setAttribute("placeholder", "traduction " + J) ;
				    elem.setAttribute("onkeyup", "incSize(this)") ;
				    elem.setAttribute("name", "traduction" + J) ;
				    myDiv_trad.appendChild(elem) ;
			    }       
			}
			function Retirer_trad() {
			   list = document.getElementById("myDiv_trad") ;
			   if ( J > 0 ) { J--; list.removeChild(list.childNodes[J]); }
			}
			function Ajouter_champs() {
			    K++;
			    elem = document.createElement("INPUT") ;
			    if (K<5) {
				    elem.setAttribute("placeholder", "champs " + K) ;
				    elem.setAttribute("onkeyup", "incSize(this)") ;
				    elem.setAttribute("name", "champs" + K) ;
				    myDiv_champs.appendChild(elem) ;
			    }    
			}
			function Retirer_champs() {
			   list = document.getElementById("myDiv_champs") ;
			   if ( K > 0 ) { K--; list.removeChild(list.childNodes[K]); }
			}
			function Ajouter_nat_voc() {
				var myDiv = document.getElementById("myDiv_nat_voc");
				var array = ["adjectif","adverbe","conjonction","expression","groupe_nominal","groupe_verbal","locution_adjectivale","locution_adverbiale","locution_conjonctive","nom","participe_passe","participe_present","preposition","pronom","verbe","locution_nominale","locution_prepositive","locution-phrase","interjection","locution interjective","adjectif_numeral","nom_propre","locution_pronominale","adjectif_nom","determinants","locution_verbale","adjectifs","noms","verbes"]; 
				// REMPLACER CE CAS PAR LES NATURES VOC (NON ADAPTABLE)
				L++;
				elem = document.createElement("select");
				if (L<5) {
					for (var o = 0; o < array.length; o++) {
				    	elem2 = document.createElement("option");
				    	elem2.value = array[o];
				    	elem2.text = array[o];
				    	elem.appendChild(elem2);
				    	elem.setAttribute("name", "nat_voc" + L) ;
				    	myDiv_nat_voc.appendChild(elem);
					}
				}
			}
			function Retirer_nat_voc() {
			   list = document.getElementById("myDiv_nat_voc") ;
			   if ( L > 0 ) { L--; list.removeChild(list.childNodes[L]); }
			}
			function Ajouter_nat_trad() {
				var myDiv = document.getElementById("myDiv_nat_trad");
				var array = ["adjectif","adverbe","conjonction","expression","groupe_nominal","groupe_verbal","locution_adjectivale","locution_adverbiale","locution_conjonctive","nom","participe_passe","participe_present","preposition","pronom","verbe","locution_nominale","locution_prepositive","locution-phrase","interjection","locution interjective","adjectif_numeral","nom_propre","locution_pronominale","adjectif_nom","determinants","locution_verbale","adjectifs","noms","verbes"]; 
				// REMPLACER CE CAS PAR LES NATURES TRAD (NON ADAPTABLE)
				M++;
				elem = document.createElement("select");
				if (M<5) {
					for (var p = 0; p < array.length; p++) {
				    	elem2 = document.createElement("option");
				    	elem2.value = array[p];
				    	elem2.text = array[p];
				    	elem.appendChild(elem2);
				    	elem.setAttribute("name", "nat_trad" + M) ;
				    	myDiv_nat_trad.appendChild(elem);
					}
				}
			}
			function Retirer_nat_trad() {
			   list = document.getElementById("myDiv_nat_trad") ;
			   if ( M > 0 ) { M--; list.removeChild(list.childNodes[M]); }
			}
		</script>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<u>Page de modification des entr&eacute;es :</u><br><br>
		<?php
			$id_trad = $_GET["varid_trad"];

			$query2= "SELECT dlangage FROM database_spec";
				if ($result2 = $mysqli->query($query2)) {
					while ($row1 = $result2->fetch_assoc()) {
						$langage = $row1['dlangage'];

			$query=(" SELECT nature_voc.id_n_voc, nature_trad.id_n_trad, champs_lex.id_ch, appartient.id_app, a_pr_n_voc.id_a_pr_n_voc, a_pr_n_trad.id_a_pr_n_trad, trad.id_trad, trad.trad, voc_eng.id_voc, voc_eng.voc, champs_lex.champs, nature_trad.nature_trad, nature_voc.nature_voc FROM appartient, se_trad, trad, champs_lex, voc_eng, a_pr_n_trad, a_pr_n_voc, nature_trad, nature_voc WHERE a_pr_n_trad.id_n_trad = nature_trad.id_n_trad AND a_pr_n_trad.id_trad = trad.id_trad AND a_pr_n_voc.id_n_voc = nature_voc.id_n_voc AND a_pr_n_voc.id_voc = voc_eng.id_voc AND appartient.id_se_trad = se_trad.id_se_trad AND appartient.id_ch = champs_lex.id_ch AND se_trad.id_trad = trad.id_trad AND se_trad.id_voc = voc_eng.id_voc AND trad.id_trad = '".$id_trad."' ");
			if ($result = $mysqli->query($query)) {
				while ($row = $result->fetch_assoc()) {
					$id_voc = $row['id_voc'];
					$id_trad = $row['id_trad'];
					$trad = $row['trad']; // $id_voc = $row['id_voc']; sont équivalents 15-12-2016 (avec id_trad)
					$voc = $row['voc'];
					$id_n_voc = $row['id_n_voc'];
					$id_n_trad = $row['id_n_trad'];
					$nat_voc = $row['nature_voc'];
					$nat_trad = $row['nature_trad'];
					$champs = $row['champs'];
					$id_champs = $row['id_ch'];
					$id_app = $row['id_app'];
					$id_a_pr_n_voc = $row['id_a_pr_n_voc'];
					$id_a_pr_n_trad = $row['id_a_pr_n_trad'];?>
					<form name="modifVoc" action="fonctions/actionchamps.php" method="post"><?php
						echo '<input type="hidden" name="idv" value="'.$id_voc.'"/>';
						echo '<input type="hidden" name="idt" value="'.$id_trad.'"/>';
						echo '<input type="hidden" name="id_app" value="'.$id_app.'"/>';
						echo '<input type="hidden" name="id_a_pr_n_voc" value="'.$id_a_pr_n_voc.'"/>';
						echo '<input type="hidden" name="id_a_pr_n_trad" value="'.$id_a_pr_n_trad.'"/>';
						echo '<input type="hidden" name="champs" value="'.$champs.'"/>';
						echo '<input type="hidden" name="nat_voc" value="'.$nat_voc.'"/>';
						echo '<input type="hidden" name="nat_trad" value="'.$nat_trad.'"/>';
						?>
						<table>
							<tr>
								<td>Num&eacute;ro <?php echo $langage; ?></td>
								<td><?php echo $id_voc; ?></td>
							</tr>
							<tr>
								<td>Num&eacute;ro fran&ccedil;ais</td>
								<td><?php echo $id_trad; ?></td>
							</tr>
							<tr>
								<td>Appartient, a pour nature</td>
								<td><?php echo "$id_app".", "."$id_a_pr_n_voc".", "."$id_a_pr_n_trad"; ?></td>
							</tr>
								<tr>
									<td>Vocabulaire <?php echo $langage; ?></td>
									<!--<input type="text" name="vocabulaire" required >-->
									<td>
										<input type="text" name="vocabulaire" onkeyup="incSize(this)" value="<?php echo $voc; ?>" required/> 
										<input type="button" value="+" onclick="Ajouter_voc()"> <input type="button" value="-" onclick="Retirer_voc()">
										<div id="myDiv_voc"></div>
									</td>
								</tr>
								<tr>
									<td>Traduction fran&ccedil;aise</td>
									<td>
										<input type="text" name="traduction" onkeyup="incSize(this)" value="<?php echo $trad; ?>" required/> 
										<input type="button" value="+" onclick="Ajouter_trad()"> <input type="button" value="-" onclick="Retirer_trad()">
										<div id="myDiv_trad"></div>
									</td>
								</tr>
								<tr> 
									<td>Champs lexical</td>
									<td>
										<select name="idc"><?php
										$query3 = "SELECT id_ch, champs FROM champs_lex";
										if ($result3 = $mysqli->query($query3)) {
											while ($row = $result3->fetch_assoc()) {
												foreach ($result3 as $result01){

													if ($result01['id_ch'] == $id_champs) {
												       $selected = 'selected';
												    } else {
												       $selected = '';
												    }
													echo '<option value="'. $result01['id_ch'] . '" '.$selected.'>'.$result01['champs'].'</option>';
												}
											}
										} ?>
										</select>
										<input type="button" value="+" onclick="Ajouter_champs()"> <input type="button" value="-" onclick="Retirer_champs()">
										<div id="myDiv_champs"></div>
									</td>
								</tr>
							<tr>
								<td>Nature du vocabulaire</td>
								<td>
									<select name="idn_voc"><?php
									$query4 = "SELECT id_n_voc, nature_voc FROM nature_voc";
									if ($result4 = $mysqli->query($query4)) {
										while ($row = $result4->fetch_assoc()) {
											foreach ($result4 as $result02){
												if ($result02['id_n_voc'] == $id_n_voc) {
											       $selected = 'selected';
											    } else {
											       $selected = '';
											    }
												echo '<option value="'. $result02['id_n_voc'] . '" '.$selected.'>'.$result02['nature_voc'].'</option>';
											}
										}
									}?>
									</select>
									<input type="button" value="+" onclick="Ajouter_nat_voc()"> <input type="button" value="-" onclick="Retirer_nat_voc()">
									<div id="myDiv_nat_voc"></div>
								</td>
							</tr>
							<tr>
								<td>Nature de la traduction</td>
								<td>
									<select name="idn_trad"><?php
									$query5 = "SELECT id_n_trad, nature_trad FROM nature_trad";
									if ($result5 = $mysqli->query($query5)) {
										while ($row = $result5->fetch_assoc()) {
											foreach ($result5 as $result03){
												if ($result03['id_n_trad'] == $id_n_trad) {
											       $selected = 'selected';
											    } else {
											       $selected = '';
											    }
												echo '<option value="'. $result03['id_n_trad'] . '" '.$selected.'>'.$result03['nature_trad'].'</option>';
											}
										}
									}?>
									</select>
									<input type="button" value="+" onclick="Ajouter_nat_trad()"> <input type="button" value="-" onclick="Retirer_nat_trad()">
									<div id="myDiv_nat_trad"></div>
								</td>
							</tr>
						</table>
						<br>
						<input type="submit" value=" Envoyer ">	
					</form><br><?php
				}
			}}}
		?>
		<hr><p>Les identifiants sont d&eacute;finis automatiquement &agrave; partir de la derni&egrave;re valeur entr&eacute;e.
		<br>Pour les guillemets : mettre un antislash avant de l'&eacute;crire. ( \' )
		<br>Si plusieurs champs sont n&eacute;cessaires pour un seul mot, ex: synonymes ou homonymes (or mot(s) comportant plusieurs cat&eacute;gories grammaticales), il faudra recopier exactement ceux-ci &agrave; la main.
		<br>Si plusieurs mots ont une seule traduction (ou r&eacute;ciproquement). Laissez-les dans la m&#234;me case. Faire des cas &#224; part pour les mots ayant plusieurs champs lexicaux ou natures.</p>
	</body>
</html>