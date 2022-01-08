En un computador con arquitectura base RV64IM (Risc-V de 64 bits) se han definido un array A en un lenguaje de alto nivel. Se quiere implementar la siguiente expresión

``A[12] = h + A[i]``

Supón que la dirección base del array A se encuentra en el registro s3, la variable h en el registro s2 y la variable i en el registro s1

Implementar en ensamblador de ese computador las instrucciones que permite calcular esa expresión para los siguientes tipos de datos almacenados en el array:

a) Los elementos del array son dobles palabras

``
#-- Datos enunciado: 

#-- s1 = i

#-- s2 = h

#-- s3 = A

li t0, 8

mul t1, s1, t0  #-- t1 = i * 8

add s4, s3, t1  #-- s4 = A + i * 8

ld t2, 0(s4)    #-- t2 = A[i*8]

add t3, s2, t2  #-- t3 = h + A[i*8]

sd t3, 96(s3)   #-- A[12] = h + A[i*8]
``

b) Los elementos del array son palabras
``#-- Datos enunciado: 

#-- s1 = i

#-- s2 = h

#-- s3 = A

li t0, 4

mul t1, s1, t0  #-- t1 = i * 4

add s4, s3, t1  #-- s4 = A + i * 4

lw t2, 0(s4)    #-- t2 = A[i*4]

add t3, s2, t2  #-- t3 = h + A[i*4]

sw t3, 48(s3)   #-- A[12] = h + A[i*4]``

c) Los elementos del array son medias palabras

``#-- Datos enunciado: 

#-- s1 = i

#-- s2 = h

#-- s3 = A

li t0, 2

mul t1, s1, t0  #-- t1 = i * 2

add s4, s3, t1  #-- s4 = A + i * 2

lh t2, 0(s4)    #-- t2 = A[i*2]

add t3, s2, t2  #-- t3 = h + A[i*2]

sh t3, 24(s3)   #-- A[12] = h + A[i*2]
``

d) Los elementos del array son bytes

``#-- Datos enunciado: 

#-- s1 = i

#-- s2 = h

#-- s3 = A

li t0, 2

mv t1, s1,      #-- t1 = i

add s4, s3, t1  #-- s4 = A + i

lb t2, 0(s4)    #-- t2 = A[i]

add t3, s2, t2  #-- t3 = h + A[i]

sb t3, 12(s3)   #-- A[12] = h + A[i]``
