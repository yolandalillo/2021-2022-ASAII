#-- Ejercicio 8
#-- Escribir un programa que defina tres variales en la memoria, en este orden. 
#-- Primero una palabra (v1), despu?s una media palabra (v2) y finalmente un byte (v3). 
#-- Deben estar inicializados con los valores 0xCADACAFE, 0xBACA y 0xEA respectivamente. 
#-- El programa deber? incrementar en una unidad cada una de estas variables, y terminar

	#-- C?digo de servicios 
	.include "servicios.asm"

	.data
	
	#-- Definir palabra
v1:	.word 0xCADACAFE
v2:	.half 0xBACA
v3:	.byte 0xEA

	.text
	
	#-- Incrementar la palabra
	la t0, v1
	lw t1, 0(t0)
	addi t1,t1,1
	sw t1, 0(t0)
	
	#-- Incrementar la media palabra
	la t0, v2
	lh t1, 0(t0)
	addi t1,t1,1
	sh t1, 0(t0)
	
	#-- Incrementar el byte
	la t0, v3
	lb t1, 0(t0)
	addi t1,t1,1
	sb t1, 0(t0)
	
	
	#-- Terminar
	li a7, EXIT
	ecall
