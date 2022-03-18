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
SELECT COUNT (codMotorista) 'Quantos motoristas possuem mais de 10 pontos de pontua��o acumulada' FROM tbMotorista
	WHERE (pontuacaoAcumulada) > 10

--E
SELECT SUM (pontuacaoAcumulada) 'A somat�ria da pontua��o de todos os motoristas' FROM tbMotorista

--F
SELECT AVG (pontuacaoAcumulada) 'A m�dia de pontua��o de todos os motoristas' FROM tbMotorista

--G
SELECT COUNT (codVeiculo) 'Quantos ve�culos o motorista de c�digo 1 possui' FROM tbVeiculo
	WHERE (codMotorista) = 1

--H
SELECT COUNT (codVeiculo) 'Quantos ve�culos a placa come�a com A' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE 'A%' 

--I
SELECT COUNT (codVeiculo) 'Quantos ve�culos foram fabricados antes de 2010' FROM tbVeiculo
	WHERE  (anoVeiculo)  < 2010

--J
SELECT AVG (anoVeiculo) 'A m�dia do ano de fabrica��o de todos os ve�culos' FROM tbVeiculo

--K
SELECT COUNT (codVeiculo) 'A quantidade dos ve�culos que tenham a palavra Sedan em seu modelo' FROM tbVeiculo
	WHERE (modeloVeiculo) LIKE '%Sedan%'

--L 
SELECT SUM (pontosMulta) 'A somat�ria dos pontosMulta do ve�culo de id 02' FROM tbMultas
	WHERE (codVeiculo) = 2

--M
SELECT AVG (pontosMulta) 'A m�dia de pontosMulta entre todas as multas aplicadas' FROM tbMultas 

--N
SELECT COUNT (codMulta) 'A quantidade de multas aplicadas no m�s de abril de 2018' FROM tbMultas
	WHERE (dataMulta) BETWEEN '01/04/2018' AND '30/04/2018'

--O
SELECT COUNT (codVeiculo) 'A quantidade de ve�culos cuja placa termine com o n�mero 1 ou 2' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%1' OR (placaVeiculo) LIKE '%2' 

--P
SELECT COUNT (codVeiculo) 'A quantidade de ve�culos cuja placa termine com o n�mero 3 ou 4' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%3' OR (placaVeiculo) LIKE '%4' 

--Q
SELECT COUNT (codVeiculo) 'A quantidade de ve�culos cuja placa termine com o n�mero 5 ou 6' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%5' OR (placaVeiculo) LIKE '%6' 
--R
SELECT COUNT (codVeiculo) 'A quantidade de ve�culos cuja placa termine com o n�mero 7 ou 8' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%7' OR (placaVeiculo) LIKE '%8' 
--S
SELECT COUNT (codVeiculo) 'A quantidade de ve�culos cuja placa termine com o n�mero 9 ou 0' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%9' OR (placaVeiculo) LIKE '%0' 

--T
SELECT COUNT (codVeiculo) 'A quantidade de ve�culos por ano de fabrica��o',anoVeiculo FROM tbVeiculo
 GROUP BY anoVeiculo

--U
SELECT COUNT (codMotorista) 'A quantidade de motoristas por pontua��o acumulada',pontuacaoAcumulada FROM tbMotorista
 GROUP BY pontuacaoAcumulada

 --V
SELECT COUNT (codMotorista) 'A quantidade de motoristas que ultrapassaram os 20 pontos' FROM tbMotorista
	WHERE (pontuacaoAcumulada) > 20

--W
SELECT AVG (pontuacaoAcumulada) 'A pontua��o m�dia dos motoristas nascidos no ano de 2000' FROM tbMotorista
	WHERE YEAR (dataNascMotorista) = '2000'

--X
SELECT AVG (pontosMulta) 'A m�dia dos pontos das multas aplicadas em julho de 2017' FROM tbMultas
	WHERE YEAR (dataMulta) ='2017'

--Y
SELECT COUNT (codVeiculo) 'Quantos ve�culos n�o podem circular na segunda-feira ' FROM tbVeiculo
	WHERE (placaVeiculo) LIKE '%1' OR (placaVeiculo) LIKE '%2' 
