#-- Ejercicio 4
#-- Escribe un programa que saque un mensaje pidiendo al usuario que entre un texto: "Introduce un texto: ", 
#-- el usuario lo introduce y se almacena en una cadena en memoria. A continuaci�n se escribe el mensaje 
#-- "Esto es lo que has escrito: ". En la siguiente l�nea debe aparecer el texto introducido por el usuario

#-- Reserva en memoria 1024 bytes para el almacenamiento de esta cadena, definida en tiempo de ejecuci�n

#-- Una vez que te funcione, pru�balo con la siguiente cadena: "Busca el caracter X" (introd�celo sin las comillas). 
#-- �En qu� direcci�n est� almacenado el car�cter X?

	#-- Codigos de servicio
	.include "servicios.asm"
	
	#-- Tama�o maximo del texto
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

#-- Si escribimos busca el caracter X, esa X esta almacenada en la direcci�n 0x10010045