#--  Ejercicio 1

#-- Escribe un programa que almacene, en tiempo de compilación, las siguientes tres cadenas en el segmento de datos: "Cadena 1", "Cadena 2" y "Cadena 3"
.data
	.string "Cadena 1"
	.string "Cadena 2"
	.string "Cadena 3"

#-- ¿Cual es el contenido de la segunda palabra del segmento de datos, en ASCII?
	#-- Su valor en hexadecimal es 0x3120616e
	#-- En ASCII es 1an
	
#-- ¿Cuántos bytes del segmento de datos se están usando?
	#-- Contamos los caracteres que hay en las cadenas, contabilizando también los '\0' de terminación de cada cadena. 
	#-- Cada cadena tiene en total 9 bytes, y como hay 3 cadenas, nos sale un total de 9 * 3 = 27 bytes
        #-- Otra forma: Vemos que hay 6 palabras completas (6 * 4 = 24 bytes) más 3 bytes de la ultima palabra. Que hacen un total de 27 bytes

#-- Completa la siguiente tabla, poniendo en la izquierda las direcciones y en la derecha los caracteres almacenados en cada dirección. Debe tener tantas filas como bytes almacenados en el segmento de datos

	#-- Direccion 	Carácter
	#--0x10010000 	'C'
	#--0x10010001 	'a'
	#--0x10010002 	'd'
	#--0x10010003 	'e'
	#--0x10010004 	'n'
	#--0x10010005 	'a'
	#--0x10010006 	' '
	#--0x10010007 	'1'
	#--0x10010008 	'\0'
	#--0x10010009 	'C'
	#--0x1001000A 	'a'
	#--0x1001000B 	'd'
	#--0x1001000C 	'e'
	#--0x1001000D 	'n'
	#--0x1001000E 	'a'
	#--0x1001000F 	' '
	#--0x10010010 	'2'
	#--0x10010011 	'\0'
	#--0x10010012 	'C'
	#--0x10010013 	'a'
	#--0x10010014 	'd'
	#--0x10010015 	'e'
	#--0x10010016 	'n'
	#--0x10010017 	'a'
	#--0x10010018 	' '
	#--0x10010019 	'3'
	#--0x1001001A 	'\0'
