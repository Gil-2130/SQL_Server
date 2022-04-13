/* 
Treinamento simples no Banco de dados
*/
SELECT *
FROM Production.Product

SELECT TOP (500) [ProductID],
				 [Name],
				 [ProductNumber],
				 [Color],
				 [ListPrice]
FROM [AdventureWorks2017].[Production].[Product]
ORDER BY [Name] DESC

-- Criando Stored Procedure para este banco de dados
CREATE PROCEDURE TesteDB
AS
BEGIN
	SELECT TOP (500) [ProductID],
					 [Name],
					 [ProductNumber],
					 [Color],
					 [ListPrice]
	FROM [AdventureWorks2017].[Production].[Product]
	ORDER BY [Name] ASC
END

-- Verificando se a Procedure foi criada
EXECUTE TesteDB


-- Alterando a Procedure
ALTER PROCEDURE TesteDB
AS
BEGIN
	SELECT TOP (500) [ProductID],
					 [Name],
					 [ProductNumber],
					 [Color],
					 [ListPrice]
	FROM [AdventureWorks2017].[Production].[Product]
	ORDER BY [Name] DESC
END

-- VErificando as novas alterações na procedure
EXECUTE TesteDB
