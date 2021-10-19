#-- Ejercicio 4
#-- Escribe un programa para pedir al usuario las 3 variables a,b y c, y 
#-- calcular la expresi�n f = (2*a - b) + c - 1 (es la misma expresi�n del ejercicio 1). 
#-- El resultado se imprime en la consola. No hace falta almacenar a,b, y f en memoria. Usar registros temporales

#-- C�digos 
	.eqv EXIT 10
	.eqv PRINT_INT 10
	.eqv READ_INT 5
	
	.text
	
#-- Leemos el primer numero introducido por el usuario.
	li a7, READ_INT
	ecall
#-- Movemos el n�mero a una variable temporal
	mv t0, a0 #-- t0 = a
#-- Leemos otro n�mero introducido por el usuario
	li a7, READ_INT
	ecall 
#-- Movemos el n�mero a una variable temporal
	mv t1, a0 #-- t1 = b
#-- Leemos otro n�mero introducido por el usuario
	li a7, READ_INT
	ecall 
#-- Movemos el n�mero a una variable temporal
	mv t2, a0 #-- t2 = c
#-- Calculamos expresi�n
	add t0,t0,t0 #-- t0 = 2*a
	
	sub t3, t0,t1 #-- t3 = (2*a - b)
	
	addi t4, t2,-1 #-- t4= c - 1
	add t5, t3,t4 #-- t5 =  (2*a - b) + c - 1
	#-- Movemos el resultado a una variable temporal
	mv t5, a0
	#-- Imprimimos el resultado 
	li a7, PRINT_INT
	ecall
	#-- Terminamos
	li a7, EXIT
	ecall

	
