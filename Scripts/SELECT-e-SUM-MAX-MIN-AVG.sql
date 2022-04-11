/*
Funções matemáticas
*/

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

-- Obtendo a soma de uma determinada coluna
SELECT TOP 10 sum(LineTotal) --as soma *
FROM Sales.SalesOrderDetail

-- Obs; Ao retornar o resultado, uma coluna é apresentada sem nome.
-- Você Pode dar um nome temporário a ela apenas para tornar os resultados de facil compreensão

-- Obtendo a média e nomeando a coluna resultante
SELECT TOP 10 AVG(LineTotal) as Média
FROM Sales.SalesOrderDetail

--Obtendo o mínimo e nomeando a coluna
SELECT TOP 10 MIN(LineTotal) as Mínimo
FROM Sales.SalesOrderDetail
