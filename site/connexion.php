<!DOCTYPE html >
<html>
	<head>
		<title>Connexion a l'agence immobiliere</title>
		<meta charset="iso-8859-1" />
		<!--[if IE 6]>
		<link href="css/ie6.css" rel="stylesheet" type="text/css" />
		<![endif]-->
		<!--[if IE 7]>
			<link href="css/ie7.css" rel="stylesheet" type="text/css" />  
		<![endif]-->
	</head>
	
	<body style='margin-top:20%; margin-left:45%;'>
	
		<?php
			if(isset($_GET['msg']))
				echo "<font color='red'>".$_GET['msg']."</font><br/><br/>";
		?>
	
		<form method='POST' action='verifConnexion.php'>
			Nom d'utilisateur : <input type='text' name='login'></input> <br/><br/>
			Mot de passe :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='password' name='mdp'></input> <br/><br/><br/>
			<input type='submit' name='envoyer' value='Connexion'></input>
		</form>
	
	</body>
</html>