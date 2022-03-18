CREATE DATABASE bdRh

USE bdRh 

CREATE TABLE tbDepto(
	idDepto INT PRIMARY KEY IDENTITY (1,1)
	, nomeDepto VARCHAR (50) NOT NULL
)

CREATE TABLE tbProjeto (
	idProjeto INT PRIMARY KEY IDENTITY (1,1)
	, nomeProjeto VARCHAR (50) NOT NULL
	, cargaHoraria INT NOT NULL
)


CREATE TABLE tbFuncionario (
	idFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR (60) NOT NULL
	, cpfFuncionario VARCHAR (14) NOT NULL
	, rgFuncionario VARCHAR (14) NOT NULL
	, salarioFuncionario SMALLMONEY NOT NULL
	, dtNasctoFuncionario SMALLDATETIME NOT NULL
	, idDepto INT FOREIGN KEY REFERENCES tbDepto (idDepto)
)

CREATE TABLE tbFuncionarioProjeto (
	idFuncionarioProjeto INT PRIMARY KEY IDENTITY (1,1)
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
	, idProjeto INT FOREIGN KEY REFERENCES tbProjeto (idProjeto)
	, qtdeHoras INT NOT NULL
)

CREATE TABLE tbDependente (
	idDependente INT PRIMARY KEY IDENTITY (1,1)
	, nomeDependente VARCHAR (60) NOT NULL
	, dtNasctoDependente SMALLDATETIME NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)

CREATE TABLE tbConjuge (
	idConjuge INT PRIMARY KEY IDENTITY (1,1)
	, nomeConjuge VARCHAR (60) NOT NULL
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)

CREATE TABLE tbFoneFuncionario (
	idFoneFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, numFone VARCHAR (12)
	, idFuncionario INT FOREIGN KEY REFERENCES tbFuncionario (idFuncionario)
)