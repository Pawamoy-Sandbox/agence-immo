set echo on

INSERT INTO POSTE (idPoste, libelle) VALUES (10, 'DIRECTEUR');
INSERT INTO POSTE (idPoste, libelle) VALUES (20, 'SECRETAIRE');
INSERT INTO POSTE (idPoste, libelle) VALUES (30, 'PERSONNEL ADMINISTRATIF');
INSERT INTO POSTE (idPoste, libelle) VALUES (40, 'AGENT IMMOBILIER');


INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (1, 'DUPONT', 'MARC', 'mdupont', 'M2p#1', 10);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (2, 'DUBOIS', 'CHARLES', 'cdubois', 'M2p#2', 30);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (3, 'DURLU', 'HENRIETTE', 'hdurlu', 'M2p#3', 20);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (4, 'RANCHANT', 'Thierry', 'tranchant', 'M2p#4', 30);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (5, 'FABRE', 'JULIE', 'jfabre', 'M2p#5', 20);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (6, 'MULLER', 'KARINE', 'kmuller', 'M2p#6', 30);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (7, 'BICHON', 'MAURICE', 'mbichon', 'M2p#7', 40);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (8, 'BALA', 'MALIK', 'mbala', 'M2p#8', 40);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (9, 'WOLFF', 'NICOLAS', 'nwolff', 'M2p#9', 40);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (10, 'DUJARDIN', 'BAZIL', 'bdujardin', 'M2p#10', 40);
INSERT INTO PERSONNEL (idPersonnel, nom, prenom, login, mdp, idPoste) VALUES (11, 'PICCOLO', 'RAPHAEL', 'rpiccolo', 'M2p#11', 40);

INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1001, 'DUFLEUR', 'MARIE', TO_DATE('04/09/1964','dd/mm/yyyy'), '11 PLACE DU MARCHE', '0388568749', 'mdufleur@wanadoo.fr', TO_DATE('15/01/2013','dd/mm/yyyy'), 'mdufleur', 'm2P#1001');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1002, 'ROSENBERG', 'PIERRE', TO_DATE('17/02/1978','dd/mm/yyyy'), '22 AVENUE CHARLES DE GAULLE', '0388882315', 'prosenberg78@gmail.com', TO_DATE('17/01/2013','dd/mm/yyyy'), 'prosenberg', 'm2P#1002');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1003, 'GALLI', 'GUILLAUME', TO_DATE('15/10/1983','dd/mm/yyyy'), '135 ROUTE DE SCHIRMECK', '0369784512', 'ggalli8@hotmail.com', TO_DATE('18/01/2013','dd/mm/yyyy'), 'ggalli', 'm2P#1003');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1004, 'DUFER', 'MARION', TO_DATE('01/04/1975','dd/mm/yyyy'), '1 RUE DU PARC', '0388196375', 'mduffer@gmail.com', TO_DATE('05/01/2013','dd/mm/yyyy'), 'mduffer', 'm2P#1004');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1005, 'ANISS', 'FLORIAN', TO_DATE('20/12/1983','dd/mm/yyyy'), '3 AVENUE JEAN MARCELIN', '0388455567', 'faniss@gmail.com', TO_DATE('01/02/2013','dd/mm/yyyy'), 'faniss', 'm2P#1005');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1006, 'DURAND', 'PIERRE', TO_DATE('23/10/1968','dd/mm/yyyy'), '32 PLACE DU MOULIN', '0388565485', 'pdurand@gmail.com', TO_DATE('02/02/2013','dd/mm/yyyy'), 'pdurand', 'm2P#1006');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1007, 'IZZEB', 'TAOUFIK', TO_DATE('21/06/1975','dd/mm/yyyy'), '15 RUE BORIS VIAN', '0388326396', 'tizzeb@gmail.com', TO_DATE('03/01/2013','dd/mm/yyyy'), 'tizzeb', 'm2P#1007');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1008, 'NOBLE', 'CLAIRE', TO_DATE('03/03/1981','dd/mm/yyyy'), '122 AVENUE LECLERC', '0369786512', 'cnoble@hotmail.fr', TO_DATE('15/01/2013','dd/mm/yyyy'), 'cnoble', 'm2P#1008');
INSERT INTO CLIENT (idClient, nom, prenom, dateNais, adresse, tel, email, dateInscr, login, mdp)
 VALUES (1009, 'FILLIPOT', 'JEAN-MARC', TO_DATE('01/02/1969','dd/mm/yyyy'), '1 PLACE DU PILORI', '0388753192', 'jmfillipot@hotmail.com', TO_DATE('09/01/2013','dd/mm/yyyy'), 'jmfillipot', 'm2P#1009');

