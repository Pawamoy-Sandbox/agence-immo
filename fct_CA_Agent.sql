CREATE OR REPLACE Function chiffreAffaireAgent(idAgent PERSONNEL.idPersonnel%TYPE) RETURN FLOAT IS

	chiffreAffaire FLOAT;
	prixVente VENTE.prixVente%TYPE;
	fraisAgenceVente VENTE.frais%TYPE;
	
	CURSOR totPrixVente IS
		SELECT prixVente, frais
		FROM VENTE, CONTRAT, IMMOBILIER
		WHERE VENTE.idImmo = IMMOBILIER.idImmo
		AND CONTRAT.idImmo = IMMOBILIER.idImmo
		AND CONTRAT.idPersonnel = idAgent;	
	
	BEGIN
		chiffreAffaire = 0;
		OPEN totPrixVente;
		
		LOOP
			FETCH totPrixVente INTO prixVente, fraisAgenceVente;
			IF(totPrixVente%NOTFOUND) THEN
				EXIT;
			ELSE
				chiffreAffaire = chiffreAffaire + (prixVente * fraisAgenceVente)/100
			END IF;
		END LOOP;
		
		CLOSE totPrixVente;
		
		return(chiffreAffaire);

END;
/
