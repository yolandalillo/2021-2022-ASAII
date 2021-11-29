#--  Ejercicio 1
#-- Se tiene este programa principal que imprime en la consola dos mensajes: Uno para indicar que comienza el programa y otro para
#-- saludar. Crea una subrutina llamada saludar, que se encargue de imprimir el mensaje del saludo. El programa principal debe imprimir
#-- el primer mensaje, llamar a la subrutina saludar para imprimir el segundo mensaje (el saludo) y terminar. Implementar la subrutina
#-- en el mismo fichero que el programa principal, con su punto de entrada después del punto de salida del programa principal. 
#-- Las constantes con los códigos de los servicios del sistema operativo se ha colocado en el fichero servicios.s

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
	#-----------------------------------------
	#------ SUBRUTINA: saludar
	#------   * Parametros de entrada: Ninguno
	#------   * Parametros de salida: Ninguno
	#-----------------------------------------
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
