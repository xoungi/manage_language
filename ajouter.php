<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Ajouter un mot</title>
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
				/*var myDiv = document.getElementById("myDiv_champs");

				<?php $query6= "SELECT champs FROM champs_lex";
				if ($result6 = $mysqli->query($query6)) {
					while ($row = $result6->fetch_array()) {
						$champs_json = array();
						$champs_json = array($row['champs']);
						//echo json_encode($champs_json);
					}
				}?> // CELA NE RETOURNE QUE LE DERNIER CHAMPS

				var array = <?php echo json_encode($champs_json); ?>;
				K++;
				elem = document.createElement("select");
				if (K<5) {
					for (var n = 0; n < array.length; n++) {
				    	elem2 = document.createElement("option");
				    	elem2.value = array[n];
				    	elem2.text = array[n];
				    	elem.appendChild(elem2);
				    	elem.setAttribute("name", "champs" + K) ;
				    	myDiv_champs.appendChild(elem);
					}
				}*/
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
		<?php
			$query2= "SELECT dlangage FROM database_spec";
				if ($result2 = $mysqli->query($query2)) {
					while ($row2 = $result2->fetch_assoc()) {
						$langage = $row2['dlangage']; ?>
						<u>Page d'insertion de vocabulaire :</u>
						<br><br>

						<form name="ajoutVoc" action="ajout.php" method="post">
							<table>
								<tr>
									<td>Identifiant <?php echo $langage; ?></td><?php
								$query= "SELECT id_voc FROM voc_eng WHERE id_voc=(SELECT max(id_voc) FROM voc_eng)";
									if ($result = $mysqli->query($query)) {
										while ($row = $result->fetch_assoc()) {
										$id_voc2 = $row["id_voc"] + '1';
									echo '<td> '.$id_voc2.' </td>';?>
								</tr>
								<tr>
									<td>Identifiant fran&ccedil;ais</td><?php
								echo '<input type="hidden" name="idv" value="'.$id_voc2.'"/>'; 
								}}
									$query2= "SELECT id_trad FROM trad WHERE id_trad=(SELECT max(id_trad) FROM trad)";
									if ($result2 = $mysqli->query($query2)) {
										while ($row = $result2->fetch_assoc()) {
											$id_trad2 = $row["id_trad"] + '1';					
									echo '<td>'.$id_trad2.'</td>';
									echo '<input type="hidden" name="idt" value="'.$id_trad2.'"/>'; 
								}}?>
								</tr>
								<tr>
									<td>Vocabulaire <?php echo $langage; ?></td>
									<!--<input type="text" name="vocabulaire" required >-->
									<td>
										<input type="text" name="vocabulaire" onkeyup="incSize(this)" required/> 
										<input type="button" value="+" onclick="Ajouter_voc()"> <input type="button" value="-" onclick="Retirer_voc()">
										<div id="myDiv_voc"></div>
									</td>
								</tr>
								<tr>
									<td>Traduction fran&ccedil;aise</td>
									<td>
										<input type="text" name="traduction" onkeyup="incSize(this)" required/> 
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
						</form>
					<?php
				}
			} 
		?>
	</body>
<hr><p>Les identifiants sont d&eacute;finis automatiquement &agrave; partir de la derni&egrave;re valeur entr&eacute;e.
<br>Pour les guillemets : mettre un antislash avant de l'&eacute;crire. ( \' )
<br>Si plusieurs mots ont une seule traduction (ou r&eacute;ciproquement). Laissez-les dans la m&#234;me case. <br>
En effet, il n'est pour le moment pas possible de joindre 1 mot pour plusieurs traductions, ou vice-versa.<br>
Les cases javascript + et - sont en phase bêta.</p>
</html>