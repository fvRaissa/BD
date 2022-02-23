USE bdLivrariaBrasileira

SELECT COUNT (codLivro) 'O total de livros que começam com a letra P' FROM tbLivro
	WHERE (nomeLivro) LIKE 'P%'

SELECT MAX (numPaginas) 'O maior número de páginas entre todos os livros' FROM tbLivro

SELECT MIN (numPaginas) 'O menor número de páginas entre todos os livros' FROM tbLivro

SELECT AVG (numPaginas) 'A média de páginas entre todos os livros' FROM tbLivro

SELECT SUM (numPaginas) 'A soma do número de páginas dos livros de editora código 01' FROM tbLivro
	WHERE (codEditora) = 1

SELECT SUM (numPaginas) 'A soma dos números de páginas dos livros que começam com a letra A' FROM tbLivro
	WHERE (nomeLivro) LIKE 'A%'

SELECT AVG (numPaginas) 'A média dos números de páginas dos livros que sejam do autor código 03' FROM tbLivro
	WHERE (codAutor) = 3

SELECT COUNT (codLivro) 'A quantidade de livros da editora de código 04' FROM tbLivro
	WHERE (codEditora) = 4

SELECT AVG (numPaginas) 'A média do número de páginas dos livros que tenham a palavra “estrela” em seu nome' FROM tbLivro
	WHERE (nomeLivro) LIKE '%estrela%'

SELECT COUNT (codLivro) 'A quantidade de livros que tenham a palavra “poema” em seu nome' FROM tbLivro
	WHERE (nomeLivro) LIKE '%poema%'

SELECT COUNT (codLivro) 'A quantidade de livros do gênero Romance' FROM tbLivro
	WHERE (codGenero) = 1

SELECT AVG (numPaginas) 'A média do número de páginas do livro dos livros que tenham a letra A em seu nome' FROM tbLivro
	WHERE (nomeLivro) LIKE '%A%'
