/*
INSERT INTO nomeTabela(coluna1, coluna2,...)  -- Nome das colunas que ser�o inseridas as informa��es
VALUES(valor1, valor2)  --Valores que ser�o inseridos nas colunas (devem corresponder � mesma quantidade de colunas)
VALUES(valor1, valor2) -- Tamb�m � oissivel inserir quantas informa�oes desejar mas respeitando a quantidade de colunas

INSERT INTo TabelaA (coluna1)
SELECT coluna2
FROM TabelaB
*/

-- Criando Tabela dentro do banco de dados
CREATE TABLE Aula(
ID INT PRIMARY KEY,
Nome VARCHAR(150))

-- Verificando se a Tabela acima foi criada
SELECT * 
FROM Aula

-- Inserindo Valores
INSERT INTO Aula(ID, Nome)
VALUES(1, 'Aula 1')

-- Verificando se os Valores foram Inseridos
SELECT *
FROM Aula

-- Inserindo novas informa�oes em nossa tabela
INSERT INTO Aula(ID, Nome)
VALUES
(2, 'Aula 2'),
(3, 'Aula 3'),
(4, 'Aula 4'),
(5, 'Aula 5');

-- Verificando se os valores foram inseridos
SELECT *
FROM Aula

-- Copiando os dados de uma tabela existente e inserindo em outra
SELECT *
INTO TabelaNova
FROM Aula

-- Verificando se a abela nova foi criada
SELECT *
FROM TabelaNova

--========== DESAFIO ==========
--1. Crie Uma nova tabela
--2. Insira um alinha de dados nela
--3. Insira 03 linhas de dados ao mesmo tempo nela
--4. Crie uma segunda tabela
--5. Insira 1 Linha nessa nova tabela
--6. Copie os dados da segunda tabela para a primeira