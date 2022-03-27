/* 
GROUP BY -> Groupby basicamente divide o resultado da sua pesquisa em grupos.
Para cada grupo, pode pode aplicar uma função de agregação, por exemplo;
-- Calcular a soma de itens
-- Contar o numero de itens naquele grupo
A sintaxe é
SELECT coluna1, função de agregaçao(coluna2)
FROM nome da tabela
GROUP BY coluna1
*/

SELECT *
FROM Sales.SalesOrderDetail

-- Ordenando pela oferta especial(SpecialOfferID) e preço unitário(UnitPrice)
SELECT SpecialOfferID, SUM(UnitPrice) as Soma
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

-- Qual a quantidade de cada produto foram vendidos até hoje?
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

-- Obtenha a média de preço da tabela production.product para os produtos de cores Silver(prata)

SELECT *
FROM Production.Product -- Obtendo a tabela para podermos extrair o nome da coluna que queremos

SELECT color, AVG(ListPrice) -- Obtendo a média do preço para cada cor
FROM Production.Product
GROUP BY Color

SELECT color, AVG(listPrice) as Média
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color