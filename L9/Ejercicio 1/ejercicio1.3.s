#-- Ejercicio 1. Apartado 2.
#-- Modificar el programa principal para que llame a la función saludar 2 veces y nos aparezca el saludo dos veces 
#-- por tanto (no usar bucle, sino simplemente llamar a la función dos veces seguidas)

#-- El fichero de la subrutina "saludar.s" es el mismo, no hace falta modificarlo

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
	
	#-- Volver a llamar a la subrutina
	jal saludar
	
	#-- Terminar (Punto de salida)
	li a7, EXIT
	ecall
