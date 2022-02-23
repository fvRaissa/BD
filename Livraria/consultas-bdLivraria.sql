USE bdLivrariaBrasileira

SELECT COUNT (codLivro) 'O total de livros que come�am com a letra P' FROM tbLivro
	WHERE (nomeLivro) LIKE 'P%'

SELECT MAX (numPaginas) 'O maior n�mero de p�ginas entre todos os livros' FROM tbLivro

SELECT MIN (numPaginas) 'O menor n�mero de p�ginas entre todos os livros' FROM tbLivro

SELECT AVG (numPaginas) 'A m�dia de p�ginas entre todos os livros' FROM tbLivro

SELECT SUM (numPaginas) 'A soma do n�mero de p�ginas dos livros de editora c�digo 01' FROM tbLivro
	WHERE (codEditora) = 1

SELECT SUM (numPaginas) 'A soma dos n�meros de p�ginas dos livros que come�am com a letra A' FROM tbLivro
	WHERE (nomeLivro) LIKE 'A%'

SELECT AVG (numPaginas) 'A m�dia dos n�meros de p�ginas dos livros que sejam do autor c�digo 03' FROM tbLivro
	WHERE (codAutor) = 3

SELECT COUNT (codLivro) 'A quantidade de livros da editora de c�digo 04' FROM tbLivro
	WHERE (codEditora) = 4

SELECT AVG (numPaginas) 'A m�dia do n�mero de p�ginas dos livros que tenham a palavra �estrela� em seu nome' FROM tbLivro
	WHERE (nomeLivro) LIKE '%estrela%'

SELECT COUNT (codLivro) 'A quantidade de livros que tenham a palavra �poema� em seu nome' FROM tbLivro
	WHERE (nomeLivro) LIKE '%poema%'

SELECT COUNT (codLivro) 'A quantidade de livros do g�nero Romance' FROM tbLivro
	WHERE (codGenero) = 1

SELECT AVG (numPaginas) 'A m�dia do n�mero de p�ginas do livro dos livros que tenham a letra A em seu nome' FROM tbLivro
	WHERE (nomeLivro) LIKE '%A%'
