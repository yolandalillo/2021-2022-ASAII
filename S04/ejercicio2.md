Ejercicio 2
El formato de las instrucciones del Computador de guiado del Apolo XI (1969), la nave que nos llevó a la Luna, es el siguiente:
![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S04/images/ejercicio2.PNG)
En cada posición de memoria se almacena un dato de 16 bits (medias palabras). Así, en la dirección 0 está el primer dato de 16 
bits, en la direción 1 el segundo, etc... La unidad mínima de intercambio con la memoria son 16 bits

a) ¿Cuantas instrucciones como máximo se pueden tener en esta arquitectura?
*El campo opcodes es de 3 bits,es decir, hay 2^3=8 instrucciones como máximo*

b) ¿Cual es el tamaño máximo de la memoria del AGC (en unidades de 16 bits)?
*El campo dirección de dato contiene 12 bits que es la direccion del operando en memoria, por tanto, solo puede tener
2^12 = 4096 direcciones de máximo. Por eso para los 16 bits solo tenemos 4096 palabras*

c) En la memoria se encuentran dos variables de 16 bits referenciadas por las etiquetas var1 y var2. La instrucción en ensamblador
que realiza la operación A = A + var se escribe como: AD var, donde var es la etiqueta de referencia de la variable y A es el 
registro acumulador. Escribe las instrucciones en ensamblador del AGCC para calcular A = var1 + var2. Supón que inicialmente el 
acumulador vale 0
*AD var1
AD var 2*

d) Si las etiquetas var1 y var2 se corresponden con las direcciones 0x080 y 0x1F0, y el código de operación de la instruccion 
AD es 011 en binario, escribe en código máquina (en hexadecimal) del programa del apartado c
*Opcode              dirección de dato
(3bits)(AD)  011    (0x080)(128)000010000000
(3bits)(AD) 011     (0x1F0)(496)000111110000

Ahora pasamos a hexadecimal ambos valores:
011000010000000 = 0x3080 (lo hago con calculadora)
011000111110000 = 0x31F0*
