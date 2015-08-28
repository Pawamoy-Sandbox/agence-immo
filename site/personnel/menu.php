<?php
	if(!isset($_SESSION['utilisateur']))
		header("location: connexion.php");
?>

<div style="background-color:black;" align="center">
	&nbsp;<br/>
	<input type='image' src="style/bouttonAccueil.png" onclick="self.location.href='accueilPersonnel.php'"></input>
	<input type='image' src="style/bouttonVisite.png" onclick="self.location.href='Visite.php'"></input>
	<input type='image' src="style/bouttonDeconnexion.png" onclick="self.location.href='../deconnexion.php'"></input>
	<br/>&nbsp;
</div>