#-- Ejercicio 9
#-- Escribe un programa para leer un caracter usando el servicio ReadChar. 
#-- El programa se ejecuta en un bucle infinito. Lee el carácter, lo incrementa en una unidad , 
#-- lo imprime en la consola (es un cifrado muy simple) e imprime un salto de línea

#-- Códigos de servicio
.eqv READ_CHAR 12
.eqv PRINT_CHAR 11
#-- .eqv EXIT 10 #-- No lo necesitamos porque es un bucle infinito

.text

bucle:
	#-- Leer caracter del usuario
	li a7, READ_CHAR
	ecall
	
	#-- Incrementar el caracter una unidad
	addi a0, a0, 1
	
	#-- Imprimir el caracter en la consola
	li a7, PRINT_CHAR
	ecall
	
	#-- Imprimir un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall

	b bucle
