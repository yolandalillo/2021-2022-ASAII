#-- Mi primera llamada al sistema ;)
#-- Importante RTFM!!

	#-- Definimos constant, servicios del sistema operativo
	.eqv EXIT 10 #-- Servicio de EXIT (terminar)
	.eqv PRINT_INT 1 #-- Servicio impresión de un número entero
	.eqv READ_INT 5 #-- Servicio de lectura número entero
	.eqv PRINT_CHAR 11 #-- Imprimir un caracter

.text
#-- Imprimir un caracter (A)

#-- li a0, 65	#-- Para saber la letra mirar la tabla ASCII
li a0, 'A'     #-- Así lo transforma él solito
li a0, '\n'
li a7, PRINT_CHAR
ecall

#-- Terminar
#-- Invocar el servicio EXIT del sistema operativo
#--li a7, 10	#-- Para facilitar la vida mejor definirlo como constante
li a7, EXIT
ecall 
