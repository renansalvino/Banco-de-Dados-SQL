CREATE DATABASE StyleSong

USE StyleSong

CREATE TABLE Estilos (
	idEstilos INT PRIMARY KEY IDENTITY,
	NomeEstilo	VARCHAR (200) NOT NULL
);
CREATE TABLE Artistas (
idArtistas INT PRIMARY KEY IDENTITY,
Nome VARCHAR (200) NOT NULL
);
CREATE TABLE TipoUsuario (
idTipoUsuario INT PRIMARY KEY IDENTITY,
Titulo VARCHAR (200) NOT NULL
);

CREATE TABLE Usuarios (
idUsuario INT PRIMARY KEY IDENTITY,
Nome  VARCHAR (200),
IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (idTipoUsuario)
);
CREATE TABLE Albuns (
idAlbum INT PRIMARY KEY IDENTITY,
Nome VARCHAR (200) NOT NULL ,
Datalancamento DATE,
QtdMinutos INT,
Localização VARCHAR (200),
Visualizacao INT,
idArtista INT FOREIGN KEY REFERENCES Artistas (idArtistas),
idEstilo INT FOREIGN KEY REFERENCES Estilos (idEstilos),
);
SELECT * FROM Estilos
SELECT * FROM Albuns


-- DML LINGUAGEM DE MANIPULAÇÃO DE DADOS --
SELECT * FROM Estilos; --já foi
SELECT * FROM Artistas; -- ok
SELECT * FROM TipoUsuario;
SELECT * FROM Usuarios;
SELECT * FROM Albuns; -- ok
--Inserir dados na tabela--
INSERT INTO Estilos (NomeEstilo)
VALUES  ('Samba'), ('Rap'), ('Trap'), ('Pop');

INSERT INTO Artistas (Nome)
VALUES ('Travis Scott'), ('LIL PUMP'), ('Fulano de Tal'), ('Jefferson'),('Jordan');

INSERT INTO Albuns (Nome, Datalancamento, QtdMinutos,Localização, Visualizacao,idArtista,idEstilo)
Values ('JackBoys', '29/01/2020',120, 'SP', 2,2,1);

INSERT INTO TipoUsuario (Titulo)
VALUES ('Admin'),('Deficiencia pessoal'), ('Cliente Comum'), ('Cliente Comum'), ('Dono De Tudo');

INSERT INTO Usuarios (Nome,IdTipoUsuario)
VALUES ('Renan',1),('Romeu', 2),('Saulo', 3),('Carol',4),('Deus',5);


		
		

DELETE FROM Artistas
WHERE idArtistas = 13

