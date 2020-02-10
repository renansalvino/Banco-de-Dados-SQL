USE SenaiShop

INSERT INTO Loja (Nome, Endereco)
VALUES ('SenaiShop','Rua Alameda Barão de Limeira 534');

INSERT INTO Clientes (Nome)
VALUES ('Fernando'),('Helena');

INSERT INTO Categorias (Nome,idLoja)
VALUES ('Cursos', 1),('Acessórios',1);

INSERT INTO Subcategoria (Nome, idCategorias)
VALUES ('Informática Básica ',1),('Desenvolvimento',1),('Meio Ambiente',1),('Camisetas',2);

INSERT INTO Produtos (Nome,ValorT, idSub)
VALUES ('Copo Personalizado','25',3),('Jaqueta','100',4),('Excel Básico','350',1),('C#','700',2);

INSERT INTO Pedido (NumPedido, idCliente ,DataPedido,PedidoStatus)
VALUES ('123456',1,'2019/01/22','Em Andamento'), ('789101112',2,'2019/01/22','Entregue');

INSERT INTO PedidosProdutos (idPedido,idProdutos)
VALUES (1,1),(1,2),(2,3),(2,4);

SELECT*FROM Loja
SELECT*FROM Clientes
SELECT*FROM Categorias
SELECT*FROM Subcategoria
SELECT*FROM Produtos
SELECT DataPedido FROM Pedido
