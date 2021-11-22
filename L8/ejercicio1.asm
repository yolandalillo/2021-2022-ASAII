#-- Ejercicio 1

#-- Escribir un programa que pida al usuario un número entero y que imprima por pantalla su carácter ASCII correspondiente. 
#-- NOTA: Para que sea un caraćter ASCII visible, el entero deberá estar comprendido entre 33 y 126

	.include "servicios.asm"
		
	.data

msg1: .string "Introduce número entero"
msg2: .string "El carácter en ASCII es "

	.text
	
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Introducir número
	li a7, READ_INT
	ecall 
	
	#-- Guardar valor en t0 el valor que tenemos en a0
	mv t0, a0
	
	#-- Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir carácter ASCII
	mv a0, t0
	li a7, PRINT_CHAR
	ecall  #-- No olvidar que la lio, termina el programa sin imprimirme nada
	
	#-- Terminar
	li a7, EXIT
	ecall
	