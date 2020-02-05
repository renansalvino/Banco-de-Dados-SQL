USE PClinics

--DML--

INSERT INTO Clinica (RazaoSocial,Endereco)
VALUES ('Clinica Veterinária','Alameda Barão de Limeira, 532')

INSERT INTO Dono (Nome)
VALUES ('Carol'),('Saulo')

INSERT INTO TipoPet (Titulo)
VALUES ('Cachorro'),('Gato')

INSERT INTO Raca (Titulo,idTipoPet)
VALUES ('Vira Lata',1),('Persa',2)

INSERT INTO Veterinario (Nome,CRMV,idClinica)
VALUES ('Renan','184',1)

INSERT INTO Pet (Nome,Telefone,idRaca,idDono)
VALUES ('Jefferson','4002-8922',1,1),('Irineu','1234-56789',2,2)

INSERT INTO Atedimento (idVet,idPet,DataAtendimento,Descricao)
VALUES (1,2,'2020/01/27','Câncer'),(1,2,'2020/01/28','Foi a óbito')