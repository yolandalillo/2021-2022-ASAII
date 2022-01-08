En un computador con arquitectura base RV64I (Risc-V de 64 bits) se ha definido un array de dobles palabras en un lenguaje de alto nivel. Implementar en ensamblador de ese computador las instrucciones que permite calculas las siguientes expresiones. Supón que la dirección base del array A se encuentra en el registro s0, y la variable h en el registro s1

a) a = h + A[8]. Utiliza el registro t0 para la variable a

El enunciado nos proporciona la dirección base del array, que está en s0 y también la variable h, que está en el registro s1. Para implementar la expresión lo primero es obtener el elemento A[8] que está en memoria. Esto lo hacemos una instrucción de load-doble word (ld). El elemento del array a leer es el que tiene índice 8. Como es un array de dobles palabras, este elemento se encuentra en la dirección A + 8 * 8 (ya que una doble palabra son 8 bytes)

El código pedido es el siguiente:

``
ld t1, 64(s0)    #-- t1 = A[8]
addi t0, s1, t1  #-- t0 = h + A[8]``

b) A[12] = h + A[8]. El resultado de h + A[8] se almacena en el propio array A, en el índice 12

Para almacenar h + A[8] en la posición 12 del array hay que obtener su dirección: A + 12 * 8 = A + 96. En el apartado anterior ya tenemos en el registro t0 el resultado h + A[8], así que simplemente habrá que guardar t0 en la dirección A + 96 usando la instrucción store-double-word (sd). El programa completo es:

``
ld t1, 64(s0)    #-- t1 = A[8]
addi t0, s1, t1  #-- t0 = h + A[8]
sd t0, 96(s0)    #-- A[12] = h + A[8]``
