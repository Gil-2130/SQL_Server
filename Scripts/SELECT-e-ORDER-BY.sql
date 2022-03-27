/*
ORDER BY -> Permite que o resultado seja ordenado por alguma coluna em específico,
em ordem crescente ou decrescente. A sintaxe é;
SELECT coluna1, coluna2
FROM tabela
ORDER BY coluna1, asc/desc
*/

SELECT *
FROM Person.Person;

-- Ordenando pelo nome da pessoa em ordem crescente/alfabética --
SELECT *
FROM Person.Person
ORDER BY FirstName asc

-- Ordenando por nome e sobrenome, onde o nome ficará em ordem crescente e sobrenome em ordem decrescente
SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc

-- A consulta acima poderia ter sido feita da forma abaixo, e o resultado seriam apenas apenas as colunas de interesse --
SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc

-- DESAFIO 1 -> Oter o ProductID dos 10 produtos mais caros caastrados no sistema, listando do mais caro para o mais barato
SELECT *
FROM Production.Product

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

--DESAFIO 2 -> Obter o nome e numero do produto dos produtos que tenham o ProductID entre 1~4
-- Obtendo o nome
SELECT *
FROM Production.Product

--Resposta
SELECT TOP 4 Name
FROM Production.Product
ORDER BY ProductID asc

-- Resposta Alternativa
SELECT TOP 4 Name, productnumber
FROM Production.Product
ORDER BY ProductID