#--Modifica el programa anterior (llámalo vardir2.s) para que cargue los valores de las variables a,b,c y d 
#-- en los registros x10, x11, x12 y x13. En el segmento de datos las variables deben estar inicializadas 
#-- a 1,2,3 y 4 respectivamente. Ensambla el programa y comprueba que los registros x10-x13 tiene los valores 1,2,3 y 4 respectivamente

.data

a: .word 1
b: .word 2
c: .word 3
d: .word 4

.text
 la x5, a
 la x6, b
 la x7, c
 la x8, d
 
 #-- Inicializar los registros
 lw x10, 0(x5)  #-- x10 = a
 lw x11, 0(x6)  #-- x11 = b
 lw x12, 0(x7)  #-- x12 = c
 lw x13, 0(x8)  #-- x13 = d

 li a7, 10
 ecall
 
 
#-- El programa ocupa 56 bytes
 