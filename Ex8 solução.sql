CREATE PROCEDURE SP_VERIFICAR_VALIDEZ_SALARIO (@CD_CARGO INT,
											   @CD_ESCOLARIDADE INT,
											   @SALARIO DECIMAL(10,2))


A tabela TB_FAIXA_SALARIAL cont�m as faixas salariais v�lidas para um determinado
cargo e escolaridade. Criar um procedimento armazenado que, dado um cargo,
escolaridade e sal�rio, verifique se o sal�rio � v�lido. Observa��o: Utilize, no
procedimento, os valores da tabela TB_FAIXA_SALARIAL uma vez que as faixas
salariais s�o alteradas constantemente.



SELECT * FROM TB_FAIXASALARIAL
SELECT * FROM TB_CARGO
SELECT * FROM TB_ESCOLARIDADE
SELECT * FROM TB_FUNCIONARIO