/* 
Tipos de Dados;
# 1.Booleano =>
por padrão ele é inicializado como nulo , e pode receber tanto 1 ou 0. Usa-se BIT

# 2.Caracteres =>

----Tamanho Fixo (char)----
Permite inserir uma quantidade fixa de caracteres e sempre
ocupa todo espaço reservado, ou seja; o limite máximo é 50 caracteres,
porém mesmo que os caracteres possuem apenas 10,serão reservados 50 em espaço de momória.

----Tamanho variavel (varchar/nvarchar)----
Permite inserir até umquantidade que for definida, porém só usa
o espaço que for realmente preenchido.


# 3. Números =>

===== Valores Exatos =====
TINYINT --> Não tem parte valor fracionados ou seja, será um numero inteiro (Ex: 1.45, 1.58)
somente 1, 10 ,987...
SMALLINT --> Mesma coisa porém com um limite maior que o TINYINT
INT --> Mesma coisa porém com um limite maior que o SMALLINT
BIGINT --> Mesma coisa porém com limite maior que todas as demais opções.
NUMERIC ou DECIMAl --> Valores exatos porém, permite ter partes fracionados que também poderá ser especificado
a precisão e escala ( numero de digitos na parte fracional. Ex: 5.2, 123.45)

===== Valores Aproximados =====
REAL --> Tem precisão aproximada de até 15 digitos(numeros após a virgula)
FLOAT --> Mesmo conceito do real

===== Temporais (Temporal) =====
DATE --> Armazena data no formato aaaa/mm/dd
DATETIME --> Armazena data, hora(minutos e segundos também) no formato aaaa/mm/dd:HH:MM:SS
DATETIME2 --> Mesmo conceito que o DATETIME porém serão adicionados os milísegundos aaaa/mm/dd:hh:mm:sssssss
SMALLDATETIME --> Armazena data e hora mas dentro de um range padrão (1900-01-01:01:00:00:00 até 2079-06-06:23:59:59).
TIME --> Armazena Horas, Minutos, Segundos e Milisegundos respeiando o limite de 00:00:00.0000000 até 25:59:59.9999999
DATETIMEOFFSET --> Armazena informaçoes de Data e hora incluindo o fuso horário
*/ 
