/*
DROP TABLE --> Vamos aprender a dropar(excluir) uma tabela do banco de dados 
Usando DROP TABLE
--===== SINTAXE =====
DROP TABLE NomeTabela

Obs; N�o � poss�vel realizar o DROP em tabelas referenciadoras ou seja;
Tabelas que s�o referenciadas por outras tabelas (FOREIGN KEY CONSTRAINT), Tabelas que possuem chave estrangeira 
*/

-- Iremos dropar uma tabela que n�o � referenciadora
DROP TABLE ErrorLog

-- Verificando se a tabela foi realmente excluida;
SELECT errorlog



-- ===== EXCLIUNDO APENAS O CONTEUDO DA TABELA =====
TRUNCATE TABLE Person.Password

-- Verificando se as informa��es da tabela foram exclu�das
SELECT *
FROM Person.Password



-- ===== DESAFIOS =====
-- Crie
