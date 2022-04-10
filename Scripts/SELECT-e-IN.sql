/*
IN -> usamos o opeador IN juntamente com WHERE, para verificar se um valor
corresponde com qualquer valor passado na lista de valores.
*/

SELECT * 
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13)

-- a Query acima é mais produtiva do que;
SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13

-- Condição negativa
SELECT * 
FROM Person.Person
WHERE BusinessEntityID NOT IN (2, 7, 13)
