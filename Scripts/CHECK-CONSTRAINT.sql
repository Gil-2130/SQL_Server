/* 
CHECK CONSTRAINT -->
Criando restri�oes de valores que podem ser inseridos em uma coluna de uma tabela em banco 
de dados quando voc� est� criando uma nova tabela.

Basicamente � como se fosse uma condi��o que deve ser atendida qunado os dados forem inseridos.

Syntaxe;

CREATE TABLE CarteiraMotorista(
	ID INT NOT NULL,
	Nome VARCHAR(150) NOT NULL,
	Idade INT CHECK(Idade >= 18)
);

*/
--Vendo isso na pr�tica;
CREATE TABLE CarteiraMotorista(
	ID INT NOT NULL,
	Nome VARCHAR(150),
	Idade INT CHECK(Idade >= 18)
);

-- Verificando se a tabela foi criada
SELECT *
FROM CarteiraMotorista

-- Inserindo valores na tabela (Vamos provocar um erro para ver a restri��o em a��o)
INSERT INTO CarteiraMotorista(ID, Nome, Idade)
VALUES(1, 'Giliard', 17)

/*
-- A mensagem de erro foi;

Mensagem 547, N�vel 16, Estado 0, Linha 29
A instru��o INSERT conflitou com a restri��o do CHECK "CK__CarteiraM__Idade__48CFD27E".
O conflito ocorreu no banco de dados "Youtube", tabela "dbo.CarteiraMotorista", column 'Idade'.

*/

-- Agora iremos inserir novamente os dados, mas atendendo a restri��o imposta.
INSERT INTO CarteiraMotorista(ID, Nome, Idade)
VALUES(1, 'Giliard', 25)

-- VErificando os novos dados inseridos;
SELECT *
FROM CarteiraMotorista

--===== DESAFIO =====

-- Criar 02 tabelas novas e aplicar restri��es para elas.
