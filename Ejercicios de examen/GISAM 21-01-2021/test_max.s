#-- Programa principal que prueba la función max.s

	#-- Los codigos de servicio están en el fichero so.s
	.include "so.s"
	
	#-- Constantes con los numeros para probar
	.eqv K1 20
	.eqv K2 30
	
	.data
msg1: .string "\nCalcular valor max entre: "
msg2: .string " y "
msg3: .string "\nResultado: "
	
	.text
	
main:

	#-- Imprimir mensaje 1
	li a7, PRINT_STRING
	la a0, msg1
	ecall
	
	#-- Imprimir constante K1
	li a7, PRINT_INT
	li a0, K1
	ecall
	
	#-- Imprimir mensaje 2
	li a7, PRINT_STRING
	la a0, msg2
	ecall
	
	#-- Imprimir constante K1
	li a7, PRINT_INT
	li a0, K2
	ecall
	
	#-- Llamar a max
	li a0, K1
	li a0, K2
	jal max
	
	#-- Guardamos el resultado en s0
	mv s0, a0
	
	#-- Imprimir mensaje 3
	li a7, PRINT_STRING
	la a0, msg3
	ecall
	
	#-- Imprimir resultado
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
	