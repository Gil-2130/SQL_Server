/* CREATE TABLE
Aprendendo a criar tabelas
Sintaxe;
CREATE TABLE NomeTabela (
	coluna1 tipo RestricaoDaColuna,
	coluna2 tipo RestricaoDaColuna,
	coluna3 tipo RestricaoDaColuna,
   ....
);
===== PRINCIPAIS TIPOS DE RESTRI��ES QUE PODEM SER APLICADAS =====
* NOT NULL --> N�o Permite Nulos
* UNIQUE --> For�a que todos os valores em uma coluna sejam diferentes
* PRIMARY KEY --> Uma jun��o de NOT NULL e UNIQUE
* FOREIGN KEY --> Identifica��o de uma unica linha em outra tabela
* CHECK --> For�a uma condi��o especifica em uma coluna.
* DEFAULT --> For�a um valor padr�o quando nenhum valor � passado
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