/* 

DATEPART --> Função para trabalhar com datas (TimeStamp)
Veja abaixo com mais detalhes como funciona esa função e seus argumentos
https://docs.microsoft.com/pt-br/sql/t-sql/functions/datepart-transact-sql?view=sql-server-ver15

*/
SELECT *
FROM Sales.SalesOrderHeader  --> Obtendo a tabela

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Mês  --> Obtendo os pedidos por Mês de uma tabela
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Ano  --> Obtendo os pedidos por Ano de uma tabela
FROM Sales.SalesOrderHeader

-- Média de valor devido por mês
SELECT AVG(TotalDue) as Média, DATEPART (month, OrderDate) as Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(month, OrderDate)

-- Média de valor devido por Ano
SELECT AVG(TotalDue) as Média, DATEPART (YEAR, OrderDate) as Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)

-- Média de valor devido por Ano
SELECT AVG(TotalDue) as Média, DATEPART (DAY, OrderDate) as Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)
ORDER BY Dia
