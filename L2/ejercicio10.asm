#Escribe un programa en ensamblador que calcule esta expresión:
#--f = (d - c) + 15 - (a + b)
#-- Probarlos con las siguientes secuencias de valores:
#-- a=1,2,3,4,5...
#-- b=2,3,4,5,6..
#-- c=3,4,5,6,7..
#-- d=4,5,6,7,8..

# x5=> a
# x6=> b
# x7=> c
# x8 => d
# x4 => f

.text
#-- Inicializamos todos los valores
addi x5,x0,1 #-- x5 = 1
addi x6,x0,2 #-- x6 = 2
addi x7,x0,3 #-- x7 = 3
addi x8,x0,4 #-- x8 = 4

bucle:
	#-- Calculamos x4 = (x8-x7) +15 -(x5+x6)

	sub x9,x8,x7 #-- x9 = x8-x7

	addi x10,x9,15 #-- x10 = x9+15 

	add x11,x6,x5 #-- x11=x6+x5

	sub x4,x10,x11 #--x4 = x10 + x11

	

#-- Incrementar x5,x6,x7 y x8
	addi x5,x5,1  #-- a = a+1
	addi x6,x6,1  #-- b = b+1
	addi x7,x7,1  #-- c = c+1
	addi x8,x8,1  #-- d = d+1
	
	b bucle

