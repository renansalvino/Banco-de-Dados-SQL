--DDL--
CREATE DATABASE Locadora

USE Locadora 

CREATE TABLE Empresa (
idEmpresa		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (200)
);

CREATE TABLE CLIENTE (
idCliente		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (200),
CPF				INT
);

CREATE TABLE MARCA (
idMarca		INT PRIMARY KEY IDENTITY,
Nome		VARCHAR (200)
);


CREATE TABLE Modelo (
idModelo		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR (200),
idMarca			INT FOREIGN KEY REFERENCES Marca (idMarca)
);

CREATE TABLE Veiculo (
idVeiculo		INT PRIMARY KEY IDENTITY,
Placa			INT,
idModelo		INT FOREIGN KEY REFERENCES Modelo (idModelo),
idEmpresa		INT FOREIGN KEY REFERENCES Empresa (idEmpresa)
);

CREATE TABLE Aluguel (
idAluguel		INT PRIMARY KEY IDENTITY,
DataInicio		DATE,
DataFim			DATE,
idCliente		INT FOREIGN KEY REFERENCES Cliente (idcliente),
idVeiculo		INT FOREIGN KEY REFERENCES Veiculo (idVeiculo)
);
ALTER TABLE Veiculo
ADD idEmpresa		INT FOREIGN KEY REFERENCES Empresa (idEmpresa);



SELECT * FROM Veiculo



