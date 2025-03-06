-- i cambiamento che ci sono stati:

-- Utente.isAmministratore tolto
-- utente.FotoProfilo aumentato: 300 -> 1000
-- utente.Biografia aumentato: 300 -> 1000
-- utente.notifiche_fk eliminato 
-- asta.Descrizione aumentato: 130 -> 1000 
-- concorrentiUtenteAsta: tolto  ( partecipazioneUtenteAsta ha vinto se a te sta bene )
-- eliminata tabella recensione
-- add column notifiche.id_utente_fk 

-- quindi droppa lo schema e esequi questo
-- nota per il futuro, non si puo continuare a droppare XD


CREATE TABLE IF NOT EXISTS auctionlinedb.asta 
(
	Titolo VARCHAR(30) NOT NULL,
	Descrizione VARCHAR(1000), -- fix
	Categoria ENUM ('TabletTelefonia', 'Giocattoli', 'Elettronica', 'Arte', 'Immobili', 'Antiquariato'),
	Tipologia ENUM('Asta inglese', 'Asta a tempo fisso'),
	DataInizio DATETIME NOT NULL,
	DataFine DATETIME NOT NULL,
	OffertaPiuAlta float,
	FotoAsta1 varchar(500), 
  
	ID_asta INT AUTO_INCREMENT NOT NULL,
	Proprietario_FK int NOT NULL,
    
	PRIMARY KEY (ID_asta)
    
  );


CREATE TABLE IF NOT EXISTS auctionlinedb.partecipazioneUtenteAsta
(
	ID_Utente INT,
    ID_Asta INT,
    
	PRIMARY KEY (ID_Utente, ID_Asta)
	
);

CREATE TABLE IF NOT EXISTS auctionlinedb.utente 
(
	Nome VARCHAR(30) NOT NULL,
	Cognome VARCHAR(30) NOT NULL,
	Biografia VARCHAR(1000), -- fix
 	Geolocalizzazione VARCHAR(50) ,
 	ElencoSocial VARCHAR(30),
 	FotoProfilo VARCHAR(1000), -- fix
	EmailUtente varchar(40),
 	PasswordUtente varchar(30),

	ID_Utente INT AUTO_INCREMENT NOT NULL,
  
  	PRIMARY KEY (ID_Utente)
  
  );
  
CREATE TABLE IF NOT EXISTS auctionlinedb.notifiche 
(
	Testo varchar(50) NOT NULL,
    	
	ID_notifiche INT AUTO_INCREMENT NOT NULL,
    id_utente_fk int, -- add

	PRIMARY KEY (ID_notifiche)
);
    

ALTER TABLE auctionlinedb.ASTA
add FOREIGN KEY (Proprietario_FK) REFERENCES auctionlinedb.utente(ID_Utente);

ALTER TABLE auctionlinedb.partecipazioneUtenteAsta
add FOREIGN KEY (ID_Asta) REFERENCES asta(ID_Asta),
add FOREIGN KEY (ID_Utente) REFERENCES utente(ID_Utente);

ALTER TABLE auctionlinedb.notifiche
add FOREIGN KEY (id_utente_fk) REFERENCES utente(ID_Utente);




-- popolamento db

INSERT INTO auctionlinedb.utente ( Nome,Cognome,Biografia,Geolocalizzazione,ElencoSocial,FotoProfilo,EmailUtente,PasswordUtente) VALUES(	"Marco"		,"DePretis"	,"giovane disoccupato"		,"Napoi, Na"		,"Fackebook, Mastodon"	,null,"marcodepretis44@gmail.com","lamiapassword44");
INSERT INTO auctionlinedb.utente ( Nome,Cognome, Biografia,Geolocalizzazione,ElencoSocial,FotoProfilo,EmailUtente,PasswordUtente) VALUES(	"Francesco","Rogo"		,"giovane studente"			,"Padova, Pa"		,"Mastodon"				,null,"frnacescorogo123@gmail.com","lamiapassword33");
INSERT INTO auctionlinedb.utente ( Nome,Cognome,Biografia,Geolocalizzazione,ElencoSocial,FotoProfilo,EmailUtente,PasswordUtente) VALUES(	"Luisa"		,"Amodeo"	,"giovane della terza età"	,"Napoi, Na"		,"Fackebook, twitter"	,null,"luisaamodeo09@gmail.com","lamiapassword11");
INSERT INTO auctionlinedb.utente ( Nome,Cognome, Biografia,Geolocalizzazione,ElencoSocial,FotoProfilo,EmailUtente,PasswordUtente) VALUES(	"Alex",		"Madonna"	,"Anziana esploratricce"	,"Gelusalemme, G"	,"X"					,null,"mammacar@gmail.xxx","lamiapassword22");
INSERT INTO auctionlinedb.utente ( Nome,Cognome,EmailUtente,PasswordUtente) VALUES("Massimo"	,"Coopenaghen"	,"lamiacoop@gmail.ur"	,"pisswordmeoff");
INSERT INTO auctionlinedb.utente ( Nome,Cognome,EmailUtente,PasswordUtente) VALUES("Antonio"	,"Luongo"		,"ilportiere@gmail.ur"	,"parmstepasword");
INSERT INTO auctionlinedb.utente ( Nome,Cognome,EmailUtente,PasswordUtente) VALUES("Lucrezia"	,"Zerlenga"		,"maiazod@gmail.it"		,"superpasword");
INSERT INTO auctionlinedb.utente ( Nome,Cognome) VALUES("Roberto","Roberto");
INSERT INTO auctionlinedb.utente ( Nome,Cognome) VALUES("MariaLucia","DeSimone");
INSERT INTO auctionlinedb.utente ( Nome,Cognome) VALUES("Voldemort","Serpeverde");



