/* Tipos de Joins

== INNER JOIN --> Retorna apenas os resultados que correspondem/Existem na tabela A como na tabela B
SELECT *
FROM TabelaA
INNER JOIN TabelaB
ON TabelaA.Nome = TabelaB.Nome


== FULL OUTER JOIN --> Retorna um conjunto de todos os registros correspondentes da tabela A e Tabela B quando são iguais.
E além disso, se não houver valores correspondentesn ele simplesmente irá preencher esse lado com "null".
SELECT *
FROM TabelaA
FULL OUTER JOIN TabelaB
ON TabelaA.Nome = TabelaB.Nome


== LEFT OUTER JOIN --> Retorna um conjunto de todos os registros da tabelaA, e alem disso, os registros correspondentes
(quando disponiveis) na TabelaB. Se não houver registros correspondentes ele simplesmente vai preencher com "NULL"
SELECT *
FROM TabelaA
LEFT JOIN TabelaB
ON TabelaA.Nome = TabelaB.Nome*/



-- EXEMPLO --> Queremos descobrir quais pessoas tem um cartão de crédito registrado?

-- Buscando a informação com INNER JOIN
SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
 --Observe que a pesquisa retornou 19.118 linhas

 --Buscando a informação com LEFT JOIN
 SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
-- Agora observe que a pesquisa retornou 19.972 linhas, ou seja; O left join trouxe para nós
-- as informações de clientes que também não tinham cartão de crédito (informação completa)

-- Informação de quantas pessoas não possue o cartão de crédito;
SELECT 19972 - 19118
--= ou seja; 854 pessoas não possuem cartão de crédito

-- AGora queremos descobrir quais pessoas não possuem o cartão de credito?
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL