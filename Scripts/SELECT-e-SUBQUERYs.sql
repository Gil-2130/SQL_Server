/* SUBQUERY
SUB-SELECT AVANÇADO --> De forma geral o SubQUERy é um SELECT dentro de outro SELECT
*/

-- EXEMPLO 1
-- Crie um relatório de todos os produtos cadastrados que tem preço de venda acima da média


-- Forma Comum
SELECT *
FROM Production.Product  -- Obtendo a tabela para extraírmos a informação que precisamos

SELECT AVG(ListPrice)
FROM Production.Product  -- Encontrando a média

SELECT *
FROM Production.Product
WHERE ListPrice > 438.66  -- Agora sim retornando a lista apenas com valores acima da média

-- Porém conforme você percebeu, existe muitos comandos a se fazer para conseguir uma única informação.
-- Vejamos como fazer isso de forma mais fácil usando SUBQUERYs


-- Usando SUBQUERY para obter a mesma informação do codigo acima
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(listPrice)
FROM Production.Product)



-- EXEMPLO 2
-- Queremos Saber o nome dos funcionários que tem o cargo de 'Design Engineer'
SELECT *
FROM Person.Person -- Obtendo o nome dos funcionários (First Name)

SELECT *
FROM HumanResources.Employee -- Obtendo os cargos (Job Title)

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'  -- Obtendo apenas oscargos mas sem os nomes


-- Usando SUBQUERY para imprimir os nomes das pessoas
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN(
SELECT BusinessEntityID
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer')

-- Podemos também executar a operação acima usando JOINS
SELECT PP.FirstName
FROM Person.Person PP
INNER JOIN HumanResources.Employee RE on PP.BusinessEntityID = RE.BusinessEntityID
AND RE.JobTitle = 'Design Engineer'

-- ----------Desafios-------------
-- Encontre todos os endereços que estão no estado de 'Alberta' 
SELECT *
FROM Person.Address

SELECT *
FROM Person.StateProvince -- Obtendo o estado

-- Imprimindo apenas o endereço (AdressLine1)
SELECT AddressLine1
FROM Person.Address
WHERE StateProvinceID
IN(
SELECT StateProvinceID
FROM Person.StateProvince
WHERE Name = 'Alberta')


-- Imprimindo a tabela completa (*)
SELECT *
FROM Person.Address
WHERE StateProvinceID
IN(
SELECT StateProvinceID
FROM Person.StateProvince
WHERE Name = 'Alberta')
