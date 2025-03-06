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



-- catego	ENUM ('TabletTelefonia', 'Giocattoli', 'Elettronica', 'Arte', 'Immobili', 'Antiquariato')
-- tipo		ENUM('Asta inglese', 'Asta a tempo fisso')

