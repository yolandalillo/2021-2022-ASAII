#-- Modifica el ejercicio1  para realizar la suma de los números pares: 2 + 4 + 6 + 8 + 10 + ....

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 2   #-- x5 = x5 + 2
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle
	

	
# -- Tiene 5 instrucciones que corresponde a un total de 20 bytes
# -- Ejercicio sin terminar, preguntar dudas