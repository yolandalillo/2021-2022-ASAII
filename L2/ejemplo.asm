#-- Programa para calcular la suma de los números enteros: 1+2+3+4+5+...

.text

	# --- Inicializar
	# --- x5 es el contador
	# --- x6 acumulador (suma de los enteros)
	addi x5,x0,0 # x5 = 0
	addi x6,x0,0 # x5 = 0
bucle:	
	addi x5,x5,1 #-- x5=x5+1
	
	#-- x6 = x6 + x5
	add x6, x6,x5
	
	b bucle