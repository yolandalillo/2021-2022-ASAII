#-- Ejercicio 3
#-- Escribe un programa que realice la suma de dos números enteros que se piden al
#-- usuario. El programa imprimirá el mensaje correspondiente en cada momento, 
#-- informando al usuario de lo que debe hacer: "Introduce primer numero", 
#-- "Introduce el segundo numero", y "La suma es: "

	.include "servicios.asm"
	
	.data
#-- Mensajes para imprimir 
message1: .string "Introduce primer numero"
message2: .string "Introduce el segundo numero"
message3: .string "La suma es: "

	.text 
	
	#-- Imprimir primer mensaje
	la a0, message1
	li a7, PRINT_STRING
	ecall
	#-- Pedir número
	li a7, READ_INT
	ecall
	#-- Guardar primer número en una variable
	mv t1, a0
	
	#-- Imprimir segundo mensaje
	la a0, message2
	li a7, PRINT_STRING
	ecall
	#-- Pedir número
	li a7, READ_INT
	ecall
	#-- Guardar segundo número en una variable
	mv t2, a0
	
	#-- Realizar la suma de los dos números 
	add t3,t1,t2
	
	#-- Imprimir tercer mensaje
	la a0, message3
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir resultado 
	li a7, PRINT_INT
	mv a0, t3
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall