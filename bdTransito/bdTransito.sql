CREATE DATABASE bdTransito 
USE bdTransito

CREATE TABLE tbMotorista(
	codMotorista INT PRIMARY KEY IDENTITY(1,1)
	, nomeMotorista VARCHAR (60) NOT NULL
	, dataNascMotorista SMALLDATETIME NOT NULL
	, cpfMotorista CHAR (14) NOT NULL
	, CNHMotorista VARCHAR (10) NOT NULL
	, pontuacaoAcumulada INT NOT NULL
)

CREATE TABLE tbVeiculo(
	codVeiculo INT PRIMARY KEY IDENTITY(1,1)
	, modeloVeiculo VARCHAR (30) NOT NULL
	, placaVeiculo VARCHAR (7) NOT NULL
	, renavam VARCHAR (11) NOT NULL
	, anoVeiculo INT NOT NULL
	, codMotorista INT FOREIGN KEY REFERENCES tbMotorista (codMotorista)
)

CREATE TABLE tbMultas(
	codMulta INT PRIMARY KEY IDENTITY (1,1)
	, dataMulta DATETIME NOT NULL
	, horaMulta DATETIME NOT NULL
	, pontosMulta INT NOT NULL
	, codVeiculo INT FOREIGN KEY REFERENCES tbVeiculo (codVeiculo)
)

