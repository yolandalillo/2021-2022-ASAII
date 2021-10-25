#-- Ejemplo de almacenamiento de 3 bytes
#-- con la directiva .byte

	.data
	
	.byte 01
	.byte 02
	.byte 03

#-- Ejemplo de definicion de
#-- medias palabras
	
	.half 0xCAFE
	.half 0xBACA
	.half 0xCACA
#-- Prueba como guarda la palabra
	.word 0xBEBECAFE
