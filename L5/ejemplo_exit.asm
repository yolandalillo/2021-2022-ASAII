#-- Mi primera llamada al sistema ;)
#-- Importante RTFM!!

	#-- Definimos constant, servicios del sistema operativo
	.eqv EXIT 10 #-- Servicio de EXIT (terminar)

.text

#-- Punto de entrada, en rars en fijo, en otros sitios se llama main

#-- Cálculos y más cositas

#-- Terminar
#-- Invocar el servicio EXIT del sistema operativo
#--li a7, 10	#-- Para facilitar la vida mejor definirlo como constante
li a7, EXIT
ecall 

#-- Si ponemos aquí instrucciones ya no se ejecutan porque le hemos dicho que termine
li t0,6