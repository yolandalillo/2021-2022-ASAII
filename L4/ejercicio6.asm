#-- Escribe un programa que muestre por el display de 7-segmentos derecho el dígito 3. 
#-- Utiliza un identificador para este valor que hace aparecer un 3. Obtén los valores para que aparezca uno 1, 2 y 4

#-- Constantes

.eqv DISPLAY 0xFFFF0010

.eqv DIG3 0X4F #-- ¿Por qué?

.text
	
	#-- x5 es el puntero al display
	li x5, DISPLAY
	
	#-- Valor a sacar por el display
	li x6, DIG3
	
	#-- Sacarlo por el display
	sw x6, 0(x5)
	
	#-- Terminar
	li a7, 10
	ecall