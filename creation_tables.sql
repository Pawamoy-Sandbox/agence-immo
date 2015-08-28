set echo on

CREATE TABLE POSTE (
        idPoste SMALLINT,
        libelle VARCHAR(30),
        PRIMARY KEY(idPoste));
REM Table POSTE créée.

CREATE TABLE PERSONNEL (
        idPersonnel INT,
        nom VARCHAR(20),
        prenom VARCHAR(20),
        login VARCHAR(20),
        mdp VARCHAR(20),
        idPoste SMALLINT,
        PRIMARY KEY(idPersonnel),
        FOREIGN KEY (idPoste) REFERENCES POSTE(idPoste));
REM Table PERSONNEL créée.

CREATE TABLE REGION (
        idRegion SMALLINT,
        libelle VARCHAR(20),
        PRIMARY KEY(idRegion));
REM Table REGION créée.

CREATE TABLE VILLE (
        idVille INT,
        libelle VARCHAR(20),
        idRegion SMALLINT,
        PRIMARY KEY(idVille),
        FOREIGN KEY (idRegion) REFERENCES REGION(idRegion));
REM Table VILLE créée.

CREATE TABLE IMMOBILIER (
        idImmo INT,
        surface INT,
        idVille INT,
        PRIMARY KEY(idImmo),
        FOREIGN KEY (idVille) REFERENCES VILLE(idVille));
REM Table IMMOBILIER créée.

CREATE TABLE PROPRIETAIRE (
        idProprio INT,
        nom VARCHAR(20),
        prenom VARCHAR(20),
        adresse VARCHAR(255),
        tel VARCHAR(15),
        email VARCHAR(50),
        idImmo INT,
        PRIMARY KEY(idProprio),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table PROPRIETAIRE créée.

CREATE TABLE PIECE (
        idPiece INT,
        libelle VARCHAR(30),
        image VARCHAR(100),
        idImmo INT,
        PRIMARY KEY(idPiece),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table PIECE créée.

CREATE TABLE APPARTEMENT (
        idAppart INT,
        etage SMALLINT,
        isAscenseur SMALLINT,
        idImmo INT,
        PRIMARY KEY(idAppart),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table APPARTEMENT créée.

CREATE TABLE MAISON (
        idMaison INT,
        tailleTerrain INT,
        idImmo INT,
        PRIMARY KEY(idMaison),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table MAISON créée.

CREATE TABLE LOCATION (
        idLocation INT,
        loyerMensuel INT,
        montantCharges INT,
        frais INT,
        idImmo INT,
        PRIMARY KEY(idLocation),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table LOCATION créée.

CREATE TABLE VENTE (
        idVente INT,
        prixVente INT,
        marge INT,
        frais INT,
        idImmo INT,
        PRIMARY KEY(idVente),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table VENTE créée.

CREATE TABLE LOUE (
        idLoue INT,
        loyerMensuel INT,
        marge INT,
        idImmo INT,
        PRIMARY KEY(idLoue),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table LOUE créée.

CREATE TABLE VENDU (
        idVendu INT,
        prixVendu INT,
        prixVente INT,
        idImmo INT,
        PRIMARY KEY(idVendu),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo));
REM Table VENDU créée.

CREATE TABLE CLIENT (
        idClient INT,
        nom VARCHAR(20),
        prenom VARCHAR(20),
        dateNais DATE,
        adresse VARCHAR(50),
        tel CHAR(10),
        email VARCHAR(25),
        dateInscr DATE,
        login VARCHAR(20),
        mdp VARCHAR(20),
        PRIMARY KEY(idClient));
REM Table CLIENT créée.

CREATE TABLE CONTRAT (
        idContrat INT,
        frais INT,
        idImmo INT,
        idPersonnel INT,
        idClient INT,
        PRIMARY KEY(idContrat),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo),
        FOREIGN KEY (idPersonnel) REFERENCES PERSONNEL(idPersonnel),
        FOREIGN KEY (idClient) REFERENCES CLIENT(idClient));
REM Table CONTRAT créée.
        
CREATE TABLE CRENEAU (
        idCreneau INT,
        dateDebut DATE,
        dateFin DATE,
        idImmo INT,
        idPersonnel INT,
        idClient INT,
        PRIMARY KEY(idCreneau),
        FOREIGN KEY (idImmo) REFERENCES IMMOBILIER(idImmo),
        FOREIGN KEY (idPersonnel) REFERENCES PERSONNEL(idPersonnel),
        FOREIGN KEY (idClient) REFERENCES CLIENT(idClient));
REM Table CRENEAU créée.

CREATE TABLE RECHERCHE (
        idRecherche INT,
        prixMin INT,
        prixMax INT,
        tailleMin INT,
        tailleMax INT,
        idClient INT,
        PRIMARY KEY(idRecherche),
        FOREIGN KEY (idClient) REFERENCES CLIENT(idClient));
REM Table RECHERCHE créée.

CREATE TABLE VENTEAGENT(
        idPerso INT,
        annee INT,
        nbVente INT,
        benef INT,
        PRIMARY KEY(idPerso, annee),
        FOREIGN KEY (idPerso) REFERENCES PERSONNEL(idPersonnel));
REM Table VENTEAGENT créée.

REM Création des tables terminée.