INSERT INTO REGION (idRegion, libelle) VALUES (1, 'ALSACE');
INSERT INTO REGION (idRegion, libelle) VALUES (2, 'RHONE-ALPES');
INSERT INTO REGION (idRegion, libelle) VALUES (3, 'BRETAGNE');
INSERT INTO REGION (idRegion, libelle) VALUES (4, 'BASSE-NORMANDIE');

INSERT INTO VILLE (idVille, libelle, idRegion) VALUES (1, 'STRASBOURG', 1);
INSERT INTO VILLE (idVille, libelle, idRegion) VALUES (2, 'LYON', 2);
INSERT INTO VILLE (idVille, libelle, idRegion) VALUES (3, 'RENNES', 3);
INSERT INTO VILLE (idVille, libelle, idRegion) VALUES (4, 'CAEN', 4);


INSERT INTO IMMOBILIER (idImmo, surface, idVille) VALUES (101, 30, 1);
INSERT INTO IMMOBILIER (idImmo, surface, idVille) VALUES (102, 120, 2);
INSERT INTO IMMOBILIER (idImmo, surface, idVille) VALUES (103, 55, 3);
INSERT INTO IMMOBILIER (idImmo, surface, idVille) VALUES (104, 33, 1);

INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (1, TO_DATE('02/02/2013 08:00','dd/mm/yyyy hh24:mi'), TO_DATE('02/02/2013 10:00','dd/mm/yyyy hh24:mi'), 101, 7, 1001);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (2, TO_DATE('02/02/2013 10:00','dd/mm/yyyy hh24:mi'), TO_DATE('02/02/2013 12:00','dd/mm/yyyy hh24:mi'), 103, 9, 1004);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (3, TO_DATE('04/02/2013 13:00','dd/mm/yyyy hh24:mi'), TO_DATE('04/02/2013 15:00','dd/mm/yyyy hh24:mi'), 101, 7, 1002);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (4, TO_DATE('04/02/2013 15:00','dd/mm/yyyy hh24:mi'), TO_DATE('04/02/2013 17:00','dd/mm/yyyy hh24:mi'), 101, 7, 1003);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (5, TO_DATE('05/02/2013 10:00','dd/mm/yyyy hh24:mi'), TO_DATE('05/02/2013 12:00','dd/mm/yyyy hh24:mi'), 102, 8, 1005);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (6, TO_DATE('02/02/2013 14:00','dd/mm/yyyy hh24:mi'), TO_DATE('02/02/2013 16:00','dd/mm/yyyy hh24:mi'), 102, 8, 1006);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (7, TO_DATE('02/02/2013 16:00','dd/mm/yyyy hh24:mi'), TO_DATE('02/02/2013 18:00','dd/mm/yyyy hh24:mi'), 102, 8, 1007);
INSERT INTO CRENEAU (idCreneau, dateDebut, dateFin, idImmo, idPersonnel, idClient)
 VALUES (8, TO_DATE('04/02/2013 09:00','dd/mm/yyyy hh24:mi'), TO_DATE('04/02/2013 11:00','dd/mm/yyyy hh24:mi'), 103, 11, 1009);

INSERT INTO CONTRAT (idContrat, frais, idImmo, idPersonnel, idClient) VALUES (1, 10, 103, 11, 1009);
INSERT INTO CONTRAT (idContrat, frais, idImmo, idPersonnel, idClient) VALUES (2, 6, 102, 8, 1007);

INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (1, 'Cuisine', '', 101);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (2, 'Salle de bain', '', 101);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (3, 'WC', '', 101);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (4, 'Salon', '', 101);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (5, 'Chambre Est', '', 101);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (6, 'Chambre Ouest', '', 101);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (7, 'Cuisine', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (8, 'Salle de bain 1er', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (9, 'Salle de bain 2eme', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (10, 'WC 1er', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (11, 'WC 2eme', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (12, 'Salon', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (13, 'Chambre Nord 1er', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (14, 'Chambre Nord 2eme', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (15, 'Chambre Ouest 2eme', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (16, 'Chambre Sud 2eme', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (17, 'Cave', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (18, 'Buanderie', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (19, 'Garage', '', 102);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (20, 'Cuisine', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (21, 'Salle de bain', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (22, 'WC', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (23, 'Salon', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (24, 'Chambre Sud', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (25, 'Chambre Est 1', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (26, 'Chambre Est 2', '', 103);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (27, 'Cuisine', '', 104);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (28, 'Salle de bain', '', 104);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (29, 'WC', '', 104);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (30, 'Salon', '', 104);
INSERT INTO PIECE (idPiece, libelle, image, idImmo) VALUES (31, 'Chambre Sud', '', 104);


INSERT INTO VENDU (idVendu, prixVendu, prixVente, idImmo) VALUES (1, 500000, 525000, 102);


INSERT INTO LOCATION (idLocation, loyerMensuel, montantCharges, frais, idImmo)
 VALUES (1, 600, 90, 100, 101);
 INSERT INTO LOCATION (idLocation, loyerMensuel, montantCharges, frais, idImmo)
 VALUES (2, 850, 100, 200, 103);
 INSERT INTO LOCATION (idLocation, loyerMensuel, montantCharges, frais, idImmo)
 VALUES (3, 690, 80, 120, 104);

INSERT INTO PROPRIETAIRE (idProprio, nom, prenom, adresse, tel, email, idImmo)
 VALUES (1, 'DI ANGELO', 'ROBERT', '1 PLACE DE LA GARE', '0388754193', 'rdiangelo@yahoo.fr', 101);
INSERT INTO PROPRIETAIRE (idProprio, nom, prenom, adresse, tel, email, idImmo)
 VALUES (2, 'LAGAFFE', 'JACQUES', '2 RUE DU SCHNOCKELOCH', '0369524153', 'jlagaffe@gmail.com', 102);
INSERT INTO PROPRIETAIRE (idProprio, nom, prenom, adresse, tel, email, idImmo)
 VALUES (3, 'DUFOUR', 'BASTIEN', '3 PLACE ST MARTIN', '0388016948', 'bdufour@gmail.fr', 103);
INSERT INTO PROPRIETAIRE (idProprio, nom, prenom, adresse, tel, email, idImmo)
 VALUES (4, 'NAMOU', 'ALINE', '29 RUE DU POLYGONE', '0623545658', 'anamou@hotmail.com', 104);
 

INSERT INTO MAISON (idMaison, tailleTerrain, idImmo) VALUES (1, 100, 102);


INSERT INTO APPARTEMENT (idAppart, etage, isAscenseur, idImmo) VALUES (1, 1, 0, 101);
INSERT INTO APPARTEMENT (idAppart, etage, isAscenseur, idImmo) VALUES (2, 7, 1, 103);
INSERT INTO APPARTEMENT (idAppart, etage, isAscenseur, idImmo) VALUES (3, 3, 1, 104);


INSERT INTO VENTEAGENT (idPerso, annee, nbVente, benef) VALUES (7, 2013, 1, 5000);
INSERT INTO VENTEAGENT (idPerso, annee, nbVente, benef) VALUES (8, 2012, 2, 15000);
INSERT INTO VENTEAGENT (idPerso, annee, nbVente, benef) VALUES (9, 2012, 3, 30000);
INSERT INTO VENTEAGENT (idPerso, annee, nbVente, benef) VALUES (10, 2011, 4, 8000);
INSERT INTO VENTEAGENT (idPerso, annee, nbVente, benef) VALUES (11, 2012, 1, 500);

REM Set de données de test initialisé.
 
