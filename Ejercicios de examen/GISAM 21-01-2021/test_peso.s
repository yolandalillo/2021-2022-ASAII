#-- Programa para probar la funcion peso.s

	.include "so.s"
	
	.data
	
cad: .string "ab"

msg1: .string "\nPeso de la cadena "
msg2: .string ": "

	.text
	
main: 
	#-- Calcular el peso de cad
	la a0, cad
	jal peso 
	
	#-- Guardar peso en s0
	mv s0, a0
	
	#-- Imprimir mensaje 1
	li a7, PRINT_STRING
	la a0, msg1
	ecall
	
	#-- Imprimir cadena original
	li a7, PRINT_STRING
	la a0, cad
	ecall
	
	#-- Imprimir mensaje 2
	li a7, PRINT_STRING
	la a0, msg2
	ecall
	
	#-- Imprimir peso
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
	