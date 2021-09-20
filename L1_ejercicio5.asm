# Ejecuta este código paso a paso. ¿Qué es lo que hace?
	
.text
	
	addi x3, x0, 10
a:
	addi x3,x3,-1
	bgt x3,x0, a
	
	li a7, 10
	ecall
	
# El programa inicializa x3 a 10 y va restando 1 y cuando llega a cero 
# el programa termina

# OK -> Ejercicio terminado y correguido	