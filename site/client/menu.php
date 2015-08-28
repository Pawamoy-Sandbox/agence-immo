<?php
	if(!isset($_SESSION['utilisateur']))
		header("location: ../connexion.php");
?>

<div style="background-color:black;" align="center">
	&nbsp;<br/>
	<input type='image' src="style/bouttonAccueil.png" onclick="self.location.href='accueilClient.php'"></input>
	<input type='image' src="style/bouttonUtilisateurs.png" onclick="self.location.href='compteUtilisateur.php'"></input>
	<input type='image' src="style/bouttonDeconnexion.png" onclick="self.location.href='../deconnexion.php'"></input>
	<br/>&nbsp;
</div>
