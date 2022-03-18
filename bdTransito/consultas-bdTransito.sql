USE bdTransito

--A
SELECT COUNT (codMotorista) 'Quantos motoristas existem no banco de dados' FROM tbMotorista

--B
SELECT COUNT (codMotorista) 'Quantos motoristas possuem Silva no sobrenome' FROM tbMotorista 
	WHERE (nomeMotorista) LIKE '%Silva%'

--C
SELECT COUNT (codMotorista) 'Quantos motoristas nasceram no ano 2000' FROM tbMotorista
	WHERE YEAR (dataNascMotorista) = '2000'

--D
SELECT COUNT (codMotorista) 'Quantos motoristas possuem mais de 10 pontos de pontuação acumulada' FROM tbMotorista
	WHERE (pontuacaoAcumulada) > 10

--E
SELECT SUM (pontuacaoAcumulada) 'A somatória da pontuação de todos os motoristas' FROM tbMotorista

--F
SELECT AVG (pontuacaoAcumulada) 'A média de pontuação de todos os motoristas' FROM tbMotorista

--G
SELECT COUNT (codVeiculo) 'Quantos veículos o motorista de código 1 possui' FROM tbVeiculo
	WHERE (codMotorista) = 1

--H
SELECT COUNT (codVeiculo) 'Quantos veículos a placa começa com A' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE 'A%' 

--I
SELECT COUNT (codVeiculo) 'Quantos veículos foram fabricados antes de 2010' FROM tbVeiculo
	WHERE  (anoVeiculo)  < 2010

--J
SELECT AVG (anoVeiculo) 'A média do ano de fabricação de todos os veículos' FROM tbVeiculo

--K
SELECT COUNT (codVeiculo) 'A quantidade dos veículos que tenham a palavra Sedan em seu modelo' FROM tbVeiculo
	WHERE (modeloVeiculo) LIKE '%Sedan%'

--L 
SELECT SUM (pontosMulta) 'A somatória dos pontosMulta do veículo de id 02' FROM tbMultas
	WHERE (codVeiculo) = 2

--M
SELECT AVG (pontosMulta) 'A média de pontosMulta entre todas as multas aplicadas' FROM tbMultas 

--N
SELECT COUNT (codMulta) 'A quantidade de multas aplicadas no mês de abril de 2018' FROM tbMultas
	WHERE (dataMulta) BETWEEN '01/04/2018' AND '30/04/2018'

--O
SELECT COUNT (codVeiculo) 'A quantidade de veículos cuja placa termine com o número 1 ou 2' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%1' OR (placaVeiculo) LIKE '%2' 

--P
SELECT COUNT (codVeiculo) 'A quantidade de veículos cuja placa termine com o número 3 ou 4' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%3' OR (placaVeiculo) LIKE '%4' 

--Q
SELECT COUNT (codVeiculo) 'A quantidade de veículos cuja placa termine com o número 5 ou 6' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%5' OR (placaVeiculo) LIKE '%6' 
--R
SELECT COUNT (codVeiculo) 'A quantidade de veículos cuja placa termine com o número 7 ou 8' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%7' OR (placaVeiculo) LIKE '%8' 
--S
SELECT COUNT (codVeiculo) 'A quantidade de veículos cuja placa termine com o número 9 ou 0' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%9' OR (placaVeiculo) LIKE '%0' 

--T
SELECT COUNT (codVeiculo) 'A quantidade de veículos por ano de fabricação',anoVeiculo FROM tbVeiculo
 GROUP BY anoVeiculo

--U
SELECT COUNT (codMotorista) 'A quantidade de motoristas por pontuação acumulada',pontuacaoAcumulada FROM tbMotorista
 GROUP BY pontuacaoAcumulada

 --V
SELECT COUNT (codMotorista) 'A quantidade de motoristas que ultrapassaram os 20 pontos' FROM tbMotorista
	WHERE (pontuacaoAcumulada) > 20

--W
SELECT AVG (pontuacaoAcumulada) 'A pontuação média dos motoristas nascidos no ano de 2000' FROM tbMotorista
	WHERE YEAR (dataNascMotorista) = '2000'

--X
SELECT AVG (pontosMulta) 'A média dos pontos das multas aplicadas em julho de 2017' FROM tbMultas
	WHERE YEAR (dataMulta) ='2017'

--Y
SELECT COUNT (codVeiculo) 'Quantos veículos não podem circular na segunda-feira ' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%1' OR (placaVeiculo) LIKE '%2' 
