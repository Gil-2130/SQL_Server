-- DESAFIO 1 (intermediario) -> Quantas pessoas tem o mesmo Middlename e retorne agrupadas por MiddleName

SELECT *
FROM Person.Person  --> Obtendo a tabela

SELECT MiddleName, count(MiddleName) as Contagem
FROM Person.Person
GROUP BY MiddleName

-- DESAFIO 2 -> Precisamos saber em m�dia, qual � a quantidade que cada produto � vendido na  loja

SELECT *
FROM sales.SalesOrderDetail

SELECT ProductID, AVG(OrderQty) as m�dia
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Desafio 3 -> Quais foram as 10 Vendas que no total tiveram os maiores valores de venda por produto. Do maior para o menor

SELECT *
FROM Sales.SalesOrderDetail

-- RESPOSTA - 1 (minha formnula)

SELECT TOP 10 ProductID, SUM(LineTotal) as M�ximo
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY M�ximo DESC;


-- RESPOSTA - 2 (Pofessor)

SELECT TOP 10 ProductID, SUM(LineTotal) as M�ximo
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY sum(LineTotal) DESC; 


-- DESAFIO - 4 -> Precisamos saber quantos produtos e qual a quantidade media de produtos temos cadastrados
-- nas nossas ordem de servi�o (WorkOrder), agrupados por ProductID

SELECT *
FROM Production.WorkOrder  -- Obtedno a tabela

-- Minha Resposta (errada)
SELECT DISTINCT(ProductID), AVG(StockedQty) as m�dia
FROM Production.WorkOrder
GROUP BY ProductID

-- Resposta do professor
SELECT ProductID, count(ProductID) "contagem",
AVG(orderqty) as m�dia
FROM Production.WorkOrder
GROUP BY ProductID