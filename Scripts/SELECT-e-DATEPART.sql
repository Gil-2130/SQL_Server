/* 
DATEPART --> Fun��o para trabalhar com datas (TimeStamp)
Veja abaixo com mais detalhes como funciona esa fun��o e seus argumentos
https://docs.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver15
*/
SELECT *
FROM Sales.SalesOrderHeader  --> Obtendo a tabela

SELECT SalesOrderID, DATEPART(month, OrderDate) AS M�s  --> Obtendo os pedidos por M�s de uma tabela
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Ano  --> Obtendo os pedidos por Ano de uma tabela
FROM Sales.SalesOrderHeader

-- M�dia de valor devido por m�s
SELECT AVG(TotalDue) as M�dia, DATEPART (month, OrderDate) as M�s
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)

-- M�dia de valor devido por Ano
SELECT AVG(TotalDue) as M�dia, DATEPART (YEAR, OrderDate) as Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)

-- M�dia de valor devido por Ano
SELECT AVG(TotalDue) as M�dia, DATEPART (DAY, OrderDate) as Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)
ORDER BY Dia