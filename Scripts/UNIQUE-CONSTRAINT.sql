/*
UNIQUE CONSTRAINT --> São colunas únicas, porém diferente de uma PRIMARY KEY
Podem existir varias colunas com a restrição UNIQUE.

Ela também não permite que sejam inseridos valores duplicados, garantindo consistência nos dados.

=====SYNTAXE=====
CREATE TABLE CtMotorista1(
	ID INT NOT NULL,
	Nome VARCHAR(150) NOT NULL,
	Idade int CHECH(Idade >= 18),
	CodigoCNH INT NOT NULL UNIQUE
);

*/

-- Criando nova tabela
CREATE TABLE CtMotorista1(
	ID INT NOT NULL,
	Nome VARCHAR(150) NOT NULL,
	Idade INT CHECK(Idade >= 18),
	CodigoCNH INT NOT NULL UNIQUE
);

-- Verificando os dados da nova tabela
SELECT *
FROM CtMotorista1

-- Inserindo dados na tabela
INSERT INTO CtMotorista1(ID, Nome, Idade, CodigoCNH)
VALUES(1, 'Maria', 45, 1000)

-- Verificando se os novos dados foram inseridos
SELECT *
FROM CtMotorista1

-- inserindo e verificando se a tabela aceita dados duplicados (campo CNH)
INSERT INTO CtMotorista1(ID, Nome, Idade, CodigoCNH)
VALUES(2, 'José', 53, 1000)

/*
-- A mensagem de erro foi;
Mensagem 2627, Nível 14, Estado 1, Linha 38
Violação da restrição UNIQUE KEY 'UQ__CtMotori__F42C573FCBB75A4D'.
Não é possível inserir a chave duplicada no objeto 'dbo.CtMotorista1'. O valor de chave duplicada é (1000).

*/