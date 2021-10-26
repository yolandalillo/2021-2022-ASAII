#-- Ejercicio 4
#-- Escribe un programa que saque un mensaje pidiendo al usuario que entre un texto: "Introduce un texto: ", 
#-- el usuario lo introduce y se almacena en una cadena en memoria. A continuación se escribe el mensaje 
#-- "Esto es lo que has escrito: ". En la siguiente línea debe aparecer el texto introducido por el usuario

#-- Reserva en memoria 1024 bytes para el almacenamiento de esta cadena, definida en tiempo de ejecución

#-- Una vez que te funcione, pruébalo con la siguiente cadena: "Busca el caracter X" (introdúcelo sin las comillas). 
#-- ¿En qué dirección está almacenado el carácter X?

	#-- Codigos de servicio
	.include "servicios.asm"
	
	#-- Tamaño maximo del texto
	.eqv MAX 1024
	
	.data
#-- Mensajes de salida
message1: .string "Introduce un texto: "
message2: .string "Esto es lo que has escrito: "
#-- Texto que introduce el usuario
texto: .space MAX

	.text

	#-- Imprimir primer mensaje
	la a0, message1
	li a7, PRINT_STRING
	ecall
	#-- Pedir cadena de caracteres
	la a0, texto
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Imprimir segundo mensaje
	la a0, message2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir cadena de caracteres introducida por el usuario
	la a0, texto
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall

#-- Si escribimos busca el caracter X, esa X esta almacenada en la dirección 0x10010045