#-- Ejercicio 2

#-- Escribe un programa que pida al usuario un número entero, al que llamaremos x. A continuación el programa imprimirán 
#-- una lína con x caracteres '*' (asteriscos). Así, si se introduce el 10, el programa imprimirá la cadena: "**********"

#-- Este programa debe llamar a la subrutina línea(x) que recibe como entrada el parámetro x (número de asteriscos a imprimir)
#--  y no devuelve nada. El programa principal pide el número de caracteres al usuario, llama a la función linea y termina

#-------------------------------------------------------
#-- PROGRAMA PRINCIPAL
#-------------------------------------------------------

	.include "servicios.asm"
	
	.data
msg1:	.string "Introduce el numero de asteriscos: "
	
	.text
	
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir el numero de asteriscos
	li a7, READ_INT
	ecall
	
	#-- a0 contiene el numero de asteriscos
	
	#-- Llamar a la funcion linea(a0)
	jal linea
	
	#-- Terminar
	li a7, EXIT
	ecall
