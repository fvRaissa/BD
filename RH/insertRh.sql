USE bdRh 

INSERT tbDepto (nomeDepto)
VALUES ('Comercial')
	,('Diretoria')
	,('Rh')
	,('Tecnologia da Informação')
	,('Vendas')

SELECT * FROM tbDepto

INSERT tbProjeto(nomeProjeto, cargaHoraria)
VALUES ('Parcerias', '50')
     , ('Expanção da empresa', '100')
	 , ('Planos de carreiras', '20')
	 , ('Estratégias de vendas', '60')
	 , ('Pesquisas de satisfaçãos da empresa', '20')

	  SELECT * FROM tbProjeto

INSERT tbFuncionario(nomeFuncionario, cpfFuncionario, rgFuncionario, 
	dtNasctoFuncionario, salarioFuncionario, idDepto)
VALUES ('Edson Souza Silva', '111.111.111-11', '987654321',
	'27/07/1998', '2500.50', '1')
	, ('Luis Vieira Carvalho', '222.222.222-22', '876543219',
	'15/05/2001', '6900.44', '2')
	,('Edina Silva Bastos ', '333.333.333-33', '765432198',
	'11/02/1972', '4600.29', '3')
	, ('Gustavo Alves Cabral', '444.444.444-44', '654321987',
	'04/12/1993', '3500.10', '4')
    ,('Iraci Cristina Alvares', '555.555.555-55', '543219876',
	'08/06/1965', '2100.68', '5')

	SELECT * FROM tbFuncionario

INSERT tbFuncionarioProjeto(idFuncionario, idProjeto,  qtdeHoras)
VALUES ('2', '1', '25')
     , ('2', '2', '50')
	 , ('3', '5', '20')
	 , ('4', '2', '30')
	 , ('5', '4', '30')
	 , ('3', '3', '10')

	 SELECT * FROM tbFuncionarioProjeto

INSERT tbDependente(nomeDependente,dtNasctoDependente, idFuncionario)
VALUES ('João Andres Silva', '20/04/2020' ,'1')
     , ('Cauã Costa Cabral','25/06/2016' ,'4')
	 , ('Renan Costa Cabral','04/10/2019' ,'4')
	 , ('Paola Silva Rocha','09/12/2004' ,'3')
	 , ('Gabriel Cristina Couto','12/01/2003' ,'5')

	  SELECT * FROM tbDependente

INSERT tbConjuge(nomeConjuge, idFuncionario)
VALUES ('Maria Andres Gaetti Silva', '1')
     , ('Carla Jamily Brito Carvalho', '2')
	 , ('Roberto Gonçalves Rocha ', '3')
	 , ('Ana Costa Moura Cabral', '4')
	 , ('Matheus Evangelista Couto', '5')

	 SELECT * FROM tbConjuge

 INSERT tbFoneFuncionario(numFone, idFuncionario)
VALUES ('11912345678', '1')
     , ('11923456781', '2')
	 , ('11934567812', '3')
	 , ('11945678123', '4')
	 , ('11956781234', '5')

	 SELECT * FROM tbFoneFuncionario