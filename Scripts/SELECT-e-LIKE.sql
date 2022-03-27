/* SQL, Comando LIKE -> Suponhamos que voc� queira encontrar uma pessoa no banco de dados,
e sponhamos que voc� saiba apenas as inicias do nome e deja saber qual o nome completo dela tipo ant...

para buscar todas as rela��es com as inicias do nome dela, voc� usaria os comandos abaixo;

SELECT *
FROM tabela.tabela (por exemplo)
WHERE FirstName like 'ant%' -> o percentual que n�o importa o complemento da palavra, mas os argumentos que foram passados
*/

-- Exemplo 1 - par�metros no inicio
SELECT *
FROM Person.Person
WHERE FirstName like 'ant%'

-- Exemplo 2 - par�metros no final
SELECT *
FROM Person.Person
WHERE FirstName like '%nio'

-- Exemplo 3 - Independente do inicio ou fim
SELECT *
FROM Person.Person
WHERE FirstName like '%ton%'

-- Exemplo 4 - buscando combina��es no final mas com apenasuma letra depois dos par�metros
SELECT *
FROM Person.Person
WHERE FirstName like '%ni_' -- Usa-se o underline para especiicar quantos caracteres queremos antes ou depois dos argumentos