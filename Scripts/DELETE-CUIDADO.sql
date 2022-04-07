/* 
DELETE -> Como o nome já diz; apaga linhas do banco de dados.
porém ele deve ser usado com alguma condição, caso contrário ele simplesmente apagará 
todas as linhas da coluna/tabela(A menos que seja isso que você deseje)

 DELETE
 FROM NomeTabela
 WHERE condicao
 
 */

-- Obtendo a Tabela
SELECT *
FROM Aula

-- Apagando o elemento 4 da tabela (Linha)
DELETE FROM Aula
WHERE ID = 4

-- Verificando se a linha foi apagada
SELECT *
FROM Aula

-- Apagando todas as linhas da tabela (NAO FAÇA ISSO EM AMBIENTE DE PRODUÇÃO!!)
DELETE FROM Aula 

SELECT *
FROM Aula
