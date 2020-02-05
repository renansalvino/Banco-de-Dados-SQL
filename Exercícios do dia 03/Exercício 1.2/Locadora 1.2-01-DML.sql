--DML--
USE Locadora


INSERT INTO MARCA (Nome)
VALUES ('Ford'),('GM'),('Fiat');

INSERT INTO CLIENTE (Nome,CPF)
VALUES ('Fernando','186.951.028-31'), ('Helena','528.349.198-60')

INSERT INTO Empresa (Nome)
VALUES ('Unidas'),('Localiza');

INSERT INTO Modelo (Nome,idMarca)
VALUES ('Fiesta','1'),('Onix','2'),('Argo','3');

INSERT INTO Veiculo (Placa,idModelo,idEMpresa)
VALUES ('KTS0546',1,1),('BPX3084',2,1),('MOC7519',3,2),('LPJ1996',1,2)

INSERT INTO Aluguel (DataInicio,DataFim,idCliente,idVeiculo)
VALUES ('2019/01/19','2019/01/20',2,1),
('2019/01/20','2019/01/22',2,2),
('2020/01/01','2020/01/15',3,3),
('2020/01/16','2020/01/25',3,2)

SELECT * FROM Aluguel
