En un computador con arquitectura base RV64IM (Risc-V de 64 bits con la extensión de multiplicación y división de enteros) se han definido dos Arrays: A y B en un lenguaje de alto nivel. Se quiere implementar la siguiente expresión

B[12] = h - A[i]

Supón que la dirección base del array B se encuentra en el registro s4, la dirección base del array A en el registro s3, la variable h en el registro s2 y la variable i en el registro s1

Implementar en ensamblador de ese computador las instrucciones que permite calcular esa expresión para los siguientes tipos de datos almacenados en el array:

*El código será muy parecido en todos los casos: las acciones a realizar son las mismas, pero cambian los valores a multiplicar los índices de los arrays para acceder a los elementos. Hay que multiplicar por el tamaño en bytes de cada tipo de dato. En el caso de dobles palabras se multiplica por 8, para las palabras por 4, para las medias palabras por 2 y se multiplica por 1 para los bytes*

a) Los elementos del array son dobles palabras
``#-- Datos enunciado:
#-- s1 = i

#-- s2 = h

#-- s3 = A

#-- s4 = B

li t0, 8

mul t1, s1, t0  #-- t1 = i * 8

add s5, s3, t1  #-- s5 = A + i * 8

ld t2, 0(s5)    #-- t2 = A[i*8]

sub t3, s2, t2  #-- t3 = h - A[i*8]

sd t3, 96(s4)   #-- B[12] = h - A[i*8]``

b) Los elementos del array son palabras

``#-- Datos enunciado:

#-- s1 = i

#-- s2 = h

#-- s3 = A

#-- s4 = B

li t0, 4

mul t1, s1, t0  #-- t1 = i * 4

add s5, s3, t1  #-- s5 = A + i * 4

lw t2, 0(s5)    #-- t2 = A[i*4]

sub t3, s2, t2  #-- t3 = h - A[i*4]

sw t3, 48(s4)   #-- B[12] = h - A[i*4]``

c) Los elementos del array son medias palabras

``#-- Datos enunciado:

#-- s1 = i

#-- s2 = h

#-- s3 = A

#-- s4 = B

li t0, 2

mul t1, s1, t0  #-- t1 = i * 2

add s5, s3, t1  #-- s5 = A + i * 2

lh t2, 0(s5)    #-- t2 = A[i*2]

sub t3, s2, t2  #-- t3 = h - A[i*2]

sh t3, 24(s4)   #-- B[12] = h - A[i*2]``

d) Los elementos del array son bytes
``#-- Datos enunciado:

#-- s1 = i

#-- s2 = h

#-- s3 = A

#-- s4 = B

mv t1, s1  #-- t1 = i 

add s5, s3, t1  #-- s5 = A + i

lb t2, 0(s5)    #-- t2 = A[i]

sub t3, s2, t2  #-- t3 = h - A[i]

sb t3, 12(s4)   #-- B[12] = h - A[i]``

