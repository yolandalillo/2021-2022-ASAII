#-- ¿Cuál es el código máquina de estas dos instrucciones?
addi x0, x0, 0
addi x0, x0, 0xFA

# Si ponemos el comando directamente vemos que 
# addi x0, x0, 0  -----> 0x00000013
# addi x0, x0, 0xFA ---> 0x0FA00013

#-- Analiza la diferencia entre ellos. A partir de esos código máquina, 
#-- ¿Cuál crees que sería el código máquina de la instrucción addi x0, x0, 0xBB? 
#-- Intenta obtener el código máquina por deducción, y luego compruébalo con el ensamblador
addi x0,x0,0xBB
# Respuesta ObijuanSolo se diferencian en los caracteres hexadecimales FA. Parece que esos bits codifican el valor inmediato de la instrucción addi
# Si eso es cierto, el código máquina de la instruccio addi x0,x0,0xBB seria 0x0BB00013. Comprobar con simulador 

#-- Obtén el código máquina de estas instrucciones. Escríbelas en binario y marca los bits que sean diferentes en ambas

addi x0, x1, 0 # 0x00008013 --> 0000 0000 0000 0000 1000 0000 0001 0011
addi x0, x2, 0 # 0x00010013 --> 0000 0000 0000 0001 0000 0000 0001 0011

#-- Repite el punto anterior pero con estas dos instrucciones. ¿Qué bits son diferentes?. ¿Podrías deducir en qué bits de la instrucción en código máquina se codifica el número de registro?

addi x0, x0, 0 # 0x00000013 --> 0000 0000 0000 0000 0000 0000 0001 0011
addi x31, x0, 0 #0x00000F93 --> 0000 0000 0000 0000 0000 1111 1001 0011

#El registro 0 tiene esos 5 bits a 0: 00000
#El registro 31 tiene esos 5 bits a 1: 11111

