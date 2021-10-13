#-- Escribe un programa, similar al del ejercicio 2, donde se defina una tabla con 4 palabras, 
#-- accesible mediante los identificadores E1, E2, E3 y E4. Esta tabla deberá estar inicializada 
#-- con los valores que hacen aparecer los dígitos 1,2,3 y 4 en el display de 7 segmentos 
#-- (calculados en el ejericico anterior). El valor de estos dígitos estará definido también con 
#-- identificadores: DIG1, DIG2, DIG3 y DIG4
#-- El programa leerá cada uno de estos valores de la tabla y los enviará al display, 
#-- uno detrás de otro, de forma que al simularlo paso a paso veremos los dígitos 1,2,3 y 4

	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	
	.eqv DIG3 0X4F 
	.eqv DIG1 0x06  #-- Digito 1
	.eqv DIG2 0x5B  #-- Digito 2
	.eqv DIG4 0x66  #-- Digito 4
	
	.eqv DISPLAY 0xFFFF0010
	
	.data
	
tabla:	.word DIG1, DIG2, DIG3, DIG4
	
	.text
	
	la x5, tabla
	
	li x6, DISPLAY
	
	lw x10, E1(x5)
	sw x10, 0(x6)

	lw x10, E2(x5)
	sw x10, 0(x6)

	lw x10, E3(x5)
	sw x10, 0(x6)
	
	lw x10, E4(x5)
	sw x10, 0(x6)
	
	#-- Terminar
	li a7, 10
	ecall
