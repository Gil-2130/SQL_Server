/* SUBQUERY
SUB-SELECT AVAN�ADO --> De forma geral o SubQUERy � um SELECT dentro de outro SELECT
*/

-- EXEMPLO 1
-- Crie um relat�rio de todos os produtos cadastrados que tem pre�o de venda acima da m�dia


-- Forma Comum
SELECT *
FROM Production.Product  -- Obtendo a tabela para extra�rmos a informa��o que precisamos

SELECT AVG(ListPrice)
FROM Production.Product  -- Encontrando a m�dia

SELECT *
FROM Production.Product
WHERE ListPrice > 438.66  -- Agora sim retornando a lista apenas com valores acima da m�dia

-- Por�m conforme voc� percebeu, existe muitos comandos a se fazer para conseguir uma �nica informa��o.
-- Vejamos como fazer isso de forma mais f�cil usando SUBQUERYs


-- Usando SUBQUERY para obter a mesma informa��o do codigo acima
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(listPrice)
FROM Production.Product)



-- EXEMPLO 2
-- Queremos Saber o nome dos funcion�rios que tem o cargo de 'Design Engineer'
SELECT *
FROM Person.Person -- Obtendo o nome dos funcion�rios (First Name)

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

-- Podemos tamb�m executar a opera��o acima usando JOINS
SELECT PP.FirstName
FROM Person.Person PP
INNER JOIN HumanResources.Employee RE on PP.BusinessEntityID = RE.BusinessEntityID
AND RE.JobTitle = 'Design Engineer'

-- ----------Desafios-------------
-- Encontre todos os endere�os que est�o no estado de 'Alberta' 
SELECT *
FROM Person.Address

SELECT *
FROM Person.StateProvince -- Obtendo o estado

-- Imprimindo apenas o endere�o (AdressLine1)
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
