-- Coment�rio --
-- Cria��o do banco de dados --
CREATE DATABASE Biblioteca_Tarde;
 --USE : � o caminho para o banco de dados para come�ar a construir (Lembrar em colocar para executar antes de come�ar o c�digo --
USE Biblioteca_Tarde;
--Come�ar pela entidade que n�o tem ou a que menos tem as chaves estrangeiras pois uma depende da outra -- 
--Entidade no banco se chama tabela --
--Criar Tabela--
CREATE TABLE Autores (
	idAutor   INT PRIMARY KEY IDENTITY,--Escrevendo Chave prim�ria -- 
	NomeAutor VARCHAR (200) NOT NULL   -- (NOT NULL) Serve para nao estar vazio, ou seja o usu�rio deve ser obrigado a escrever alguma coisa --
);
CREATE TABLE Generos (
	idGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL 
);
--Atributo se chama de coluna
CREATE TABLE Livros ( --Chave estrangeira sempre vem por ultimo para an�o confundir --
	idLivro		INT PRIMARY KEY IDENTITY,
	Titulo		VARCHAR(255),
	idKobe 		INT FOREIGN KEY REFERENCES Autores (idAutor), -- Declarando uma chave estrangeira --
	idGenero	INT FOREIGN KEY REFERENCES Generos (idGenero),
);
SELECT * FROM Generos;
SELECT * FROM Autores;
SELECT * FROM Livros;
--ALTERAR Adicionar uma nova coluna
ALTER TABLE Generos
	ADD Descri��o  VARCHAR (255);


--Alterar Tipo de Dado
ALTER TABLE Generos
ALTER COLUMN Descri��o CHAR (100);

--ALTERAR EXCLUIR COLUNA
ALTER TABLE Generos
DROP COLUMN Descri��o;

--EXCLUIR
DROP TABLE Livros;
DROP TABLE Generos;
DROP TABLE Autores;

-- Excluir banco de dados
DROP DATABASE Biblioteca_Tarde;


