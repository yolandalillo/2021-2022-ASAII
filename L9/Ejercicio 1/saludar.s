#-- Ejercicio 1. Apartado 2.
#-- Modificar la implementaci�n para que el programa principal se encuentre en un fichero: Ej1-main1.s y la funci�n saludar
#-- en otro: saludar.s. Ejecutarlo y comprobar que el funcionamiento es igual. Ambos ficheros tiene que tener las direcivas .text 
#-- y .data para indicar al ensamblador qu� es c�digo y qu� son datos (dado que ambas partes tienen tanto c�digo como datos)
	#-----------------------------------------
	#------ SUBRUTINA: saludar
	#------   * Parametros de entrada: Ninguno
	#------   * Parametros de salida: Ninguno
	#-----------------------------------------
	
	.include "servicios.asm"

	#-- Punto de entrada de la subrutina
	.globl saludar
	
	.data
msg_saludo: .string "Hola!\n"	
	
	.text
saludar:
	#-- Saludar
	la a0, msg_saludo
	li a7, PRINT_STRING
	ecall
	
	#-- Retornar al punto de salida
	ret
	