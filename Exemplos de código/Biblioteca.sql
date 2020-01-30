-- Comentário --
-- Criação do banco de dados --
CREATE DATABASE Biblioteca_Tarde;
 --USE : é o caminho para o banco de dados para começar a construir (Lembrar em colocar para executar antes de começar o código --
USE Biblioteca_Tarde;
--Começar pela entidade que não tem ou a que menos tem as chaves estrangeiras pois uma depende da outra -- 
--Entidade no banco se chama tabela --
--Criar Tabela--
CREATE TABLE Autores (
	idAutor   INT PRIMARY KEY IDENTITY,--Escrevendo Chave primária -- 
	NomeAutor VARCHAR (200) NOT NULL   -- (NOT NULL) Serve para nao estar vazio, ou seja o usuário deve ser obrigado a escrever alguma coisa --
);
CREATE TABLE Generos (
	idGenero	INT PRIMARY KEY IDENTITY,
	Nome		VARCHAR(200) NOT NULL 
);
--Atributo se chama de coluna
CREATE TABLE Livros ( --Chave estrangeira sempre vem por ultimo para anão confundir --
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
	ADD Descrição  VARCHAR (255);


--Alterar Tipo de Dado
ALTER TABLE Generos
ALTER COLUMN Descrição CHAR (100);

--ALTERAR EXCLUIR COLUNA
ALTER TABLE Generos
DROP COLUMN Descrição;

--EXCLUIR
DROP TABLE Livros;
DROP TABLE Generos;
DROP TABLE Autores;

-- Excluir banco de dados
DROP DATABASE Biblioteca_Tarde;


