#-- Ejercicio 3

#-- Escribir un programa que pida un carácter al usuario y lo convierta a su número correspondiente. El carácter debe ser un dígito '0'-'9'. 
#-- Si el usuario introduce un carácter diferente, se imprimirá un mensaje de error y se volverá a pedir otro carácter
#-- Una vez que se ha introducido un carácter correcto, se convierte al número entero que representa y se imprime en la consola

	.include "servicios.asm"
	
	.data

#-- Mejor no meter acentos	
msg1: .string "Introduce un número del 0 al 9: "
msg2: .string "\nEl número es: "
msg_error: .string "\nCarácter inválido\n"

	.text

bucle:
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir al usuario un carácter 
	#-- No ponemos READ_INT porque si ponemos una letra petaría
	li a7, READ_CHAR
	ecall
	#-- a0 tiene el carácter introducido
	
	#-- COMPROBAR RANGO 0 a 9, si no lo está repetir
		
	#-- Si el carácter es menor que 0 seguro que el rango es incorrecto
	li t0, '0'
	blt a0, t0, error
	
	#-- Si el carácter es mayor que 9, el rango es incorrecto
	li t0, '9'
	bgt a0, t0, error
	
	#-- Si llegamos aquí el carácter es correcto
	
	#-- Hacer la conversion t2 = a0 - '0' porque es un carácter y queremos un número
	li t0, '0'
	sub t1, a0,t0
	
	#-- Imprimir el número entero 
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	mv a0, t1 #-- Mover de t1 a a0, así nos lo pide el manual
	li a7, PRINT_INT
	ecall
	
	b fin
	

	

error:
	#-- Imprimir mensaje error
	la a0, msg_error
	li a7, PRINT_STRING
	ecall
	
	#-- Volver a pedir al usuario
	b bucle 

fin:
	#-- Terminar
	li a7, EXIT
	ecall
	