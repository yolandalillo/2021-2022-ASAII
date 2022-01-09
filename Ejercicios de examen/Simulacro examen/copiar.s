#-- Subrutina copiar
#--
#-- Copia la cadena original en el desitino
#--
#-- Dos valores de entrada
#-- a0: puntero cadena original
#-- a1: puntero memoria destino
#--
#-- Ninguna salida
#--

	.globl copiar
	
	.text

copiar:
	#-- NO necesitamos pila
	
bucle:
	#-- Leer caracter actual
	lb t0, 0(a0)
	
	#-- Si es \0, terminar
	beq t0, zero, fin
	
	#-- Copiamos el caracter a la cadena destino
	sb t0, 0(a1)
	
	#-- Incrementar los punteros
	addi a0, a0, 1
	addi a1, a1, 1
	
	#-- Repetir
	b bucle

fin:
	#-- Copiar el \0 al final de la cadena destino
	sb zero, 0(a1) #-- WHAT?
	ret