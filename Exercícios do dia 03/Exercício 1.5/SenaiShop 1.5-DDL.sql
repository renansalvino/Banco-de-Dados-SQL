CREATE DATABASE SenaiShop

USE SenaiShop


CREATE TABLE Clientes (
idCliente		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR(250)
);

CREATE TABLE Loja (
idLoja		INT PRIMARY KEY IDENTITY,
Nome		VARCHAR (250),
Endereco	VARCHAR (250)
);

CREATE TABLE Categorias (
idCategorias		INT PRIMARY KEY IDENTITY,
Nike				VARCHAR (250),
Lacoste				VARCHAR (250),
Jordan				VARCHAR (250)
idLoja				INT FOREIGN REFERENCES Loja (idLoja)
);

CREATE TABLE Subcategoria (
idSub		INT PRIMARY KEY IDENTITY,
Casual		VARCHAR (250),
Esportivo	VARCHAR(250),
Basquete	VARCHAR (250),
idCategorias	INT FOREIGN KEY REFERENCES Categorias (idCategorias)
);

CREATE TABLE Pedido (
idPedido		INT PRIMARY KEY IDENTITY,
ValorT					VARCHAR (250),
PedidoStatus			VARCHAR (250),
NumPedido				VARCHAR (250),
idCliente				INT FOREIGN KEY REFERENCES Cliente (idCliente),
idSub					INT FOREIGN KEY REFERENCES Subcategoria (idSub)
);

CREATE TABLE Produtos (
idProdutos		INT PRIMARY KEY IDENTITY,
Tenis			VARCHAR (250),
CortaVento		VARCHAR (250),
Camisa			
Camisa
);