/* 
GROUP BY -> Groupby basicamente divide o resultado da sua pesquisa em grupos.
Para cada grupo, pode pode aplicar uma fun��o de agrega��o, por exemplo;
-- Calcular a soma de itens
-- Contar o numero de itens naquele grupo
A sintaxe �
SELECT coluna1, fun��o de agrega�ao(coluna2)
FROM nome da tabela
GROUP BY coluna1
*/

SELECT *
FROM Sales.SalesOrderDetail

-- Ordenando pela oferta especial(SpecialOfferID) e pre�o unit�rio(UnitPrice)
SELECT SpecialOfferID, SUM(UnitPrice) as Soma
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Qual a quantidade de cada produto foram vendidos at� hoje?
SELECT *
FROM Sales.SalesOrderDetail  -- Obtendo a tabela

SELECT ProductID, count(ProductID) as CONTAGEM
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes de cada nome temos armazenado em nosso banco de dados?

SELECT *
FROM Person.Person  -- Obtendo a tabela

SELECT FirstName, count(FirstName) as Contagem
FROM Person.Person
GROUP BY FirstName

-- Obtenha a m�dia de pre�o da tabela production.product para os produtos de cores Silver(prata)

SELECT *
FROM Production.Product -- Obtendo a tabela para podermos extrair o nome da coluna que queremos

SELECT color, AVG(ListPrice) -- Obtendo a m�dia do pre�o para cada cor
FROM Production.Product
GROUP BY Color

SELECT color, AVG(listPrice) as M�dia
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color