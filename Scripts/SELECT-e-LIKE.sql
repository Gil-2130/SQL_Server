/*
SQL, Comando LIKE -> Suponhamos que você queira encontrar uma pessoa no banco de dados,
e sponhamos que você saiba apenas as inicias do nome e deja saber qual o nome completo dela tipo ant...

para buscar todas as relações com as inicias do nome dela, você usaria os comandos abaixo;

SELECT *
FROM tabela.tabela (por exemplo)
WHERE FirstName like 'ant%' -> o percentual que não importa o complemento da palavra, mas os argumentos que foram passados

*/

-- Exemplo 1 - parâmetros no inicio
SELECT *
FROM Person.Person
WHERE FirstName like 'ant%'

-- Exemplo 2 - parâmetros no final
SELECT *
FROM Person.Person
WHERE FirstName like '%nio'

-- Exemplo 3 - Independente do inicio ou fim
SELECT *
FROM Person.Person
WHERE FirstName like '%ton%'

-- Exemplo 4 - buscando combinações no final mas com apenasuma letra depois dos parâmetros
SELECT *
FROM Person.Person
WHERE FirstName like '%ni_' -- Usa-se o underline para especiicar quantos caracteres queremos antes ou depois dos argumentos
