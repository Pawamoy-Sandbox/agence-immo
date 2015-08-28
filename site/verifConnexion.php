<!DOCTYPE html >
<html>
	<head>
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
			include "pdo.php";
			
			$req = $cnx->prepare("SELECT login,motDePasse,idClient FROM CLIENT WHERE login='".$_POST['login']."' AND motDePasse='".sha1($_POST['mdp'])."'");
			$req->execute();
			$res = req->fetch();
			
			$req2 = $cnx->prepare("SELECT login,motDePasse, idPersonnel FROM PERSONNEL WHERE login='".$_POST['login']."' AND motDePasse='".sha1($_POST['mdp'])."'");
			$req2->execute();
			$res2 = $req2->fetch();
			
			if($req->rowCount() != 0){
				$_SESSION['id'] = $res['idClient'];
				$_SESSION['utilisateur'] = "client";
				header("location: client/accueilClient.php");
			}else if($req2->rowCount() !=0){
				$_SESSION['id'] = $res2['idPersonnel'];
				$_SESSION['utilisateur'] = "personnel";
				header("location: personnel/accueilPersonnel.php");
			}
			else{
				header("Location: connexion.php?msg=Nom d'utilisateur ou mot de passe incorrect!");
			}		
		?>
	
	</body>
</html>
