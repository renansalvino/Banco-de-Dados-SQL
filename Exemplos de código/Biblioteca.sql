--DDL--
CREATE DATABASE Biblioteca

USE Biblioteca

CREATE TABLE Generos(
idGeneros		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (200)
);

CREATE TABLE Autores (
idAutores		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (200)
);

CREATE TABLE Livros (
idLivros		INT PRIMARY KEY IDENTITY,
Titulo			VARCHAR (200),
idAutores		INT FOREIGN KEY REFERENCES Autores (idAutores),
idGeneros		INT FOREIGN KEY REFERENCES Generos (idGeneros)
);

--DML--
INSERT INTO Autores (Nome)
VALUES ('Carlos Drummond de Andrade'),('Guimar�es Rosa'),('Clarice Lispector'),('Machado De Assis'),('Vin�cius de Moraes');

INSERT INTO Generos (Nome)
VALUES ('A��o'),('Romance'),('Drama'),('Poesias'),('Conto de fadas');

INSERT INTO Livros (Titulo,idAutores,idGeneros)
VALUES 