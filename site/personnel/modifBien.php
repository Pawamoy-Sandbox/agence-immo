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
			
			$req = $cnx->prepare("UPDATE BIENIMMOBILIER SET surfaceHabitable =".$_POST['surfaceHabitable'].", nbPieces =".$_POST['nbPiece'].", nbChambre = ".$_POST['nbChambre'].", nbSalleDeBain=".$_POST['nbSalleBain'].", nbCuisine =".$_POST['nbCuisine'].", ville=".$_POST['ville'].", adresse=".$_POST['adresse']." WHERE idBienImmobilier = ".$_POST['id']);
			$req->execute();
			
			if(isset($_POST['tailleTerrain']))
				$req2 = $cnx->prepare("UPDATE BIENIMMOBILIER SET tailleTerrain =".$_POST['tailleTerrain']." WHERE idBienImmobilier = ".$_POST['id']);
			else
				$req2 = $cnx->prepare("UPDATE BIENIMMOBILIER SET etage =".$_POST['etage']." WHERE idBienImmobilier = ".$_POST['id']);
			$req2->execute();
			
			if(isset($_POST['prix']))
				$req3 = $cnx->prepare("UPDATE BIENIMMOBILIER SET prix =".$_POST['prix'].", fraisAgence = ".$_POST['fraisAgence']." WHERE idBienImmobilier = ".$_POST['id']);
			else
				$req3 = $cnx->prepare("UPDATE BIENIMMOBILIER SET loyer =".$_POST['loyer'].", fraisAgence = ".$_POST['fraisAgence'].", charges = ".$_POST['charges']." WHERE idBienImmobilier = ".$_POST['id']);
			$req3->execute();
			
			header("location: accueilClient.php");
		?>
		
		
	</body>
</html>