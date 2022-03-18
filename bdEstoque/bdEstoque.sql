CREATE DATABASE bdEstoque

USE bdEstoque

CREATE TABLE tbcliente (
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	,nomeCliente VARCHAR (60) NOT NULL
	,cpfCliente CHAR (14) NOT NULL
	,emailCliente VARCHAR (100) NOT NULL
	,sexoCliente VARCHAR (9) NOT NULL
	,dataNascimentoCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	,dataVenda SMALLDATETIME NOT NULL
	,valorTotalVenda SMALLMONEY NOT NULL
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
)

CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY (1,1)
	,nomeFabricante VARCHAR (60) NOT NULL
)

CREATE TABLE tbFornecedor(
	codFornecedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeFornecedor VARCHAR (60) NOT NULL
	,contatoFornecedor VARCHAR (50) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	,descProduto VARCHAR (100) NOT NULL
	,valorProduto SMALLMONEY NOT NULL
	,quantidadeProduto INT NOT NULL
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
	,codFornecedor INT FOREIGN KEY REFERENCES tbFornecedor (codFornecedor)
)

CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantidadeItensVenda INT NOT NULL
	,subTotalItensVenda SMALLMONEY NOT NULL
)

