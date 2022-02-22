/*
VIEWS --> Basicamente as Views s�o tabelas criadas para consultas,
onde voc� usa outras tabelas como base para criar uma nova tabela de pesquisa,
com apenas dados espec�ficos que voc� precisa de uma determinada tabela.

� uma forma de ver apenas algumas informa��es sem precisar imprimir toda a tabela.

--===== SYNTAXE =====
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