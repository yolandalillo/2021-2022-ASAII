#-- Ejercicio 3
#-- Modificar el programa anterior, tanto el principal como la subrutina línea para que ahora la función línea 
#-- admita dos parámetros: car,x, siendo car el carácter a repetir y x el número de repeticiones:

#-- Este sería el propotitpo de la nueva función:
#-- #-- void linea (char car, int x) El primer argumento es un carácter y el segundo un entero. La función No devuelve nada

#-------------------------------------------------------
#-- PROGRAMA PRINCIPAL
#-------------------------------------------------------

	.include "servicios.asm"
	
	.data
msg1:   .string "\nIntroduce el caracter: "	
msg2:	.string "\nIntroduce la cantidad: "
	
	.text
	
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir el caracter
	li a7, READ_CHAR
	ecall
	
	#-- t0 contiene el carácter 
	mv t0, a0
	
	#-- Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir la cantidad
	li a7, READ_INT
	ecall
	
	#-- t1 contiee el numero de caracteres a imprimir
	mv t1, a0
	
	#-- Llamar a la funcion linea(car, x)
	mv a0, t0
	mv a1, t1
	jal linea
	
	#-- Terminar
	li a7, EXIT
	ecall