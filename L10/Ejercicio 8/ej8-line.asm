#-- Ejercicio 8

#-- La line(car,anch) tiene dos argumentos de entrada. El primer es un caracter y el segundo un entero. No tiene ning�n par�metro de salida. 
#-- Se imprime una l�nea formada por el car�cter car repetido anch veces

#-----------------------------------------
# Subrutina line(car, long)
#--
#--  Imprimir una linea con el caracter car y de longitud long
#--
#-- ENTRADA: 
#     a0: caracter a usar en la linea
#     a1: Numero de caracteres a usar
#-- SALIDA: Ninguna
#--------------------------------------------

	#-- Punto de entrada
	.globl line
	
	.include "servicios.asm"
	
	.text
	
line:	
bucle:
	#-- Quedan caracteres por imprimir?
	beq a1, zero, fin
	
	#-- Si. Imprimir el siguiente caracter
	li a7, PRINT_CHAR
	ecall
	
	#-- Queda un caracter menos
	addi a1, a1, -1
	
	#-- Repetir
	b bucle
	
fin:    #-- Imprimir el caracter de new line
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	ret