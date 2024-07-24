--1
CREATE TABLE TB_FUNCIONARIO
(
	MATRICULA INT PRIMARY KEY NOT NULL,
	NOME VARCHAR(40) NOT NULL,
	TELEFONE VARCHAR(20),
	ENDERECO VARCHAR(40),
	SALARIO DECIMAL(10,2),
	PENDENCIA VARCHAR(40)
)

select * from TB_FUNCIONARIO

--2
CREATE PROCEDURE SP_ATUALIZA_PENDENCIA
AS
BEGIN
    DECLARE @matricula INT,
            @nome VARCHAR(40),
            @telefone VARCHAR(20),
            @endereco VARCHAR(40),
            @salario DECIMAL(10,2),
            @pendencia VARCHAR(40)

    -- Declara o cursor
    DECLARE cursor_funcionario CURSOR FOR
    SELECT MATRICULA, NOME, TELEFONE, ENDERECO, SALARIO
    FROM TB_FUNCIONARIO

    -- Abre o cursor
    OPEN cursor_funcionario

    -- Lê a primeira linha do cursor
    FETCH NEXT FROM cursor_funcionario INTO @matricula, @nome, @telefone, @endereco, @salario

    -- Loop através das linhas do cursor
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Verifica se todos os campos têm valores
        IF @nome IS NOT NULL AND @telefone IS NOT NULL AND @endereco IS NOT NULL AND @salario IS NOT NULL
        BEGIN
            SET @pendencia = 'SEM PENDÊNCIA'
        END
        ELSE
        BEGIN
            SET @pendencia = 'EXISTE PENDÊNCIA'
        END

        -- Atualiza a tabela TB_FUNCIONARIO com o valor de PENDENCIA
        UPDATE TB_FUNCIONARIO
        SET PENDENCIA = @pendencia
        WHERE MATRICULA = @matricula

        -- Lê a próxima linha do cursor
        FETCH NEXT FROM cursor_funcionario INTO @matricula, @nome, @telefone, @endereco, @salario
    END

    -- Fecha e desaloca o cursor
    CLOSE cursor_funcionario
    DEALLOCATE cursor_funcionario
END
