USE bdEstoque

--a)
SELECT descProduto,nomeFabricante FROM  tbProduto
	INNER JOIN tbFabricante
		ON tbProduto.codFabricante = tbFabricante.codFabricante

--b)
SELECT descProduto,nomeFornecedor FROM tbProduto
	INNER JOIN tbFornecedor 
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--c)
SELECT nomeFabricante, SUM (tbProduto.codProduto)as 'Soma da quantidade dos produtos por fabricante' FROM tbFabricante
	INNER JOIN tbProduto
		ON tbProduto.codFabricante = tbFabricante.codFabricante
			GROUP BY  tbFabricante.nomeFabricante

--d)
SELECT nomeCliente, SUM (tbVenda.codVenda) as 'Compras feitas pelo cliente' FROM tbcliente
	INNER JOIN tbVenda
		ON tbVenda.codCliente = tbcliente.codCliente
			GROUP BY tbcliente.nomeCliente

--e)
SELECT nomeFornecedor, AVG (tbProduto.valorProduto)as'Media dos preços de cada fornecedor' FROM tbFornecedor
	INNER JOIN tbProduto
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
			GROUP BY tbFornecedor.nomeFornecedor

--f)
SELECT nomeCliente, SUM (tbVenda.codVenda) as 'Compras feitas pelo cliente' FROM tbcliente
	INNER JOIN tbVenda
		ON tbVenda.codCliente = tbcliente.codCliente
			GROUP BY tbcliente.nomeCliente 
				ORDER BY  nomeCliente

--g)
SELECT nomeFabricante, SUM (tbProduto.valorProduto) as 'Soma dos preços dos produtos por fabricante' FROM tbFabricante
	INNER JOIN tbProduto
		ON tbProduto.codFabricante = tbFabricante.codFabricante
			GROUP BY tbFabricante.nomeFabricante

--h)
SELECT nomeFornecedor, AVG (tbProduto.valorProduto) as 'Média dos preços dos produtos por fonecedor' FROM tbFornecedor
	INNER JOIN tbProduto
		ON tbProduto.codFornecedor = tbFornecedor.codFornecedor
			GROUP BY tbFornecedor.nomeFornecedor

--i)
SELECT descProduto, SUM (tbVenda.valorTotalVenda) as 'Valor das vendas por nome do produto' FROM tbProduto
	INNER JOIN tbItensVenda
		ON tbItensVenda.codProduto = tbProduto.codProduto
			INNER JOIN tbVenda
				ON tbItensVenda.codVenda = tbVenda.codVenda
					GROUP BY tbProduto.descProduto

--j)
SELECT nomeCliente, SUM  (tbVenda.valorTotalVenda) 'Soma das compras das vendas feitas em 02/2014 por cliente' FROM tbcliente
	INNER JOIN tbVenda
		ON tbVenda.codCliente = tbcliente.codCliente
			WHERE MONTH (dataVenda) = 02
			AND YEAR (dataVenda) = 2014
			GROUP BY tbcliente.nomeCliente


				