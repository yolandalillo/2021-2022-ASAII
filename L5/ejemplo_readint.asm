#-- Mi primera llamada al sistema ;)
#-- Importante RTFM!!

	#-- Definimos constant, servicios del sistema operativo
	.eqv EXIT 10 #-- Servicio de EXIT (terminar)
	.eqv PRINT_INT 1 #-- Servicio impresión de un número entero
	.eqv READ_INT 5 #-- Servicio de lectura número entero

.text
#-- Imprimir un numero entero en la consola
li a0, 200
li a7, PRINT_INT
ecall

#-- Pedir un número al usuario
li a7, READ_INT
ecall 
#-- a0: Tiene el número introducido por el usuario.


#-- Punto de entrada, en rars en fijo, en otros sitios se llama main

#-- Cálculos y más cositas

#-- Terminar
#-- Invocar el servicio EXIT del sistema operativo
#--li a7, 10	#-- Para facilitar la vida mejor definirlo como constante
li a7, EXIT
ecall 

#-- Si ponemos aquí instrucciones ya no se ejecutan porque le hemos dicho que termine
li t0,6