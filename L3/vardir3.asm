#-- Haz una nueva versión del programa anterior (vardir3.s) que haga lo mismo 
#-- PERO usando sólo el registro x5 con la dirección de la variable a. 
#-- Este registro NO se puede modificar, siempre debe contener la dirección
#-- de a, y es el único que se puede usar para acceder al resto de variables. 
#-- En los registros x10-x13 se deben cargar los valores de las variables a,b,c y d 
#-- (que valen 1,2,3 y 4) (Igual que en la versión anterior)

.data

a: .word 1
b: .word 2
c: .word 3
d: .word 4

.text
 la x5, a

 
 #-- Inicializar los registros
 lw x10, 0(x5)  #-- x10 = a
 lw x11, 4(x5)  #-- x11 = b
 lw x12, 8(x5)  #-- x12 = c
 lw x13, 12(x5)  #-- x13 = d

 li a7, 10
 ecall
 
#-- Este programa ocupa 32 bytes
#-- Es más óptimo este que vardir2.s ocupa menos