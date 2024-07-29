CREATE DATABASE BD_EX5;
USE BD_EX5;

-- EXERC�CIO 5

CREATE PROCEDURE SP_CALCULA_IMPOSTO_DE_RENDA (@RENDA DECIMAL(10,2),
                                              @IMPOSTO DECIMAL(10,2) OUTPUT)
AS
BEGIN
	IF @RENDA <= 1372.81
	BEGIN
		SET @IMPOSTO = 0.00
	END
	ELSE IF @RENDA >= 1372.81 AND @RENDA <= 2743.25
	BEGIN
		SET @IMPOSTO = (@RENDA * 0.15) - 205.92
	END
	ELSE
	BEGIN
		SET @IMPOSTO = (@RENDA * 27.5) - 548.82
	END
END

DECLARE @IMPOSTO NUMERIC(10,2)
EXEC SP_CALCULA_IMPOSTO_DE_RENDA 1100.00, @IMPOSTO OUTPUT
PRINT @IMPOSTO