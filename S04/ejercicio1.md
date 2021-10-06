![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S04/images/ejercicio1.png)

a) ¿Cuantas instrucciones como máximo se pueden tener en esta arquitectura?
*El campo opcodes es de 5 bits. Esto significa que hay un total de 2^5 = 32 posibles valores. Es decir, 32 instrucciones como máximo*

b) ¿Cual es el tamaño máximo de la memoria del EDSAC (en palabras)? Supón que todos los datos son palabras de 17 bits
*El campo que contiene la direccion del operando en memoria tiene 10 bits por eso tendremos 2^10 = 1024 direcciones posibles, es decir el tamaño
máximo son 10 bits que corresponden a 1024 palabras.*

c) En la posición de memoria 921 se encuentra la variable var1, que tiene el valor 30 (de 17 bits). 
El código de operación de la instrucción de suma es el 11100 en binario, que suma al regisgtro acumulador 
el contenido de la variable de memoria indicada: A = A + variable, donde A es el acumulador del EDSAC. 
Escribe la instrucción en código máquina que hace la operación: A = A + var1
*La instrucción será:
opcode          11100
R               0
dirección dato 1110011001
T               0(17bits tamaño pequeño)*
