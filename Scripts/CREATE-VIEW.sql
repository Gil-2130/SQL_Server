/*

VIEWS --> Basicamente as Views são tabelas criadas para consultas,
onde você usa outras tabelas como base para criar uma nova tabela de pesquisa,
com apenas dados específicos que você precisa de uma determinada tabela.

É uma forma de ver apenas algumas informações sem precisar imprimir toda a tabela.

--========== SYNTAXE =========
CREATE VIEW [Pessoas Simplificado] AS qualquer nome
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

*/


CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

SELECT *
FROM [Pessoas Simplificado]
