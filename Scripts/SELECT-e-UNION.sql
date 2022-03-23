/*
UNION --> Este Operador combina dois ou mais resultados de um SELECT em apenas um.
O mesmo também remove as duplicatas se elas existirem.
O UNION é comumente usado em tabelas não-normalizadas ou que possuem inconsistências

Porém caso deseje que o UNION retorne essas duplicatas, use UNION ALL e ele trará todas as informações das duas tabelas

SELECT coluna1, coluna2
FROM tabela1
UNION
SELECT coluna1, coluna2
FROM tabela2
*/
--EXEMPLO 1
SELECT [ProductID], [Name], [ProductNumber] 
FROM Production.Product
WHERE Name like '%Chain%'
UNION
SELECT [productID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name like '%Decal%'

--EXEMPLO 2
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title = 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName = 'A'
