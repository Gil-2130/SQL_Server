/* Desafio 1:
Quantos produtos temos cadastrados no sistema e que custam mais que 1500 dolares?
*/

--RESPOSTA 1 --
SELECT *
FROM Production.Product
WHERE ListPrice > '1500'

--RESPOSTA 2
SELECT ListPrice, Name
FROM Production.Product
WHERE ListPrice > '1500'

--RESPOSTA 3
SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > '1500'

/* DESAFIO 2
Quantas pessoas temnos com o sobrenome que inicia com a letra P?
*/

-- RESPOSTA 1
SELECT *
FROM Person.Person  -- Obtendo a lista

SELECT *
FROM Person.Person
WHERE LastName like 'P%' -- Retornando a lista para verificar se tudo saiu certo

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName like 'P%'  -- Retornando apenas a quantidade de registros encontrados


/* DESAFIO 3
Em quantas cidades unicas estão cadastrados nossos clientes?
*/

--RESPOSTA 1
SELECT * 
FROM Person.Address  -- Obtendo o endereço dos clientes

SELECT COUNT(DISTINCT(City)) -- Obtendo a quantidade de cidades unicas cadastradas
FROM Person.Address

/* DESAFIO 4
Quais as cidades unicas que temos cadastrados em nosso sistema?
*/

--RESPOSTA 1

SELECT *
FROM Person.Address -- Obtendo a tabela

SELECT DISTINCT City  -- Obtendo apenas o nome das cidades sem repeti-las
FROM Person.Address

/* DESAFIO 5 
Quantos produtos vermelhos tem preço entre 500 a 1000 dolares?
*/

--RESPOSTA 1

SELECT *
FROM Production.Product -- Obtendo a tabela

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red'
AND ListPrice between 500 and 1000

/* DESAFIO 6
Quantos produtos cadastrados tem a palavra 'road' no nome deles?
*/

--RESPOSTA
SELECT *
FROM Production.Product -- obtendo a lista

SELECT Name
FROM Production.Product -- Obtendo apenas o nome
WHERE Name like '%road%'

SELECT COUNT(*)
FROM Production.Product  -- Obtendo apenas a quantidade
WHERE Name like '%road%'