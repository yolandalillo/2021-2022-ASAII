#-- Ejercicio 5
#-- Escribre un programa para pedir un número entero (0 - 255) y escribirlo en el puerto de salida 
#-- del display de 7 segmentos derecho. Comprueba que funciona bien introduciendo diferentes valores. 
#-- Por ejemplo, con el 255 (0xFF) se deben encender todos los segmentos (NOTA: No se está pidiendo 
#-- que se visualice el número que introduce el usuario, sino que este número se envíe al Display de 7 segmentos directamente)

#-- Direccion del display derecho
.eqv DISP_R 0xFFFF0010
.eqv EXIT      10
.eqv READ_INT  5 

.text
	
#-- Pedir numero al usuario
li a7, READ_INT
ecall
	
#-- El valor está en a0
#-- t0 = puntero para acceder al display
li t0, DISP_R
	
#-- Sacar el numero por el display
sw a0, 0(t0)
	
#-- Terminar
li a7, EXIT
ecall