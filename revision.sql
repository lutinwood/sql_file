DROP Type IF EXISTS serv CASCADE;
CREATE type serv AS ENUM ('Comm','SAV','Admin');

DROP Table IF EXISTS Personnels;
CREATE Table Personnels (
	NumEmploye integer PRIMARY KEY, 
	Nom	text,
	Service	serv,
	Grade 	text, 
	NomOrdinateur text
);
DROP Table IF EXISTS Ordinateurs;
CREATE Table Ordinateurs (
	NomOrdinateur text,
	NumFacture text,
	AdresseIP inet,
	Logiciel integer PRIMARY KEY
);
DROP Table IF EXISTS Logiciels;
CREATE Table Logiciels(
	Reflogiciel text PRIMARY KEY,
	Editeur	text,
	NomLogiciel text,
	NumLicence text,
	DateProchainRenouvellement date
);

INSERT INTO Personnels ( NumEmploye, Nom, Service, Grade, NomOrdinateur ) VALUES
	(1, 'Aaa', 'Comm', 'TC', 'ABC1'),
	(2, 'Bbb', 'SAV', 'AI', 'ABC2'),
	(3, 'Ccc', 'Comm', 'AI', 'ABC3'),
	(4, 'Ddd', 'Admin', 'IE', 'ABC4'),
	(5, 'Eee', 'SAV','AI','ABC5'),
	(6, 'Eee', 'SAV','AI','');

INSERT INTO Ordinateurs ( NomOrdinateur, Numfacture, AdresseIP, Logiciel ) VALUES
	('ABC1','Fact123','192.168.0.11',3),
	('ABC1','Fact123','192.168.0.11',1),
	('ABC2','Fact154','192.168.0.12',2),
	('ABC2','Fact154','192.168.0.12',4),
	('ABC3','Fact256','192.168.0.13',5),
	('ABC3','Fact256','192.168.0.13',6),
	('ABC4','Fact564',null,9),
	('ABC3','Fact256','192.168.0.13',7);


INSERT INTO Logiciels ( RefLogiciel, NomLogiciel , NumLicence, DateProchainRenouvellement ) VALUES
	(1,'Log1','123DF', '04/15/2010'),
	(2,'Log2','AFRC', '04/15/2010'),
	(3,'Log3','REF', '04/15/2010'),
	(4,'Log4','dsa45', '04/15/2010'),
	(5,'Log5','ADSfffr', '04/15/2009'),
	(6,'Log6','klmmo',null),
	(7,'Log7','fresa', '04/15/2010');
