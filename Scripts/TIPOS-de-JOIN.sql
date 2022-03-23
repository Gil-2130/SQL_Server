/* Tipos de Joins

== INNER JOIN --> Retorna apenas os resultados que correspondem/Existem na tabela A como na tabela B
SELECT *
FROM TabelaA
INNER JOIN TabelaB
ON TabelaA.Nome = TabelaB.Nome


== FULL OUTER JOIN --> Retorna um conjunto de todos os registros correspondentes da tabela A e Tabela B quando s�o iguais.
E al�m disso, se n�o houver valores correspondentesn ele simplesmente ir� preencher esse lado com "null".
SELECT *
FROM TabelaA
FULL OUTER JOIN TabelaB
ON TabelaA.Nome = TabelaB.Nome


== LEFT OUTER JOIN --> Retorna um conjunto de todos os registros da tabelaA, e alem disso, os registros correspondentes
(quando disponiveis) na TabelaB. Se n�o houver registros correspondentes ele simplesmente vai preencher com "NULL"
SELECT *
FROM TabelaA
LEFT JOIN TabelaB
ON TabelaA.Nome = TabelaB.Nome*/



-- EXEMPLO --> Queremos descobrir quais pessoas tem um cart�o de cr�dito registrado?

-- Buscando a informa��o com INNER JOIN
SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
 --Observe que a pesquisa retornou 19.118 linhas

 --Buscando a informa��o com LEFT JOIN
 SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- Agora observe que a pesquisa retornou 19.972 linhas, ou seja; O left join trouxe para n�s
-- as informa��es de clientes que tamb�m n�o tinham cart�o de cr�dito (informa��o completa)

-- Informa��o de quantas pessoas n�o possue o cart�o de cr�dito;
SELECT 19972 - 19118
--= ou seja; 854 pessoas n�o possuem cart�o de cr�dito

-- AGora queremos descobrir quais pessoas n�o possuem o cart�o de credito?
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL