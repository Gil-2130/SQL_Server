/* 
DELETE -> Como o nome j� diz; apaga linhas do banco de dados.
por�m ele deve ser usado com alguma condi��o, caso contr�rio ele simplesmente apagar� 
todas as linhas da coluna/tabela(A menos que seja isso que voc� deseje)

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

-- Apagando todas as linhas da tabela (NAO FA�A ISSO EM AMBIENTE DE PRODU��O!!)
DELETE FROM Aula 

SELECT *
FROM Aula