/* Tipos de Dados;
# 1.Booleano =>
por padr�o ele � inicializado como nulo , e pode receber tanto 1 ou 0. Usa-se BIT

# 2.Caracteres =>

----Tamanho Fixo (char)----
Permite inserir uma quantidade fixa de caracteres e sempre
ocupa todo espa�o reservado, ou seja; o limite m�ximo � 50 caracteres,
por�m mesmo que os caracteres possuem apenas 10,ser�o reservados 50 em espa�o de mom�ria.

----Tamanho variavel (varchar/nvarchar)----
Permite inserir at� umquantidade que for definida, por�m s� usa
o espa�o que for realmente preenchido.


# 3. N�meros =>

===== Valores Exatos =====
TINYINT --> N�o tem parte valor fracionados ou seja, ser� um numero inteiro (Ex: 1.45, 1.58)
somente 1, 10 ,987...
SMALLINT --> Mesma coisa por�m com um limite maior que o TINYINT
INT --> Mesma coisa por�m com um limite maior que o SMALLINT
BIGINT --> Mesma coisa por�m com limite maior que todas as demais op��es.
NUMERIC ou DECIMAl --> Valores exatos por�m, permite ter partes fracionados que tamb�m poder� ser especificado
a precis�o e escala ( numero de digitos na parte fracional. Ex: 5.2, 123.45)

===== Valores Aproximados =====
REAL --> Tem precis�o aproximada de at� 15 digitos(numeros ap�s a virgula)
FLOAT --> Mesmo conceito do real

===== Temporais (Temporal) =====
DATE --> Armazena data no formato aaaa/mm/dd
DATETIME --> Armazena data, hora(minutos e segundos tamb�m) no formato aaaa/mm/dd:HH:MM:SS
DATETIME2 --> Mesmo conceito que o DATETIME por�m ser�o adicionados os mil�segundos aaaa/mm/dd:hh:mm:sssssss
SMALLDATETIME --> Armazena data e hora mas dentro de um range padr�o (1900-01-01:01:00:00:00 at� 2079-06-06:23:59:59).
TIME --> Armazena Horas, Minutos, Segundos e Milisegundos respeiando o limite de 00:00:00.0000000 at� 25:59:59.9999999
DATETIMEOFFSET --> Armazena informa�oes de Data e hora incluindo o fuso hor�rio