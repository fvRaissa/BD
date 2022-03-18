CREATE DATABASE  bdCanil

USE bdCanil

CREATE TABLE tbCandidato (
	codCandidato INT PRIMARY KEY IDENTITY(1,1)
	, nomeCandidato VARCHAR(60) NOT NULL
	, cpfCandidato CHAR(14) NOT NULL
	, logradouroCandidato VARCHAR(50) NOT NULL
	, numLogCandidato INT NOT NULL
	, complCandidato VARCHAR(10)
	, bairroCandidato VARCHAR(30) NOT NULL
	, cepCandidato CHAR(9) NOT NULL
	,cidadeCandidato VARCHAR(25) NOT NULL
)


CREATE TABLE tbFoneCandidato(
	codFoneCandidato INT PRIMARY KEY IDENTITY(1,1)
	, numFoneCandidato VARCHAR (10) NOT NULL
	, codCandidadto INT FOREIGN KEY REFERENCES tbCandidato (codCandidato)
)


CREATE TABLE tbAdocao(
	codAdocao INT PRIMARY KEY IDENTITY(1,1)
	, codCandidato INT FOREIGN KEY REFERENCES tbCandidato (codCandidato)
	, dataAdocao  SMALLDATETIME NOT NULL
)

CREATE TABLE tbRaca(
	codRaca INT PRIMARY KEY IDENTITY(1,1)
	,nomeRaca VARCHAR (30) NOT NULL
)

CREATE TABLE   tbDog(
	codDog INT PRIMARY KEY IDENTITY(1,1)
	, nomeDog VARCHAR (60) NOT NULL
	, codRaca INT FOREIGN KEY REFERENCES tbRaca (codRaca)
	, idadeDog TINYINT NOT NULL
	, estadoDog VARCHAR (100) NOT NULL
)

CREATE TABLE tbAdocaoDog (
	codAdocaoDog INT PRIMARY KEY IDENTITY (1,1)
	, codAdocao INT FOREIGN KEY REFERENCES tbAdocao (codAdocao)
	, codDog INT FOREIGN KEY REFERENCES tbDog (codDog)
)

CREATE TABLE tbDoenca (
	codDoenca INT PRIMARY KEY IDENTITY(1,1)
	, nomeDoenca VARCHAR (30) NOT NULL
)

CREATE TABLE tbProntuario(
	codProntuario INT PRIMARY KEY IDENTITY(1,1)
	, codDog INT FOREIGN KEY REFERENCES tbDog (codDog)
	, codDoenca INT FOREIGN KEY REFERENCES tbDoenca (codDoenca)
)

CREATE TABLE tbVacina(
	codVacina INT PRIMARY KEY IDENTITY(1,1)
	, nomeVacina VARCHAR(30) NOT NULL 
)

CREATE TABLE tbCarteira(
	codCarteira INT PRIMARY KEY IDENTITY(1,1)
	, codDog INT FOREIGN KEY REFERENCES tbDog (codDog)
	, codVacina INT FOREIGN KEY REFERENCES tbVacina (codVacina)
	, dataAp SMALLDATETIME NOT NULL
)