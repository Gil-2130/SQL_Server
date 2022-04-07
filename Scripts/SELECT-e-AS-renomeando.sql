/* Aula complementar de "as" --> Usado para renomear alguma coluna retornada de alguma operação

*/

-- Exemplo 1 sem nome
SELECT TOP 10 *
FROM Production.Product

-- Exemplo 2 - Selecionando coluna e atribuindo um nome
SELECT TOP 10 ListPrice as "Lista de Preços"
FROM Production.Product

-- Exemplo 3 - Selecionando coluna
SELECT TOP 10 avg(listPrice) as "Preço Médio"
FROM Production.Product

-- DESAFIO 1 -> Encontre o FirstName e LastName de person.person e renomeie
SELECT FirstName as "Primeiro Nome", LastName as "Último Nome"
FROM Person.Person

-- DESAFIO 2 -> Encontre e renomeie a coluna ProductNumber da tabela Production.product

SELECT ProductNumber as "Número de Produto"
FROM Production.Product

-- DESAFIO3 -> 

SELECt UnitPrice as "Preço Unitário"
FROM Sales.SalesOrderDetail