INSERT INTO auctionlinedb.ASTA (Titolo,Descrizione,Categoria,Tipologia,DataInizio,DataFine,OffertaPiuAlta,FotoAsta1,Proprietario_FK)  VALUES("Maouse MSI"				,"Ottimo strumento per destrorsi e mancini, 18,7 tasti modulabili e riutilizzabili"							,'Elettronica','Asta a tempo fisso'	,"2023-3-4 2:30:00"	,"2024-5-1 1:30:00"	,100,null	,1);
INSERT INTO auctionlinedb.ASTA (Titolo,Descrizione,Categoria,Tipologia,DataInizio,DataFine,OffertaPiuAlta,FotoAsta1,Proprietario_FK) VALUES("Bici di Sergio DiMartino"	,"Ottima bici Elettrica in condizioni pre-acquisto, nessun professore è stato ferito durante il proecsso"	,'Antiquariato','Asta inglese'		,"2024-5-1 1:30:00"	,"2025-5-1 11:30:00",2500,null	,2); 
INSERT INTO auctionlinedb.ASTA (Titolo,Categoria,Tipologia,DataInizio,DataFine,Proprietario_FK) VALUES('Seggiolo'		,'Antiquariato','Asta a tempo fisso',"2023-12-31 12:30:00"	,"2024-5-31 12:30:00",5);
INSERT INTO auctionlinedb.ASTA (Titolo,Categoria,Tipologia,DataInizio,DataFine,Proprietario_FK) VALUES("Aspirapolvere"	,'Elettronica','Asta a tempo fisso',"2023-12-31 14:30:00"	,"2024-1-31 18:20:10",3);
INSERT INTO auctionlinedb.ASTA (Titolo,Categoria,Tipologia,DataInizio,DataFine,Proprietario_FK) VALUES("Monnalisa"		,'Arte','Asta inglese',"2024-1-22 1:9:40"		,"2024-1-28 18:20:10",8);
INSERT INTO auctionlinedb.ASTA (Titolo,Categoria,Tipologia,DataInizio,DataFine,Proprietario_FK) VALUES('Casse Boose'		,'Elettronica','Asta inglese',"2023-12-31 12:30:00"	,"2024-5-31 12:30:00",1);
INSERT INTO auctionlinedb.ASTA (Titolo,Categoria,Tipologia,DataInizio,DataFine,Proprietario_FK) VALUES("Aspirapolvere 3k",'Elettronica','Asta a tempo fisso',"2023-12-31 14:30:00"	,"2024-1-31 18:20:10",6);
INSERT INTO auctionlinedb.ASTA (Titolo,Categoria,Tipologia,DataInizio,DataFine,Proprietario_FK) VALUES("Laptop Alien"	,'TabletTelefonia','Asta inglese',"2024-1-22 1:9:40"		,"2024-1-28 18:20:10",7);



INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx aggoiranta", 1);
INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx finita", 2);
INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx finita", 2);
INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx aggoiranta", 4);
INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx aggoiranta", 5);
INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx aggoiranta", 6);
INSERT INTO auctionlinedb.notifiche (Testo,id_utente_fk) VALUES("Asta xxx aggoiranta", 7);



INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(1, 2);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(1, 3);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(1, 4);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(1, 5);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(2, 1);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(4, 1);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(4, 2);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(9, 4);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(8, 4);
INSERT INTO auctionlinedb.partecipazioneutenteasta (ID_Utente,ID_Asta) VALUES(9, 2);

