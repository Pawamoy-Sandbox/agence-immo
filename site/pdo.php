<?php
	session_start();
	
	$dsn = 'oracle:dbname=agenceImmobiliere;host=localhost';
	$user = 'root';
	$password = '';

	try {
		$cnx = new PDO($dsn, $user, $password);
	} catch (PDOException $e) {
		echo 'Connexion échouée : ' . $e->getMessage();
	}	
?>
