/*

# Vamos aprender o que são chaves primárias e chaves estrangeiras.
# Veremos exemplos de como usar eles para criar colunas e tabelas,
porém veremos isso em detalhes nas aulas sobre criação de tabelas.

===== PRIMARY KEY ==== (Chave Primária)
* Uma chave primária é basicamente uma coluna ou grupo de colunas, usada para identificar
unicamente uma linha em uma tabela.
* Você consegue criar essas chaves primárias através de restrições (constraints),
que são regras que vc define quando está criando uma coluna.
* Assim quando você faz isso, está criando um indice único para aquela colunaou grupo de colunas

CREATE TABLE nome_tabela(
	NomeColuna TipoDeDados PRIMARY KEY
	NomeColuna TipoDeDados...
)


===== FOREIGN KEY ===== (Chave Estrangeira)
* Uma chave estrangeira é uma coluna ou grupo de colunas em uma tabela
que identifica unicamente uma linha em outra tabela.
* Ou seja; uma chave estrangeira é definida em uma tabela onde ela é apenas
uma referência e não contém todos os dados nela.
* Sendo assim, uma chave estrangeira é apenas uma coluna ou grupo de colunas que é 
uma chave primaria em outra tabela.
* A tabela que contém a chave estrangeira é chamada de tabela REFERENCIADORA ou TABELA-FILHA.
E a tabela na qual a chave estrangeira é referenciada é chamada de TABELA-PAI.
* Uma tabela pode ter mais de uma chave estrangeira dependendo do seu relacionamento com as outras tabelas.
* No SQL SERVER definimos uma chave estrangeira através de um
"FOREIGN KEY CONSTRAINT" ou restrição de chave estrangeira.
* Uma restricao de chave estrangeira indica que os valoers em uma coluna ou grupo de colunas 
na tabela filho correspondem aos valores na tabela pai
* Nós então podemos entender que ela mantém a "INTEGRIDADE REFERENCIAL".
