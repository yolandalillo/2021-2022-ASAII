#Sabiendo que la etiqueta b tiene el valor 0x00502020. ¿Cual es el valor del resto de etiquetas de este fragmento de programa?. Commpleta la tabla

#----- Fragmento de codigo (No es el principio)
b:
	addi x8, x8, 9  
		
	sub x9, x7, x8   
	add x6, x6, x6  
	add x6, x6, x6
c:   
	sub x9, x6, x9  
	add x5, x5, x5  
	add x5, x5, x9
d:   
	addi x10, x5, 15 
	
	li a7, 10
fin:	ecall

#Etiqueta	Dirección
#b	0x00400000
#c	0x00400010
#d	0x0040001c
#fin	0x00400024