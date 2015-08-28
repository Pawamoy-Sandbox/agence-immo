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
		<form name="bienImmo" method="POST" action="modifBien.php">
			<input type="hidden" name="id" value="<?php echo $_GET['id']; ?>" />
			Surface habitable : <input type="text" name="surface" value="<?php echo $annonces['surfaceHabitable'] ; ?>"/> <br/>
			Nombre de pièces : <input type="text" name="nbPiece" value="<?php echo $annonces['nbPieces'] ; ?>" /> &nbsp;&nbsp; Nombre de chambre : <input type="text" name="nbChambre" value="<?php echo $annonces['nbChambre'] ; ?>" /> &nbsp;&nbsp; Nombre de salle de bain : <input type="text" name="nbSalleBain" value="<?php echo $annonces['nbSalleDeBain'] ; ?>" /> &nbsp;&nbsp; Nombre de Cuisine : <input type="text" name="nbCuisine" value="<?php echo $annonces['nbCuisine'] ; ?>" />
			
			<br/><br/>
			
			<?php if($annonce['garage']){ echo "Garage : Oui";} else { echo "Garage : Non"; } ?>
			<br/>
			<?php if($annonce['cave']){ echo "Cave : Oui";} else { echo "Cave : Non"; } ?>
			
			<br/><br/>
			
			Ville : <input type="text" name="ville" value="<?php echo $annonce['ville']; ?>" /> &nbsp;&nbsp; Adresse : <input type="text" name="adresse" value="<?php echo $annonce['adresse']; ?>" />
			
			<br/><br/>
			
			<?php if(isset($annonce['tailleTerrain'])){ echo "Taille du Terrain : <input type='text' name='tailleTerrain' value='".$annonce['tailleTerrain']."'/>" ; else{ echo "Ascenseur : "; if($annonce['ascenseur']) { echo "Oui"; } else { echo "Non"; } echo "&nbsp;&nbsp;"; echo "Nombre d'etage : <input type='text' name='etage' value='".$annonce['etage']."' />"; }?>
			
			<br/><br/><br/>
			
			<?php if(isset($annonce['prix'])) {
					echo "Prix : <input type='text' name='prix' value='".$annonce['prix']."' /> <br/> Frais d'Agence : <input type='text' name='fraisAgence' value='".$annonce['fraisAgence']."' />";
				} else {
					echo "Loyer : <input type='text' name='loyer' value='".$annonce['loyer']."' /> <br/> Charges : <input type='text' name='charges' value='".$annonce['charges']."' /><br/> Frais d'Agence : <input type='text' name='fraisAgence' value='".$annonce['fraisAgence']."' />";
				}
			?>
			
			<input type='submit' name='envoyer' value="enregistrer" /> <br/>
			<input type='button' name='retour' value="retour" OnClick='location: accueilPersonnel.php'/>
		</form>
	</body>
</html>