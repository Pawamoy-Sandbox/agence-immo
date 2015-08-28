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
			
			$req = $cnx->prepare("SELECT * FROM CLIENT WHERE idClient=".$_SESSION['id']);
			$req->execute();
			$client = $req->fetch();
		?>
		
		Fiche de <?php echo $client['nom']." ".$client['prenom'] ;?>
		
		<br/><br/>
		<form name="client" method="POST" action="modifClient.php">
			Login : <input type='text' name='login' value='<?php echo $client['login']; ?>' /> <br/>
			Mot de Passe : <input type='password' name='mdp' value='' /> Confirmation : <input type='password' name='confirm' value='' /> <br/><br/>
			
			Date de Naissance : <input type='date' name='dateNaissance' value='<?php echo $client['dateNaissance']; ?>' /> <br/><br/>
			
			Adresse : <input type='text' name='adresse' value='<?php echo $client['adresse']; ?>' /><br/>
			Telephone : <input type='text' name='telephone' value='<?php echo $client['telephone']; ?>' /> <br/>
			Adresse Mail : <input type='mail' name='mail' value='<?php echo $client['mail']; ?>' />
			
			<br/><br/>
			
			<input type='submit' name='envoie' value='Enregistrer' /> <br/>
			<input type='button' name='retour' value='Retour' OnClick="location: accueilClient.php"/>
		</form>
		
	</body>
</html>