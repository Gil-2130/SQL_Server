/* SQL Between
� usado para encontrar um valor m�nimo e um valor m�ximo
*/

-- Realizando consulta e obtendo valores dentro de um range
SELECT *
FROM Production.Product
WHERE ListPrice between 1000 and 1500

-- Realizando consulta e obtendo valores fora de um range
SELECT *
FROM Production.Product
WHERE ListPrice  not between 1000 and 1500

-- Consultando a tabela de Recursos humanos e buscando por funcion�rios em um range de datas
SELECT * 
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/12/31'

-- Realizando a consulta acima de forma agrupada
SELECT * 
FROM HumanResources.Employee
WHERE HireDate between '2009/01/01' and '2010/12/31'
ORDER BY HireDate