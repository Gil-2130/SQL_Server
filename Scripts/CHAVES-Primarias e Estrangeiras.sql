/*
# Vamos aprender o que s�o chaves prim�rias e chaves estrangeiras.
# Veremos exemplos de como usar eles para criar colunas e tabelas,
por�m veremos isso em detalhes nas aulas sobre cria��o de tabelas.

===== PRIMARY KEY ==== (Chave Prim�ria)
* Uma chave prim�ria � basicamente uma coluna ou grupo de colunas, usada para identificar
unicamente uma linha em uma tabela.
* Voc� consegue criar essas chaves prim�rias atrav�s de restri��es (constraints),
que s�o regras que vc define quando est� criando uma coluna.
* Assim quando voc� faz isso, est� criando um indice �nico para aquela colunaou grupo de colunas

CREATE TABLE nome_tabela(
	NomeColuna TipoDeDados PRIMARY KEY
	NomeColuna TipoDeDados...
)


===== FOREIGN KEY ===== (Chave Estrangeira)
* Uma chave estrangeira � uma coluna ou grupo de colunas em uma tabela
que identifica unicamente uma linha em outra tabela.
* Ou seja; uma chave estrangeira � definida em uma tabela onde ela � apenas
uma refer�ncia e n�o cont�m todos os dados nela.
* Sendo assim, uma chave estrangeira � apenas uma coluna ou grupo de colunas que � 
uma chave primaria em outra tabela.
* A tabela que cont�m a chave estrangeira � chamada de tabela REFERENCIADORA ou TABELA-FILHA.
E a tabela na qual a chave estrangeira � referenciada � chamada de TABELA-PAI.
* Uma tabela pode ter mais de uma chave estrangeira dependendo do seu relacionamento com as outras tabelas.
* No SQL SERVER definimos uma chave estrangeira atrav�s de um
"FOREIGN KEY CONSTRAINT" ou restri��o de chave estrangeira.
* Uma restricao de chave estrangeira indica que os valoers em uma coluna ou grupo de colunas 
na tabela filho correspondem aos valores na tabela pai
* N�s ent�o podemos entender que ela mant�m a "INTEGRIDADE REFERENCIAL".