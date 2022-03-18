USE bdLojaRoupas

INSERT tbCliente (nomeCliente, idadeCliente)
VALUES ('Maria do Carmo Ferreira', '58')
	,('Marcos Antonio De Paula', '46')
	,('Sergio Carvalho Mariano', '34')
	,('Paula Fernanda Andrade', '25')
	,('Gabriel Silva Santos', '24')

	SELECT * FROM tbCliente

INSERT tbVendedor (nomeVendedor)
VALUES ('João Santana')
	,('Raquel Torres')

	SELECT * FROM tbVendedor

INSERT tbFuncionario(nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES ('Regina De Souza Brito', '45', '25/05/2015', 1900.00)
	,('Diego Barreto Carvalho', '32', '06/07/2019', 1600.00)

	SELECT * FROM tbFuncionario

INSERT tbFabricante (nomeFabricante)
VALUES ('Malwee')
	,('Marisol')
	,('Cia da Malha')

	SELECT * FROM tbFabricante

INSERT tbProduto (nomeProduto, preçoProduto, dataEntradaProduto, 
	estoqueProduto, codFuncionario, codFabricante)
VALUES ('Camiseta masculina de algodão', 30.00, '25/04/2021',
	'100', 2, 1)
	,('camiseta feminina de algodão', 30.00,'25/04/2021',
	'120',1,1)
	,('Blusa moletom unissex', 60.00, '25/04/2021',
	'65', 2,1)

	,('Jaqueta jeans unissex', 65.00, '02/06/2021',
	'95', 2, 2)
	,('Blusa corta vento', 70.00, '02/06/2021', 
	'60', 2, 2)
	,('Cropped moletom', 40.00, '02/06/2021',
	'50', 1, 2)

	,('Camiseta de malha fria', 25.00, '11/05/2021',
	'100', 1, 3)
	,('Regata de malha fria', 25.00, '11/05/2021',
	'100', 1, 3)
	,('short tactel' , 30.00, '11/05/2021',
	'85', 1, 3)

	SELECT * FROM tbProduto
	
INSERT tbVenda (dataVenda, codCliente, codVendedor, totalVenda)
VALUES ('25/08/2021', 1, 1, 95.00)
      ,('26/08/2021', 2, 2 , 120.00)
	  ,('30/08/2021', 3, 1, 115.00)
	  ,('02/09/2021', 4, 2, 140.00)
	  ,('04/09/2021', 5, 1, 75.00)

	  SELECT * FROM tbVenda 


INSERT tbItensVenda (codVenda, codProduto, quantidadeItens, subTotalItens)
VALUES (1, 2, '1',30.00)
	,(1, 4, '1', 65.00)
	,(2, 1, '2', 60.00)
	,(2, 3, '1', 60.00)
	,(3, 5, '1', 70.00)
	,(3, 7, '3', 45.00)
	,(4, 6, '2', 80.00)
	,(4, 9, '2', 60.00)
	,(5, 7, '3', 45.00)
	,(5, 8, '2', 30.00)

	SELECT * FROM tbItensVenda