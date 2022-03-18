USE bdLojaRoupas
-- 1
UPDATE tbFabricante
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3

SELECT * FROM tbFabricante
--2
UPDATE tbVenda 
SET totalVenda = totalVenda - (totalVenda * 0.1)
WHERE codVenda = 1

SELECT * FROM tbVenda 

--3
UPDATE tbProduto
SET preçoProduto = preçoProduto + (preçoProduto * 0.2)
WHERE codFabricante = 2

SELECT * FROM tbProduto

--4
UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3

SELECT * FROM tbProduto

--5
DELETE FROM tbItensVenda
WHERE codItensVenda = 4

SELECT * FROM tbItensVenda

--6
DELETE FROM tbItensVenda 
WHERE codVenda = 3

--7
DELETE tbFabricante
WHERE codFabricante = 1

-- Não consegui apagar o fabricante 1 porque ele esta em uso em alguma FK
