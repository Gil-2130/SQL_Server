/*

FUNÇÕES MATEMÁTICAS

https://docs.microsoft.com/pt-br/sql/t-sql/functions/mathematical-functions-transact-sql?view=sql-server-ver15

*/

SELECT * 
FROM Sales.SalesOrderDetail

-- Realizando operações com colunas da Tabela
SELECT UnitPrice + LineTotal  -- Podemos usar qualquer tipo de operação nessas colunas
FROM Sales.SalesOrderDetail

-- Obtendo a média de uma coluna da tabela
SELECT AVG(LineTotal) as Média
FROM Sales.SalesOrderDetail

--Obtendo a Soma de uma coluna da tabela
SELECT SUM(LineTotal) as Soma
FROM Sales.SalesOrderDetail

-- Obtendo o mínimo da coluna
SELECT MIN(LineTotal) as Mínimo
FROM Sales.SalesOrderDetail

-- Obtendo o máximo de uma coluna
SELECT MAX(LineTotal)
FROM Sales.SalesOrderDetail

-- Realizando o arrendondamento e especificando a quantidade de casas decimais
SELECT ROUND(LineTotal, 2), LineTotal
FROM Sales.SalesOrderDetail

-- Obtendo a raiz quadrada de uma coluna
SELECT SQRT(LineTotal) as Raíz_Quadrada
FROM Sales.SalesOrderDetail
