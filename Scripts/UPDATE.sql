/*

UPDATE --> Atualizando os dados de alguma coluna passando novos valores.
==SINTAXE==
UPDATE NomeTabela  --Nome da tabela que desea usar
SET coluna1 = valor1  -- Setando a(s) coluna(s) que deseja usar e atualizando com os novos valores
	coluna2 = valor2
WHERE condicao  -- AQUI ESTÁ O PULO DO GATO!! SE VOCÊ ESQUECER DE USAR O WHERE,
TODAS AS LINHAS DO CONJUNTO DE DADOS SERÀ ALTERADO!!!
A menos que seja explicitamnte solicitado!!

*/


-- Imprimindo a nossa tabela de estudos
SELECT *
FROM Aula

-- Atualizando nossa tabela sem a clausula WHERE  (JAMAIS FAÇA ISSO EM AMBIENTE PRODUTIVO)
UPDATE Aula
SET Nome = 'Teste'

SELECT *
FROM Aula  -- Como você pode perceber, se não usarmos a clausula WHERE, todas as linhas serão alteradas!!!

-- Atualizando nossa tabela usando a clausula WHERE
UPDATE Aula
SET Nome = 'TESTE'
WHERE ID = 3

SELECT *
FROM Aula

--===== DESAFIO =====
-- 1. altere o nome de duas linas diferentes

