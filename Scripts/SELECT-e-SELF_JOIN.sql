-- SELF JOIN  --> Usado para trazer compara��es de uma unica tabela, por exemplo; dados onde a data de nascimento,
-- data de cadastro ou percentual de descontos s�o iguais
--SELECT NOME_COLUNA
--FROM TabelaA, TabelaB
--WHERE condicao

-- Queremos todos os clientes que mora na mesma regi�o
SELECT A.ContactName
FROM Customers A, Customers B
WHERE A.Region = B.Region
--> A sa�da acima mostrou apenas os nomes, mas n�o as regi�es. Iremos detalhar um pouco mais

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region


-- Agora queremos encontrar (Nome e Data de contrata��o) de todos
-- os funcion�rios que foram contratados no mesmo ano.
SELECT *
FROM Employees -- Buscando a Tabela

SELECT A.FirstName, A.hiredate, B.FirstName, B.hiredate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.hiredate) = DATEPART(YEAR, B.hireDate)

--DEsafio  --> Queremos saber na tabela detalhe do pedido [Order Details]
-- quais produtos tem o mesmo percentual de desconto?

SELECT *
FROM [Order Details]  --Obtendo a Tabela

SELECT A.ProductID, A.Discount,B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount