<!DOCTYPE html>
<html>
	<head>
		<title>Fiche précise d'une annonce immobiliere</title>
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
			
			$req = $cnx->prepare("SELECT * FROM BIENIMMOBILIER WHERE idBienImmobilier=".$_GET['id']);
			$req->execute();
			$annonce = $req->fetch();
		?>
		
		Fiche de <?php if(isset($annonce['tailleTerrain'])){ echo "la Maison"; else{ echo "l'Appartement"; }?>
		
		<br/><br/>
		
		<?php 
			echo "  <img src='../photos/".$annonce['photo1']."' />
					<br/>
					<img src='../photos/".$annonce['photo2']."' />
					<br/>
					<img src='../photos/".$annonce['photo3']."' />
					<br/>
					<img src='../photos/".$annonce['photo4']."' />
					<br/>
					<img src='../photos/".$annonce['photo5']."' />";
		?>
		
		<br/><br/>
		
		Surface habitable : <?php echo $annonces['surfaceHabitable'] ; ?> <br/>
		Nombre de pièces : <?php echo $annonces['nbPieces'] ; ?> &nbsp;&nbsp; Nombre de chambre : <?php echo $annonces['nbChambre'] ; ?> &nbsp;&nbsp; Nombre de salle de bain : <?php echo $annonces['nbSalleDeBain'] ; ?> &nbsp;&nbsp; Nombre de Cuisine : <?php echo $annonces['nbCuisine'] ; ?>
		
		<br/><br/>
		
		<?php if($annonce['garage']){ echo "Garage : Oui";} else { echo "Garage : Non"; } ?>
		<br/>
		<?php if($annonce['cave']){ echo "Cave : Oui";} else { echo "Cave : Non"; } ?>
		
		<br/><br/>
		
		Ville : <?php echo $annonce['ville']; ?> &nbsp;&nbsp; Adresse : <?php echo $annonce['adresse']; ?>
		
		<br/><br/>
		
		<?php if(isset($annonce['tailleTerrain'])){ echo "Taille du Terrain : ".$annonce['tailleTerrain'] ; else{ echo "Ascenseur : "; if($annonce['ascenseur']) { echo "Oui"; } else { echo "Non"; } echo "&nbsp;&nbsp;"; echo "Nombre d'etage : ".$annonce['etage']; }?>
		
		<br/><br/><br/>
		
		<?php if(isset($annonce['prix'])) {
				echo "Prix : ".$annonce['prix']."<br/> Frais d'Agence : ".$annonce['fraisAgence'];
			} else {
				echo "Loyer : ".$annonce['loyer']."<br/> Charges : ".$annonce['charges']."<br/> Frais d'Agence : ".$annonce['fraisAgence']
			}
		?>
	</body>
</html>