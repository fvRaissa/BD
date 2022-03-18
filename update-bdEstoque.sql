USE bdEstoque

--1
UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto * 0.1)
WHERE codFabricante = 1

SELECT valorProduto, codFabricante FROM tbProduto
WHERE codFabricante LIKE '1'

--2
UPDATE tbProduto 
SET valorProduto = valorProduto - (valorProduto * 7.0/100)
WHERE codFabricante = 2

SELECT valorProduto, codFabricante FROM tbProduto
WHERE codFabricante LIKE '2'

--3
UPDATE tbProduto 
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor = 1

SELECT quantidadeProduto, codFornecedor FROM tbProduto
WHERE codFornecedor = 1

--4
UPDATE tbCliente 
SET nomeCliente ='Adriana Nogueira Silva Campos'
WHERE codCliente = 5

SELECT nomeCliente FROM tbcliente
WHERE codCLiente LIKE '5'

--5
UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda - (valorTotalVenda *5.0/100)
WHERE dataVenda BETWEEN '01/02/2014' AND '28/02/2014'

SELECT valorTotalVenda, DataVenda FROM tbVenda
WHERE dataVenda BETWEEN '01/02/2014' AND '28/02/2014'

--6
DELETE FROM tbItensVenda
WHERE codProduto = 5

SELECT codItensVenda,codVenda,codProduto,quantidadeItensVenda,subTotalItensVenda FROM tbItensVenda

--7
UPDATE tbCliente
SET sexoCliente = 'fem'
WHERE sexoCliente LIKE 'f'

SELECT nomeCLiente,sexoCliente FROM tbCliente

--8
UPDATE tbCliente
SET sexoCliente = 'masc'
WHERE sexoCliente LIKE 'm'

SELECT nomeCLiente,sexoCliente FROM tbCliente

--9
UPDATE tbCliente
SET emailCliente = 'asantana@ig.com.br'
WHERE codCliente = 1

SELECT nomeCliente,emailCliente FROM tbCliente
WHERE codCliente LIKE 1

--10
UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - (quantidadeProduto *10/100)
WHERE codFabricante = 1

SELECT quantidadeProduto FROM tbProduto
WHERE codFabricante LIKE 1

--11
UPDATE tbProduto
SET valorProduto = valorProduto + (valorProduto *5.0/100)
WHERE descProduto LIKE 'Amaciante%'

SELECT descProduto, valorProduto FROM tbProduto
WHERE descProduto LIKE 'Amaciante%'

--12
UPDATE tbProduto 
SET valorProduto = valorProduto + (valorProduto *10/100)
WHERE descProduto LIKE '%Sadia%'

SELECT descProduto,valorProduto FROM tbProduto 
WHERE descProduto LIKE '%Sadia%'

--13
UPDATE tbProduto
SET valorProduto = valorProduto - (valorProduto *10/100)
WHERE descProduto LIKE '%Seda%'

SELECT descProduto,valorProduto FROM tbProduto 
WHERE descProduto LIKE '%Seda%'

--14
DELETE FROM tbCliente
WHERE codCLiente = 2

--não funcionou porque ela esta em uma chave primaria