#-- Amplía la tabla para contener 10 valores, que hagan aparecer los dígitos del 0 al 9 en el display. 
#-- El programa deberá leer los valores, uno a uno y mandarlos al display, para ver los dígitos del 0 al 9 en el display. 
#-- Luego termina
#-- Todavía no sabemos hacer bucles así que hazlo igual que en el ejercicio anterior, con instrucciones lw y sw para cada dígito


	.eqv E1 0
	.eqv E2 4
	.eqv E3 8
	.eqv E4 0xC
	.eqv E5 0x10
	.eqv E6 0x14
	.eqv E7 0x18
	.eqv E8 0x1C
	.eqv E9 0x20
	.eqv E10 0x24
	
	.eqv DIG3 0X4F 
	.eqv DIG1 0x06  #-- Digito 1
	.eqv DIG2 0x5B  #-- Digito 2
	.eqv DIG4 0x66  #-- Digito 4
	.eqv DIG5 0x6D  #-- Digito 5
	.eqv DIG6 0x7D  #-- Digito 6
	.eqv DIG7 0x07  #-- Digito 7
	.eqv DIG8 0x7F  #-- Digito 8
	.eqv DIG9 0x6F  #-- Digito 9
	
	.eqv DISPLAY 0xFFFF0010
	
	.data
	
tabla:	.word DIG1, DIG2, DIG3, DIG4, DIG5, DIG6, DIG7, DIG8, DIG9
	
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
		
	lw x10, E5(x5)
	sw x10, 0(x6)
	
	lw x10, E6(x5)
	sw x10, 0(x6)
	
	lw x10, E7(x5)
	sw x10, 0(x6)
	
	lw x10, E8(x5)
	sw x10, 0(x6)
	
	lw x10, E9(x5)
	sw x10, 0(x6)
	
	lw x10, E10(x5)
	sw x10, 0(x6)
	
	#-- Terminar
	li a7, 10
	ecall
