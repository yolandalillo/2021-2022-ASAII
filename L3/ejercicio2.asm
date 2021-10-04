	.data
	
a:
b:
	.word 1,2,3,4
c:
	.word 10
	.word 20
d:	.word 30
e:

	.text
	
	li a7, 10
	ecall
	
#-- En el segmento de datos hay 7 palabras
#-- Ocupa 7*4 = 28 bytes
#-- Tiene 2 instrucciones por tanto, ocupa 8 bytes.
#--Etiqueta	Dirección
#--a		0x10010000
#--b		0x10010000
#--c		0x10010010
#--d		0x10010018
#--e		0x1001001c
#-- En la direccion 0x10010014 tenemos el valor 20 o OX14
#--Dirección	Byte
#--0x10010000	01
#--0x10010001	00
#--0x10010002	00
#--0x10010003	00
#--0x10010004	02
#--0x10010005	00
#--0x10010006	00
#--0x10010007	00
#-----------	-----
#--0x10010018	30
#--0x10010019	00
#--0x1001001A	00
#--0x1001001B	00