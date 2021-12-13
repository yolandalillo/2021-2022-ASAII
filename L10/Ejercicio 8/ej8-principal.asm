#-- Ejercicio 8

#-- El programa principal pide al usuario que introduzca el carácter, la anchura y la altura. Luego llama a box() co nestos parámetros 
#-- para imprimir el rectángulo en la consola. Por último termina

#-- Programa principal

	.include "servicios.asm"
	
	.data
msg_char: .string "\n Carácter:"
msg_anch: .string "\n Anchura:"
msg_alt: .string "Altura:"

	.text
	
	#----- Pedir caracter
	la a0,msg_char
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_CHAR
	ecall
	
	#-- Guardar caracter en s0
	mv s0, a0
	
	#----- Pedir la anchura
	la a0, msg_anch
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Guardar anchura en s1
	mv s1, a0
	
	
	#----- Pedir la altura
	la a0, msg_alt
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Guardar altura en a2
	mv a2, a0
	
	
	#--- Llamar a la subrutina box(car, anch, alt)
	mv a0, s0
	mv a1, s1
	jal box
	
	#-- Terminar
	li a7, EXIT
	ecall