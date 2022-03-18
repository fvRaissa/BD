USE bdSistemaAcademico

INSERT tbAluno (nomeAluno,dataNascAluno,cpfAluno)
VALUES ('João da Silva Ribeiro','24/12/2001','11122233344')
	,('Maria Aparecida de Nobrega','11/05/1997','22233344455')
	,('Paulo Luis Santos','13/06/2003','33344455566')
	,('Roberta Miranda Calisto','28/01/2002','11122233344')

SELECT idAluno,nomeAluno,dataNascAluno,cpfAluno FROM tbAluno

INSERT tbCampus (nomeCampus)
VALUES ('Paulista')
	,('Prudente')
SELECT idCampus,nomeCampus FROM tbCampus

INSERT tbCurso (nomeCurso,cargaHorariaCurso)
VALUES ('Desenvolvimento de Sistemas', 300)
	,('Tecnologia em Redes', 350)
	,('Literatura avançada',400)
	,('Modelagem do Vestuário',340)
SELECT idCurso, nomeCurso, cargaHorariaCurso FROM tbCurso

INSERT tbTurma (descTurma, idCurso, idCampus, numeAlunos, semestre,anoFormação,numSala)
