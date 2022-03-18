CREATE DATABASE bdEscola 
DROP DATABASE bdEscola
USE bdEscola 

CREATE TABLE tbCurso (
	codCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (60) NOT NULL
	,cargahorariaCurso VARCHAR (10) NOT NULL
	,valorCurso SMALLMONEY NOT NULL
)

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (60) NOT NULL
	,dataNascAluno SMALLDATETIME NOT NULL
	,rgAluno VARCHAR (12) NOT NULL
	,naturalidadeAluno VARCHAR (60)NOT NULL
)

CREATE TABLE tbTurma (
	codTurma INT PRIMARY KEY IDENTITY (1,1)
	, nomeTurma VARCHAR (40) NOT NULL
	, codCurso INT FOREIGN KEY REFERENCES tbCurso (codCurso)
	, horarioTurma DATETIME NOT NULL
)

CREATE TABLE tbMatricula(
	codMatricula INT PRIMARY KEY IDENTITY(1,1)
	, dataMatricula SMALLDATETIME NOT NULL
	, codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
	, codTurma INT FOREIGN KEY REFERENCES tbTurma (codTurma)
)

