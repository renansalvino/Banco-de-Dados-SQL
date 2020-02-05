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
Localiza��o VARCHAR (200),
Visualizacao INT,
idArtista INT FOREIGN KEY REFERENCES Artistas (idArtistas),
idEstilo INT FOREIGN KEY REFERENCES Estilos (idEstilos),
);
SELECT * FROM Estilos
SELECT * FROM Albuns


-- DML LINGUAGEM DE MANIPULA��O DE DADOS --
SELECT * FROM Estilos; --j� foi
SELECT * FROM Artistas; -- ok
SELECT * FROM TipoUsuario;
SELECT * FROM Usuarios;
SELECT * FROM Albuns; -- ok

SELECT Nome, IdTipoUsuario
FROM Usuarios
WHERE Nome IS NOT NULL


--Inserir dados na tabela--
INSERT INTO Estilos (NomeEstilo)
VALUES  ('Samba'), ('Rap'), ('Trap'), ('Pop'),('MPB');

INSERT INTO Artistas (Nome)
VALUES ('Travis Scott'), ('LIL PUMP'), ('Fulano de Tal'), ('Jefferson'),('Jordan');

INSERT INTO Albuns (Nome, Datalancamento, QtdMinutos,Localiza��o, Visualizacao,idArtista,idEstilo)
Values ('JackBoys', '29/01/2020',120, 'Texas', 200000,1,2),
('Lil Pump', '21/01/2019',200, 'LA (EUA)',  1000000,2 ,2),
('Forr� de quintal', '20/01/2002',10,'MG',105,3,1),
('Cachorro dos mano', '25/01/1998', 100, 'Canil das esquina do seu j�o',1000,4,4),
('JordanBoyz', '22/01/1999', 2010, 'EUA', 20000, 5, 2);



INSERT INTO TipoUsuario (Titulo)
VALUES ('Admin Principal'),('Deficiencia pessoal'), ('Admin 2'), ('Cliente Comum'), ('Dono De Tudo');

INSERT INTO Usuarios (Nome,IdTipoUsuario)
VALUES ('Renan',1),('Romeu', 2),('Saulo', 3),('Carol',3),('Deus',5),('Mano Bona',4);

ALTER TABLE Usuarios 
ADD Naoseioque	VARCHAR(250);

ALTER TABLE		Usuarios
DROP COLUMN		Naoseioque, S�ParaTeste;

ALTER TABLE Usuarios
ALTER COLUMN	Naoseioque	DATE;	


		
		

DELETE FROM Artistas
WHERE idArtistas = 13

-- DQL LINGUAGEM DE CONSULTA DE DADOS--
-- tabela inteira --
 SELECT * FROM Artistas;
 --Selecionar atributos especiicos
 SELECT Nome From Artistas;

 SELECT Nome, Datalancamento FROM Albuns;

 Select * FROM Albuns Where idArtista = 2;

 SELECT * FROM Albuns
 WHERE  Datalancamento = 2020;




 
 -- Operadores < > = --
 SELECT * FROM Albuns WHERE idAlbum = 1
  -- mostra todos menos o primeiro id --
 SELECT * FROM Albuns WHERE idAlbum > 1;

 -- OR OU --
 SELECT Nome, QtdMinutos FROM Albuns
 WHERE (Datalancamento IS NULL) or (Localiza��o IS NULL)
 
-- lIKE de compara��o de texto
SELECT idAlbum, Nome FROM Albuns
WHERE Nome LIKE '%JackBoys%' -- meioda frase ou em qualquer merda de lugar


-- ORDENA��O
-- Se colocar no VARCHAR ser� em ordem alfabetica se for int ou qualquer tipo de carcter num�rico sera do menor para o maior 

SELECT Nome FROM Albuns
ORDER BY Nome;

SELECT idAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos;

-- Ordena��o invertida ( Do maior para o menor)
SELECT idAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos DESC;

SELECT idAlbum, Nome, QtdMinutos FROM Albuns
ORDER BY QtdMinutos ASC;

-- Count

SELECT COUNT (idAlbum) FROM Albuns;]

UPDATE Artistas
SET Nome = 'Leozin'
WHERE idArtistas = 2;

UPDATE TipoUsuario
SET Titulo = 'Admin'
WHERE idTipoUsuario = 4;

UPDATE Albuns
SET Visualizacao = '1000'
WHERE idAlbum =  1;




