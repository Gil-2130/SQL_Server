/*

CREATE TABLE
Aprendendo a criar tabelas
Sintaxe;
CREATE TABLE NomeTabela (
	coluna1 tipo RestricaoDaColuna,
	coluna2 tipo RestricaoDaColuna,
	coluna3 tipo RestricaoDaColuna,
   ....
   
);
===== PRINCIPAIS TIPOS DE RESTRIÇÕES QUE PODEM SER APLICADAS =====
* NOT NULL --> Não Permite Nulos
* UNIQUE --> Força que todos os valores em uma coluna sejam diferentes
* PRIMARY KEY --> Uma junção de NOT NULL e UNIQUE
* FOREIGN KEY --> Identificação de uma unica linha em outra tabela
* CHECK --> Força uma condição especifica em uma coluna.
* DEFAULT --> Força um valor padrão quando nenhum valor é passado

*/


CREATE TABLE Canal (
	CanalID INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	ContagemInscritos INT DEFAULT 0,
	DataCriacao DATETIME NOT NULL

);

SELECT *
FROM Canal

CREATE TABLE Video(
	VideoID INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Visualizacoes INT DEFAULT 0,
	Likes INT DEFAULT 0,
	DisLikes INT DEFAULT 0,
	Duracao INT NOT NULL,
	CanalID INT FOREIGN KEY REFERENCES Canal(CanalID)
);

SELECT *
FROM Video

-- DESAFIO SIMPLES
-- Encontre 02 coisas em sua casa que podem se tornar tabelas
-- e crie duas tabelas que tem no minimo 1 relacionamento com a outra
