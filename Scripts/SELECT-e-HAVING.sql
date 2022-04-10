/* HAVING -> é basicamente usado em junção com o groupby para filtrar resultados em um agrupamento.

De forma simples; é basicamente um WHERE para dados agrupados.

A sintaxe é;

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

A grande diferença entre HAVING e WHERE, 
é que o GROUP BY é aplicado depois que os dados já foram agrupados,
enquanto o WHERE é aplicado antes dos dados serem agrupados.

-- EXEMPLO - 1;
 --> Suponhamos que queremos saber quais nomes no sistema tem uma ocorrencia maior que 10 vezes?

SELECT FirstName, COUNT(FirstName) as "quantidade"					/		SELECT FirstName, COUNT(FirstName) as "quantidade"  (sintaxe errada)
FROM Person.Person													/		FROM Person.Person
GROUP BY FirstName													/		WHERE count(FirstName) > 10
HAVING count(FirstName) > 10										/		GROUP BY FirstName
																			

			-- EXEMPLO - 2;
			--> QUeremos saber quais produtos que no total de vendas entre 162k a 500k

			SELECT ProductID, sum(lineTotal)
			FROM Sales.SalesOrderDetail
			GROUP BY ProductID
			HAVING sum(LineTotal) between 162000 and 500000

-- EXEMPLO - 3;
--> Queremos saber quais os nomes no sistema tem uma ocorrencia maior que 10 vezes, porém somente o título é 'Mr'.

SELECT FirstName, count(FirstName) as quantidade
FROM Person.Person
WHERE Title = 'Mr'
GROUP BY FirstName
HAVING count(FirstName) > 10	

*/


-- DESAFIO 1;
--> Gostariamos de identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema,
-- então precisamos encontrar quais provincias estão registradas no banco de dados mais que 1000 vezes.

SELECT *
FROM Person.Address

SELECT StateProvinceID, COUNT(StateProvinceID) as contagem
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- DESAFIO 2;
--> Sendo que se trata de uma multinacional, os gerentes querem saber quais produtos(ProductID) não estão trazendo em média no mínimo
-- 1milhão em total de vendas(LineTotal)

SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, avg(LineTotal) as média
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING avg(LineTotal) < 1000000

