CREATE DATABASE Pessoas

USE Pessoas

CREATE TABLE Pessoas(
idPessoas	INT PRIMARY KEY IDENTITY,
Nome		VARCHAR (200)
);

CREATE TABLE EMails (
idEmails		INT PRIMARY KEY IDENTITY,
Descrição		VARCHAR(250),
idPessoas		INT FOREIGN KEY REFERENCES Pessoas (idPessoas)
);

CREATE TABLE CNHS (
idCNH		INT PRIMARY KEY IDENTITY,
Descrição	VARCHAR (250),
idPessoa	INT FOREIGN KEY REFERENCES Pessoas (idPessoas)
);

CREATE TABLE Telefones (
idTelefone		INT PRIMARY KEY IDENTITY,
Descrição		VARCHAR(200),
idPessoa		INT FOREIGN KEY REFERENCES Pessoas (idPessoas)
); 

INSERT INTO Pessoas (Nome)
VALUES ('João'), ('Renan'),('Estevão'),('Saulo'),('Carol');

INSERT INTO Emails (Descrição, idPessoas)
VALUES	('Jão@email.com',1),('renan@gmail.com',2),('Estevao@email.com',3),('Saulo@gmail.com',4),('carol@email.com',5);

INSERT INTO CNHS (Descrição,idPessoa)
VALUES ('41507706338',1),('95044993704',2),('68799191466',3),('40126423146',4),('78340940117',5);

INSERT INTO Telefones (Descrição,idPessoa)
VALUES	('
(15) 99903-3586',1),
		('
(41) 99735-7840',2),
		('
(63) 99271-5473',3),
		('
(42) 98608-4644',4),
		('
(37) 98696-9377',5);

--Exercício Extra --

SELECT Descrição FROM EMails 
WHERE idPessoas = 1;
-----------------------------

SELECT *FROM EMails

SELECT*FROM Pessoas

SELECT*FROM CNHS

SELECT*FROM Telefones