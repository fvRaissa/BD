USE bdTransito

INSERT tbMotorista (nomeMotorista, dataNascMotorista, cpfMotorista,
	CNHMotorista,pontuacaoAcumulada)
VALUES ('Arnaldo Junior da Silva','18/09/1960', '11122233344455', '1234567890', 3)
	, ('Lilian de Souza Morais','30/12/1978', '22233344455566', '0987654321', 4)
	, ('João Benedito Machado','01/04/1980', '33344455566677', '2345678901', 7)

SELECT nomeMotorista, dataNascMotorista, cpfMotorista,CNHMotorista,pontuacaoAcumulada FROM tbMotorista

INSERT tbVeiculo (modeloVeiculo,placaVeiculo,renavam,anoVeiculo,
	codMotorista)
VALUES ('fusca', 'FRO12E3', '01122233344', '1935', 1)
	,('BMW Série 4 Cabrio', 'SAL23E4', '02233344455', '2020', 1)
	,('Ford Mustang', 'AJS96E0', '03344455566', '2021', 1)
	,('Hyundai HB20', 'SOL12E3', '04455566677', '2019',2)
	,('Toyota Corolla', 'CEU23I4', '05566677788', '2021', 2)
	,('Fiat Argo', 'LSM34E5', '06677788899', '2021', 2)
	,('Toyota Corolla Cross', 'REI12E3', '07788899911', '2021',3)
	,('Fiat Uno','LAB23E4', '08899911122', '2019', 3)
	,('dodge charger', 'JBM34E5', '09911122233', '1970' , 3)


SELECT codVeiculo,modeloVeiculo,placaVeiculo,renavam,anoVeiculo,codMotorista FROM tbVeiculo
	
INSERT tbMultas (dataMulta, horaMulta, pontosMulta, codVeiculo)
VALUES ('15/02/2000','15:30',3,1)
	,('10/08/2001','10:13',3,1)
	,('14/08/2020','12:44',5,2)
	,('12/09/2020','11:17',3,2)
	,('13/05/2021','12:56',3,3)
	,('13/07/2021','09:30',3,3)
	,('20/03/2019','11:34',5,4)
	,('22/07/2020','22:58',3,4)
	,('30/01/2021','08:46',4,5)
	,('01/05/2021','14:59',7,5)
	,('30/09/2021','23:11',3,6)
	,('10/10/2021','21:21',7,6)
	,('06/06/2021','07:30',3,7)
	,('07/06/2021','06:05',4,7)
	,('10/11/2019','12:20',3,8)
	,('01/12/2020','13:14',5,8)
	,('17/11/2001','18:47',3,9)
	,('25/12/2002','23:57',5,9)

SELECT dataMulta, horaMulta, pontosMulta, codVeiculo FROM tbMultas