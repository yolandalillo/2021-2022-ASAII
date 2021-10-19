#-- Ejercicio 3
#-- Modifica el programa anterior para que los valores leidos se almacenen primero en las variables a y b. 
#-- Después se debe realizar la suma leyendo estas variables, depositar el resultado en la variable f y finalmente
#--imprimirlo por la cosola. Usa como único puntero para acceder a las tres variables el registro s0. 
#-- Ejecutar el programa y comprobar que las variables contienen los valores correctos, y que la suma es la que aparece en la consola

#-- Códigos
.eqv READ_INT 5
.eqv EXIT 10
.eqv PRINT_INT 10

#-- Constantes 
.eqv VA 0	
.eqv VB 4
.eqv VF 8
	
.data
#-- Variables inicializadas a 0
variables: 
        .word 0   #-- Variable a
	.word 0   #-- Variable b
	.word 0   #-- Variable f = a + b
.text

#-- s0: Puntero a las variables
la s0, variables
	
#-- Pedir el primer numero al usuario
li a7, READ_INT
ecall
	
#-- El valor introducido se devuelve en a0
#-- Almacenarlo en a
sw a0, VA(s0)
	
#-- Pedir el segundo numero
li a7, READ_INT
ecall
	
#-- Almacenarlo en b
sw a0, VB(s0)
	
#-- Realizar la suma. Nos indican explicitamente que leamos las variables
#-- t0 = a
lw t0, VA(s0)	
lw t1, VB(s0)	#-- t1 = b

add a0, t0, t1 #-- a0 = t0 + t1
	
#-- Almacenar la suma en F
sw a0, VF(s0)
	
#-- Imprimir el numero en la consola
li a7, PRINT_INT
ecall
	
#-- Terminar
li a7, EXIT
ecall