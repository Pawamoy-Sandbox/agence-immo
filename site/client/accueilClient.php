<!DOCTYPE html>
<html>
	<head>
		<title>Accueil Client</title>
		<meta charset="iso-8859-1" />
		<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
		<![endif]-->
		<!--[if IE 7]>
			<link href="css/ie7.css" rel="stylesheet" type="text/css" />  
		<![endif]-->
	</head>
	
	<body>
		<?php 
			include "../pdo.php";
			
			include "menu.php";
			
			$req = $cnx->prepare("SELECT idBienImmobilier, photo1, surfaceHabitable, ville, adresse FROM BIENIMMOBILIER");
			$req->execute();
			$annonces = $req->fetchAll();
			
			echo "<table>
				<tr>
					<td>
						<b>Photo</b>
					</td>
					<td>
						<b>Ville</b>
					</td>
					<td>
						<b>Adresse</b>
					</td>
					<td>
						<b>Surface Habitable</b>
					</td>
				</tr>";
			
			foreach($annonces as $row){
				echo "<tr>
							<td>
								<a href='ficheAnnonceClient.php?id=".$row['idBienImmobilier']."' ><img src='../photos/".$row['photo1']."' /></a>
							</td>
							<td>
								".$row['ville']."
							</td>
							<td>
								".$row['adresse']."
							</td>
							<td>
								".$row['surfaceHabitable']."
							</td>
					  </tr>";
			}
			
			echo "</table>";
		?>
	</body>
</html>