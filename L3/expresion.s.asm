#-- Escribe un programa (expresion.s) que calcule la siguiente expresión: f = (a + b + c) - (d - 3). 
#-- Implementa la expresión tal cual, sin hacer simplificaciones y respetando la prioridad de los paréntesis

# x5=> a
# x6=> b
# x7=> c
# x8=> d
# x12=> f

.data
	
 a:	.word -5
 b: 	.word 2
 c:	.word 30
 d:	.word 5
 f:	.word 0

.text 
 la x4, a
 lw x5, 0(x4) #x5 = a
 lw x6, 4(x4) #x6=b
 lw x7, 8(x4) #x7=c
 lw x8, 12(x4) #x8=d
 
#-- Calculamos expresión
 add x9,x5,x6 # x9= x6 +x5
 add x9,x9,x7 # x9= x9+x7
 addi x10,x8,-3
 sub x12,x9,x10
 
#-- Almacenamos el resultado

 sw x12,16(x4)
 
#-- Terminar
 li a7, 10
 ecall
 
#-- El programa ocupa 52 bytes
#-- La variable f está almacenada en la dirección de memoria 0x10010010