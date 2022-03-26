/* HAVING -> � basicamente usado em jun��o com o groupby para filtrar resultados em um agrupamento.

De forma simples; � basicamente um WHERE para dados agrupados.

A sintaxe �;

SELECT coluna1, funcaoAgregacao(coluna2)
FROM nomeTabela
GROUP BY coluna1
HAVING condicao;

A grande diferen�a entre HAVING e WHERE, 
� que o GROUP BY � aplicado depois que os dados j� foram agrupados,
enquanto o WHERE � aplicado antes dos dados serem agrupados.

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
--> Queremos saber quais os nomes no sistema tem uma ocorrencia maior que 10 vezes, por�m somente o t�tulo � 'Mr'.

SELECT FirstName, count(FirstName) as quantidade
FROM Person.Person
WHERE Title = 'Mr'
GROUP BY FirstName
HAVING count(FirstName) > 10															 
*/


-- DESAFIO 1;
--> Gostariamos de identificar as provincias(stateProvinceID) com o maior numero de cadastros no nosso sistema,
-- ent�o precisamos encontrar quais provincias est�o registradas no banco de dados mais que 1000 vezes.

SELECT *
FROM Person.Address

SELECT StateProvinceID, COUNT(StateProvinceID) as contagem
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- DESAFIO 2;
--> Sendo que se trata de uma multinacional, os gerentes querem saber quais produtos(ProductID) n�o est�o trazendo em m�dia no m�nimo
-- 1milh�o em total de vendas(LineTotal)

SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, avg(LineTotal) as m�dia
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING avg(LineTotal) < 1000000

