CREATE PROCEDURE SP_VERIFICAR_VALIDEZ_SALARIO (@CD_CARGO INT,
											   @CD_ESCOLARIDADE INT,
											   @SALARIO DECIMAL(10,2))


A tabela TB_FAIXA_SALARIAL contém as faixas salariais válidas para um determinado
cargo e escolaridade. Criar um procedimento armazenado que, dado um cargo,
escolaridade e salário, verifique se o salário é válido. Observação: Utilize, no
procedimento, os valores da tabela TB_FAIXA_SALARIAL uma vez que as faixas
salariais são alteradas constantemente.



SELECT * FROM TB_FAIXASALARIAL
SELECT * FROM TB_CARGO
SELECT * FROM TB_ESCOLARIDADE
SELECT * FROM TB_FUNCIONARIO