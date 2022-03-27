SELECT TOP 10 *
FROM Sales.SalesOrderDetail

-- Obtendo a soma de uma determinada coluna
SELECT TOP 10 sum(LineTotal) --as soma *
FROM Sales.SalesOrderDetail

-- Obs; Ao retornar o resultado, uma coluna � apresentada sem nome.
-- Voc� Pode dar um nome tempor�rio a ela apenas para tornar os resultados de facil compreens�o

-- Obtendo a m�dia e nomeando a coluna resultante
SELECT TOP 10 AVG(LineTotal) as M�dia
FROM Sales.SalesOrderDetail

--Obtendo o m�nimo e nomeando a coluna
SELECT TOP 10 MIN(LineTotal) as M�nimo
FROM Sales.SalesOrderDetail