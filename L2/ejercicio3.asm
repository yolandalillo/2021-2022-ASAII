#-- Calcular sucerion de fibonacci:  0,1,1,2,3,5,8,13,21,34,55..
#-- Resultado de la serie lo almacenamos en x9
#-- Valores intermedios x7 y x8
.text

# Inicializamos
addi x7,x0,0 # x7 = 0
addi x8,x0,1 # x8 = 1
	
bucle:
	# Calculamos suma
	add x9,x7,x8 #-- x9 = x7 +x8
	#Actualizamos valores
	add x7,x8,x0 #-- x5 = x6
	add x8,x9,x0 #-- x6=x7
	b bucle
	
#-- Tiene seis instrucciones lo que corresponde a 24 bytes de memoria
# Tabla 1
#Direccion (alineada)	Instrucción en código máq.
#0x00400000	00000393
#0x00400004	00000413
#0x00400008	008384b3
#0x0040000c	000403b3
#0x00400010	00048433
#0x00400014	ff5ff06f
# Tabla 2 tengo idea de como hacerlo pero no me deja abrirlo en windows