#-- Ejercicio 2

#-- Escribe un programa que pida al usuario un n�mero entero, al que llamaremos x. A continuaci�n el programa imprimir�n 
#-- una l�na con x caracteres '*' (asteriscos). As�, si se introduce el 10, el programa imprimir� la cadena: "**********"

#-- Este programa debe llamar a la subrutina l�nea(x) que recibe como entrada el par�metro x (n�mero de asteriscos a imprimir)
#--  y no devuelve nada. El programa principal pide el n�mero de caracteres al usuario, llama a la funci�n linea y termina

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
