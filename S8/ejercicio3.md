**Ejercicio 3**

Repetir el ejercicio 2, con los mismos datos, pero para las instrucciones:

a) add x5, x5, x6

**Retardo Fetch: 400ps, este retardo está dado SIEMPRE por el retardo de la memoria, y será el mismo para TODAS las instrucciones

Retardo de decodificación: determinado por el retardo en la lectura del banco de registros, que es de 200ps

Retardo de ejecución: Determinado por la Alu. Los operandos que llegan a la Alu son x5 y x6. El multiplexor de entrada, en este caso, está seleccionando el registro fuente 2 (AluSrc=0). El retardo de esta fase está dado por el de la Alu, que lo conocemos: 120ps

Retardo de lectura de memoria: NO hay acceso a memoria: 0

Retardo de escritura: 0

Retardo total: 400ps + 200ps + 120ps = 720ps**

b) sub x7, x7, x8

c) and x9, x10, x11
