#-- EJERCICIO4
#-- Escribe un programa que pida al usuario que introduzca un número entero (n), se impriman en pantalla 
#-- los números de 1 hasta n, separados por una el carácter ','y termine. En esta animación se muestra un 
#-- ejemplo de funcionamiento del programa. Se ejecuta dos veces. En la primera se introduce n=5, y e la segunda n=10:

	.include "servicios.asm"
	
	.data
	
msg_num: .string "Introduce un numero (n): "	
	
	.text
	
	#------ Pedir numero n al usuario
	la a0, msg_num
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- a0 contiene n. Lo guardamos en t1
	mv t1, a0
	
	#-- t0 es el contador
	li t0, 0
	
	#--- Bucle
bucle:

	#-- Si t0 == n, terminar
	beq t0, t1, fin_bucle

	#-- Incrementar contador
	addi t0, t0, 1
	
	#-- Imprimir el contador
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir el carater de separacion ','
	li a0, ','
	li a7, PRINT_CHAR
	ecall
	
	#-- Repetir
	b bucle
	
fin_bucle:	
	
	#-- Terminar
	li a7, EXIT
	ecall
