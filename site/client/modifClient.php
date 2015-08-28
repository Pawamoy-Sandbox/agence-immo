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
			
			$req = $cnx->prepare("UPDATE CLIENT SET login =".$_POST['login'].", motDePasse =".$_POST['mdp'].", dateNaissance = ".$_POST['dateNaissance'].", adresse=".$_POST['adresse'].", telephone =".$_POST['telephone'].", mail=".$_POST['mail']." WHERE idClient = ".$_SESSION['id']);
			$req->execute();
			
			header("location: accueilClient.php");
		?>
		
		
	</body>
</html>