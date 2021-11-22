#-- Ejercicio 2

#-- Escribe un programa que pida al usuario que introduzca un carácter y que imprima su código ASCII. Su funcionamiento se muestra en esta animación

	.include "servicios.asm"
		
	.data

msg1: .string "Introduce un carácter"
msg2: .string "Su código ASCII es "

	.text
	
	#-- Imprimimos mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir al usuario un carácter
	li a7, READ_CHAR
	ecall
	
	#-- Guardar valor en t0 el valor que tenemos en a0
	mv t0, a0
	
	#-- Imprimimos mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir carácter ASCII
	mv a0,t0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
	