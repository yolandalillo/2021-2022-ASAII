#-- Ejercicio 6

#-- Programa principal

	.include "servicios.asm"
	
	.data
msg_x: .string "Coordenada x: "
msg_y: .string "Coordenada y: "
	
	.text
	
	#-- Pedir coordenada x
	la a0, msg_x
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Guardar coordenada en s0
	mv s0, a0
	
	#-- Pedir coordenada y
	la a0, msg_y
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	
	#-- Guardar coordenada en a1
	mv a1, a0
	
	mv a0, s0
	
	#-- Llamar a la subrutina operar
	jal operar
	
	#-- Fin
	li a7, EXIT
	ecall
	