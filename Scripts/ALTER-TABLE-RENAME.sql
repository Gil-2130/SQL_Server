/*
Iremos aprender a alterar a estrutura de uma tabela. Usando o ALTER TABLE

Sintaxe
ALTER TABLE NomeTabela

EXEMPLOS;
- Add, Remover, ou Alterar uma coluna
- Setar valores padr�es para uma coluna
- Add ou remover restri�oes de colunas
- Renomear uma tabela
*/

-- Criando Novas Tabelas (Youtube1)
CREATE TABLE Youtube1(
ID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL UNIQUE,
Categoria VARCHAR(200) NOT NULL,
DataCriacao DATETIME NOT NULL
)

-- Verificando se a nova tabela foi criada
SELECT *
FROM Youtube1

-- Adicionando uma coluna � tabela
ALTER TABLE Youtube1
ADD Ativo BIT

SELECT *
FROM Youtube1


/* 
=========ALterando a Tabela original===========

CREATE TABLE Youtube1(
ID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL UNIQUE,
Categoria VARCHAR(200) NOT NULL,
DataCriacao DATETIME NOT NULL
)
*/
-- ALterando os limites da tabela original na coluna categoria
ALTER TABLE Youtube1
ALTER COLUMN Categoria VARCHAR(300) NOT NULL



-- =====Alterando o nome de uma coluna -- A Sintaxe �; =====
-- EXEC sp_rename 'NomeTabela.NomeColunaAtual', 'NomeColunaNova', 'COLUMN'
EXEC sp_rename 'Youtube1.Nome', 'NewName', 'COLUMN'

-- Por padr�o, o SQL Server exibe a seguinte mensagem de aviso;
-- Cuidado: a altera��o de qualquer parte de um nome de objeto pode interromper scripts e procedimentos armazenados.
-- Isso quer dizer que qualquer Script que estiver rodando usando o nome da antiga coluna, ir� dar erro se n�o for atualizado

-- Verificando a nova altera��o
SELECT *
FROM Youtube1


-- ===== Alterando o nome da tabela. A sintaxe �; =====
-- EXEC sp_rename 'NomeTabelaAtual', NomeTabelaNova'
EXEC sp_rename 'Youtube1', 'Youtube_01'

-- Tamb�m o SQL Avisa sobre poss�veis erros em Scripts ao renomear um objeto;
-- Cuidado: a altera��o de qualquer parte de um nome de objeto pode interromper scripts e procedimentos armazenados.

SELECT *
FROM Youtube1

-- Obviamente recebemos a mensagem de erro abaixo justamente por termos alterado o nome da tabela
-- Mensagem 208, N�vel 16, Estado 1, Linha 69
-- Nome de objeto 'Youtube1' inv�lido.

-- O correto �;
SELECT *
FROM Youtube_01

--===== DESAFIO =====
-- Crie uma tabela nova com  03 colunas e em seguida;
-- 1. Altere o tipo de uma coluna!
-- 2. Renomeie o nome de uma das colunas!
-- 3. Renomeie o nome da tabela que voc� criou