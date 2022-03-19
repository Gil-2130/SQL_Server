/* STRINGS  --> Opera��o com strings

https://docs.microsoft.com/pt-br/sql/t-sql/functions/string-functions-transact-sql?view=sql-server-ver15

*/
SELECT *
FROM Person.Person -- Obtendo a tabela

SELECT CONCAT(FirstName, ' ', LastName) -- Concatenando nome sobrenome, note que usamos espa�o.
FROM Person.Person						-- Caso contr�rio os nomes estariam colados um no outro.

SELECT UPPER(FirstName)  -- Colocando todas as letras do nome em letras MAIUSCULAS
FROM Person.Person

SELECT LOWER(FirstName)  -- Colocando todas as letras do nome em letras minusculas
FROM Person.Person

SELECT UPPER(FirstName), LOWER(LastName)
FROM Person.Person

-- Obtendo nome e sobrenome e o respectivo tamanho de cada um deles
SELECT FirstName, LEN(FirstName) as [Tamanho Nome], LastName, LEN(LastName) as [Tamanho Sobrenome]
FROM Person.Person



-- SUBSTRING --> Extra�ndo um 'peda�o' da string
SELECT FirstName, SUBSTRING(FirstName, 2, 3)  -- o primeiro digito indica a posi��o de inicio
FROM Person.Person							  -- enquanto o segundo digito indica quantos caracteres a nova string deve possuir



-- REPLACE --> Substituindo caracteres dentro de uma string
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') -- Replace trabalha encontrando o primeiro argumento
FROM Production.Product								   -- E substitui pelo segundo argumento