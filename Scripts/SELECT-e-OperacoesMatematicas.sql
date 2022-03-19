/*
FUN��ES MATEM�TICAS

https://docs.microsoft.com/pt-br/sql/t-sql/functions/mathematical-functions-transact-sql?view=sql-server-ver15
*/

SELECT * 
FROM Sales.SalesOrderDetail

-- Realizando opera��es com colunas da Tabela
SELECT UnitPrice + LineTotal  -- Podemos usar qualquer tipo de opera��o nessas colunas
FROM Sales.SalesOrderDetail

-- Obtendo a m�dia de uma coluna da tabela
SELECT AVG(LineTotal) as M�dia
FROM Sales.SalesOrderDetail

--Obtendo a Soma de uma coluna da tabela
SELECT SUM(LineTotal) as Soma
FROM Sales.SalesOrderDetail

-- Obtendo o m�nimo da coluna
SELECT MIN(LineTotal) as M�nimo
FROM Sales.SalesOrderDetail

-- Obtendo o m�ximo de uma coluna
SELECT MAX(LineTotal)
FROM Sales.SalesOrderDetail

-- Realizando o arrendondamento e especificando a quantidade de casas decimais
SELECT ROUND(LineTotal, 2), LineTotal
FROM Sales.SalesOrderDetail

-- Obtendo a raiz quadrada de uma coluna
SELECT SQRT(LineTotal) as Ra�z_Quadrada
FROM Sales.SalesOrderDetail