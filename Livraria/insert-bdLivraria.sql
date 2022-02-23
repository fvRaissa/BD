USE bdLivrariaBrasileira

INSERT tbAutor (nomeAutor)
VALUES ('Machado de Assis')
	, ('Cora Coralina')
	, ('Graciliano Ramos')
	, ('Clarice Lispector')
	, ('Erico Verissimo')

INSERT tbEditora (nomeEditora)
VALUES ('Cia das Letras')
	, ('Atica')
	, ('Saraiva')

INSERT tbGenero (nomeGenero)
VALUES ('Romance')
	, ('Posia')
	, ('Literatura Brasileira')

SELECT * FROM tbGenero
SELECT * FROM tbAutor
SELECT * FROM tbEditora

INSERT tbLivro (nomeLivro, numPaginas, codGenero, codAutor, codEditora)
VALUES ('Papéis Avulsos' , 160, 3, 1, 1 )
	, ('Melhores poemas' , 160, 2, 1 ,1 )
	, ('Poesias Completas', 50, 2, 1, 1)
	, ('Poema do milho', 123, 2, 2, 1)
	, ('Poemas dos Becos de Goiás e Estórias Mais', 199, 2, 2, 1)
	, ('Melhores Poemas Cora Coralina', 209, 2, 2, 2)
	, ('Angústia', 93, 1, 3, 2)
	, ('Vidas secas', 71, 1, 3, 2)
	, ('Pequena História da República', 66, 3, 3, 2)
	, ('A Hora da Estrela', 87, 3, 4, 2)
	, ('A Paixão Segundo G.H.', 180, 1, 4, 3)
	, ('Todos os Contos', 97, 3, 4, 3)
	, ('Clarissa', 162, 1, 5, 3)
	, ('Caminhos cruzados' , 285, 1, 5, 3)
	, ('O tempo e o vento' , 656, 3, 5, 3) 

	SELECT * FROM tbLivro