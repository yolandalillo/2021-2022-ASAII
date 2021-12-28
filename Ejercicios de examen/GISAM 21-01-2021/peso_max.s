#-- Calcular peso maximo entre dos cadenas
#-- Entradas:
#-- a0: puntero de la primera cadena
#-- a1: puntero de la segunda cadena
#-- Salidas:
#-- a0 : peso de la cadena maxima

	.globl pesomax
	
	.text
	
pesomax:
	#-- Creamos pila porque es una función que llama a otra función
	addi sp, sp, -16
	sw ra, 12(sp)
	
	#-- Guardamos la cadena 2 en la pila
	sw a1, 8(sp)
	
	#-- Calcular peso cadena 1
	jal peso
	
	#-- Guardar peso cadena 1 en pila
	sw a0, 4(sp)
	
	#-- Calcular peso cadena 2
	lw a0, 8(sp)
	jal peso 
	
	#-- Recuperar el peso de cad1 de la pila
	lw a1, 4(sp)
	
	#-- Calcular el maximo entre los dos
	jal max
	
	#-- Recuperar la direccion de retorno y liberar la pila
	lw ra, 12(sp)
	addi sp, sp, 16
	
	ret