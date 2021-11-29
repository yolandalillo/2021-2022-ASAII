#-- Ejercicio 1. Apartado 2.
#-- Modificar la implementaci�n para que el programa principal se encuentre en un fichero: Ej1-main1.s y la funci�n saludar
#-- en otro: saludar.s. Ejecutarlo y comprobar que el funcionamiento es igual. Ambos ficheros tiene que tener las direcivas .text 
#-- y .data para indicar al ensamblador qu� es c�digo y qu� son datos (dado que ambas partes tienen tanto c�digo como datos)


	.include "servicios.s"
	.data
msg_main:   .string "Comienza el programa principal\n"

	
	.text
	
	#----- PROGRAMA PRINCIPAL ----------------
	
	#-- Imprimir mensaje desde programa principal
	la a0, msg_main
	li a7, PRINT_STRING
	ecall
	
	#-- Llamar a la subrutina
	jal saludar
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall