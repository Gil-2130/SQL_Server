/*

Operador      -     Descrição
=					IGUAL
>					MAIOR QUE
<					MENOR QUE
<>					DIFERENTE
>=					MAIOR OU IGUAL
<=					MENOR OU IGUAL
AND					OPERADOR LOGICO 'E'
OR					OPERADOR LOGICO 'OU'

*/

SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'

SELECT *
FROM Production.Product
WHERE Color= 'blue' or Color = 'black'

SELECT *
FROM Production.Product
WHERE ListPrice > 1500

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 and ListPrice < 5000

SELECT * 
FROM Production.Product
WHERE color <> 'red'

SELECT * 
FROM Production.Product
WHERE Weight >= 500 and Weight <= 700

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1

SELECT *
FROM Person.Person, Person.EmailAddress
WHERE FirstName = 'Peter' and LastName = 'Krebs'

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityID = 26
