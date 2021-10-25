#-- Error de alineamiento

	.eqv EXIT 10

	#-- En el segmento de datos se define
	#-- una cadena y una variable (palabra)
	.data
str:	.string "Hola"

	#-- Reservar 4 bytes para usarlos para almcenar una palabra
v1:     .word 0xcafebaca #--.space 4 lo cambiamos, así nos alinea la palabra porque ya no es bytes es palabra

	.text
	
	#-- t0 es el puntero a v1
	la t0, v1
	
	#-- Leer la variable v1 y meterla en el reg t1
	lw t1, 0(t0) #-- Aquí es donde peta, solo podemos leer palabra alineadas
	
	#-- Terminar
	li a7, EXIT
	ecall
