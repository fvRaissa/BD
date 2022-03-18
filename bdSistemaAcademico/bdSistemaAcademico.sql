CREATE DATABASE bdSistemaAcademico
GO

USE bdSistemaAcademico

CREATE TABLE tbAluno(
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50) NOT NULL
	,dataNascAluno SMALLDATETIME NOT NULL
	,cpfAluno CHAR (11) NOT NULL
	)

CREATE TABLE tbCampus (
	idCampus INT PRIMARY KEY IDENTITY (1,1)
	,nomeCampus VARCHAR (30) NOT NULL
	)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (60)
	,cargaHorariaCurso INT
	)

CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1)
	, descTurma VARCHAR (10) NOT NULL
	, idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	, idCampus INT FOREIGN KEY REFERENCES tbCampus (idCampus)
	, numeAlunos INT NOT NULL
	, semestre INT NOT NULL
	, anoForma��o INT NOT NULL
	, numSala INT NOT NULL
	)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	, idTurma INT FOREIGN KEY REFERENCES tbtURMA (idTurma)
	, dtMatricula SMALLDATETIME NOT NULL
	)

CREATE TABLE tbDisciplina (
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	, nomeDisciplina VARCHAR (30) NOT NULL
	, cargaHorariaDisciplina INT
	)

CREATE TABLE tbProfessor (
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	, nomeProfessor VARCHAR (60)
	, dtNascProf SMALLDATETIME NOT NULL
	, rgProfessor VARCHAR (15)
	)

--associativa entre prof, disc e curso
CREATE TABLE tbAtribuicao (
	idAtribuicao INT PRIMARY KEY IDENTITY (1,1) 
	,dataAtribuicao SMALLDATETIME NOT NULL
	,idProfessor INT FOREIGN KEY REFERENCES tbProfessor (idProfessor)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
	,idDisciplina INT FOREIGN KEY REFERENCES tbDisciplina (idDisciplina)
	)



