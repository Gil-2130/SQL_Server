/*

Iremos aprender a alterar a estrutura de uma tabela. Usando o ALTER TABLE

Sintaxe
ALTER TABLE NomeTabela

EXEMPLOS;
- Add, Remover, ou Alterar uma coluna
- Setar valores padrões para uma coluna
- Add ou remover restriçoes de colunas
- Renomear uma tabela

*/

-- Criando Novas Tabelas (Youtube1)
CREATE TABLE Youtube1(
ID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL UNIQUE,
Categoria VARCHAR(200) NOT NULL,
DataCriacao DATETIME NOT NULL
)

-- Verificando se a nova tabela foi criada
SELECT *
FROM Youtube1

-- Adicionando uma coluna á tabela
ALTER TABLE Youtube1
ADD Ativo BIT
-- Verificando se a nova coluna foi adicionada
SELECT *
FROM Youtube1


/* 
=========ALterando a Tabela original===========

CREATE TABLE Youtube1(
ID INT PRIMARY KEY,
Nome VARCHAR(150) NOT NULL UNIQUE,
Categoria VARCHAR(200) NOT NULL,
DataCriacao DATETIME NOT NULL
)
*/
-- ALterando os limites da tabela original na coluna categoria
ALTER TABLE Youtube1
ALTER COLUMN Categoria VARCHAR(300) NOT NULL



-- =====Alterando o nome de uma coluna -- A Sintaxe é; =====
-- EXEC sp_rename 'NomeTabela.NomeColunaAtual', 'NomeColunaNova', 'COLUMN'
EXEC sp_rename 'Youtube1.Nome', 'NewName', 'COLUMN'

-- Por padrão, o SQL Server exibe a seguinte mensagem de aviso;
-- Cuidado: a alteração de qualquer parte de um nome de objeto pode interromper scripts e procedimentos armazenados.
-- Isso quer dizer que qualquer Script que estiver rodando usando o nome da antiga coluna, irá dar erro se não for atualizado

-- Verificando a nova alteração
SELECT *
FROM Youtube1


-- ===== Alterando o nome da tabela. A sintaxe é; =====
-- EXEC sp_rename 'NomeTabelaAtual', NomeTabelaNova'
EXEC sp_rename 'Youtube1', 'Youtube_01'

-- Também o SQL Avisa sobre possíveis erros em Scripts ao renomear um objeto;
-- Cuidado: a alteração de qualquer parte de um nome de objeto pode interromper scripts e procedimentos armazenados.

SELECT *
FROM Youtube1

-- Obviamente recebemos a mensagem de erro abaixo justamente por termos alterado o nome da tabela
-- Mensagem 208, Nível 16, Estado 1, Linha 69
-- Nome de objeto 'Youtube1' inválido.

-- O correto é;
SELECT *
FROM Youtube_01

--===== DESAFIO =====
-- Crie uma tabela nova com  03 colunas e em seguida;
-- 1. Altere o tipo de uma coluna!
-- 2. Renomeie o nome de uma das colunas!
-- 3. Renomeie o nome da tabela que você criou
