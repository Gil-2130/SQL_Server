/*
INNER JOIN -> Combina registros de duas tabelas sempre que houver valores correspondentes em um campo comum.

A sintaxe é:  SELECT C.CienteID, C.Nome, E.Rua, E.Cidade
			  FROM Cliente C
			  INNER JOIN Endereco E ON E.EnderecoID = C.EnderecoID

=== EXEMPLOS;
*/

-- Obtenha as informações BusinessEntityID, FIrstName, LastName, EmailAdressa
SELECT TOP 10 *
from Person.Person 

SELECT TOP 10 *
FROM Person.EmailAddress

-- Consultando as duas tabelas acima, conseguimos obter as duas colunas em comum

SELECT PP.BusinessEntityID, PP.FirstName, PP.LastName, PE.EmailAddress  --PP e PE são alias para as tabelas Person.Person e Person.EmailAdress
FROM Person.Person as PP
INNER JOIN Person.EmailAddress PE on PP.BusinessEntityID = PE.BusinessEntityID



-- Suponhamos que agora queremos os nomes dos produtos e as informações de suas Subcategorias
-- QUeremos os preços dos produtos(ListPrice), nome da subcategoria
SELECT *
FROM Production.Product

SELECT *
FROM Production.ProductSubcategory

SELECT pr.ListPrice, pr.Name, pc.Name
FROM Production.Product pr
INNER JOIN Production.ProductSubcategory PC on PC.ProductSubcategoryID = pr.ProductSubcategoryID


-- Unindo as informações de duas tabelas
SELECT TOP 10 *
FROM Person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA on PA.AddressID = BA.AddressID


-- DESAFIO 1
SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

SELECT PNT.PhoneNumberTypeID, PNT.Name, PP.BusinessEntityID, PP.PhoneNumber
FROM Person.PhoneNumberType PNT
INNER JOIN Person.PersonPhone PP on PP.PhoneNumberTypeID = PNT.PhoneNumberTypeID

-- Ordenando de Acordo com o desafio
SELECT PP.BusinessEntityID, PNT.Name, PNT.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PhoneNumberType PNT
INNER JOIN Person.PersonPhone PP on PP.PhoneNumberTypeID = PNT.PhoneNumberTypeID

-- A resposta do professor foi ligeiramente diferente, porém teve o mesmo resultado;
SELECT PP.BusinessEntityID, PNT.Name, PNT.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PersonPhone PP
INNER JOIN Person.PhoneNumberType PNT on PNT.PhoneNumberTypeID = PP.PhoneNumberTypeID


-- DESAFIO 2
SELECT TOP 10 *
FROM Person.StateProvince

SELECT top 10 *
FROM Person.Address

SELECT PA.AddressID, PA.City, PSP.StateProvinceID, PSP.Name
FROM Person.Address PA
INNER JOIN Person.StateProvince PSP on PSP.StateProvinceID = PA.StateProvinceID
