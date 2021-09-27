	.text
	
	addi x5, x0, 3  
	addi x6, x0, 5  
	addi x7, x0, 7  
	addi x8, x0, 9  
	
	
	sub x9, x7, x8   
	add x6, x6, x6  #-- x6 = 2*x6
	add x6, x6, x6  #-- x6 = 2* (2*x6)
	sub x9, x6, x9   
	add x5, x5, x5    #-- x5 = X5 + X5 = 2*x5
	add x5, x5, x9   
	addi x10, x5, 15 
	
	#-- Terminar
	li a7, 10
	ecall 
#¿Cuál es la expresión?  x10 = 2x5 + 4x6 - (x7 - x8) + 15

#¿Para qué valores se prueba? Para los valores 3,5,7,9

#¿Cuanto vale el resultado? El resultado es x10 = 43

#¿Cuál es el valor del byte de la posición de memoria 0x00400015? Miramos la anterior que es 0x00400014 y por tanto el 03 contando por atrás los valores tercero y cuarto

#¿Cuantos bytes de memoria ocupa este programa? Ocupa 52 bytes, 13 instruciones * 4