/*
DROP TABLE --> Vamos aprender a dropar(excluir) uma tabela do banco de dados 
Usando DROP TABLE
--===== SINTAXE =====
DROP TABLE NomeTabela

Obs; Não é possível realizar o DROP em tabelas referenciadoras ou seja;
Tabelas que são referenciadas por outras tabelas (FOREIGN KEY CONSTRAINT), Tabelas que possuem chave estrangeira 
*/

-- Iremos dropar uma tabela que não é referenciadora
DROP TABLE ErrorLog

-- Verificando se a tabela foi realmente excluida;
SELECT errorlog



-- ===== EXCLIUNDO APENAS O CONTEUDO DA TABELA =====
TRUNCATE TABLE Person.Password

-- Verificando se as informações da tabela foram excluídas
SELECT *
FROM Person.Password



-- ===== DESAFIOS =====
-- Crie
