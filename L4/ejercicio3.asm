#-- Modifica el programa anterior para que cada elemento de la tabla se incremente
#-- en INC unidades, donde INC es un identificador (prueba el programa con INC=1).
#-- El programa leerá cada elemento, lo incrementará en INC unidades y lo almacenará
#-- en su sitio. Simula el programa y comprueba que tras su ejecución, efectivamente 
#-- todos los elementos de la tabla se han modificado

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	.eqv INC 1
	
	.data
tabla:	.word 0xBEBECAFE, 0xFACEB00C, 0x00FABADA, 0xCACABACA
	
	.text
	
	la x5, tabla
	
	lw x10, E1(x5)
	lw x11, E2(x5)
	lw x12, E3(x5)
	lw x13, E4(x5)
	
	#-- Incrementar los registros en INC unidades
	addi x10, x10, INC
	addi x11, x11, INC
	addi x12, x12, INC
	addi x13, x13, INC
	
	#-- Actualizar la tabla con los nuevos valores
	sw x10, E1(x5)
	sw x11, E2(x5)
	sw x12, E3(x5)
	sw x13, E4(x5)
	#-- Terminar
	li a7, 10
	ecall
