<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta charset="UTF-8">
		<link rel="icon" href="favicon.ico" />
		<link href="style.css" rel="stylesheet" media="all" type="text/css"> 
		<title>Listes de mots pour narrateur</title>
		<?php include_once('includes/connexion.php'); ?>
	</head>
	<body>
		<div><h2><a href="index.php">Home</a></h2><hr><br></div>
		<form action="<?php $_SERVER['PHP_SELF']; ?>" method="GET">
			<fieldset>
				<table>
					<?php $categories = $_GET["cat"];

						if (isset($_GET['classement'])) {
							$classement = $_GET["classement"];
						} else {
							$classement = "voc"; 
						}
					   	$query1=(" SELECT * FROM $categories ORDER BY " .$classement. " ASC ");

						if ($result1 = $mysqli->query($query1)) {
							while ($row = $result1->fetch_assoc()) {
								$voc = $row['voc']; ?>
							    <tr>
									<td><b><?php echo $voc." ; " ; ?></b></td>
								</tr><?php
							}	
							$result1->free();
						}
					?>
				</table>
			</fieldset>
		</form>
	</body>
</html>	