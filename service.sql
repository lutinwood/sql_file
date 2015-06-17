DROP table IF EXISTS services, agents, tickets CASCADE;
create table services(
	NUM_SERVICE integer PRIMARY KEY,
	Libellé text);

create table agents (
	EMP_ID integer PRIMARY KEY,
	NUM_SERVICE integer REFERENCES services,
	Nom text, 
	Prenom text, 
	Date_de_naissance date);

create table tickets (
	NUM_TICKET integer PRIMARY KEY,
	EMP_ID integer REFERENCES agents,
	Titre text,
	Description text, 
	Reponse text,
	DATE_OUVERTURE date,
	DATE_FERMETURE date);
	 
INSERT INTO services (NUM_SERVICE,Libellé) VALUES
	(1,'Compta'),
	(2,'Recherche'),
	(3,'Peda');

INSERT INTO agents (EMP_ID, NUM_SERVICE, Nom, Prenom, Date_de_naissance) VALUES
	(20, 1, 'LENNON','John', '04/03/1940'),
	 (21, 2, 'LENNON','Pricilia', '04/03/1950'),
	(23, 2, 'ORANGE','Prince', '04/03/1956'),
	(22, 3, 'STRAWBERRY','Paul', '04/03/1956'),
	(25, 3, 'COFFEE','Arthur', '04/03/1936'),
	(26, 3, 'SUGAR','Aline', '04/03/1966');

INSERT INTO tickets (NUM_TICKET, EMP_ID, TITRE, DESCRIPTION, Reponse, DATE_OUVERTURE, DATE_FERMETURE) VALUES
	(1, 20, 'HELL INTERNET', 'My browser does not give me acces to the world',
	'did you plug your cable' , '07/07/2014', '08/08/2014'),
	(2, 20, 'HELL INTERNET back again', 'I still do not get internet',
        'buy yourself a head' , '07/07/2014', null),
	(3, 21, 'out of paper', 'Printer of the first floor out of paper',
        'I will filled up on monday have a good week end' , '07/07/2014', null),
	(4, 21, ' STILL out of paper', 'SAME Printer of the first floor out of paper',
        'Print in monday I am telling you' , '07/07/2014', null),
	(5, 22, 'Dead Mouse', 'My microsoft Mouse died ! Could i get a new one ?',
        'Use your keyboard instead' , '07/07/2014', null),
	(6, 23, 'Virus around', 'My computer is having some strange behaviour',
        'happen often durin summer' , '07/07/2014', null),
	(7, 25, 'Space required', 'My hard drive is getting full',
        'Delete unsused stuff buddy' , '07/07/2014', null),
	(8, 25, 'new computer ', 'My computer is getting really slow could i get a new one ',
        'Wait about 6 month chrismas will come' , '07/07/2014', null),
	(9, 26, 'Facebook update', 'Could you help me to update my facebook page',
        'Yes for shure I will come in a sec' , '07/07/2014', '07/07/2014');
		
