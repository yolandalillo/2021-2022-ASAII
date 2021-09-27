#-- �Cu�l es el c�digo m�quina de estas dos instrucciones?
addi x0, x0, 0
addi x0, x0, 0xFA

# Si ponemos el comando directamente vemos que 
# addi x0, x0, 0  -----> 0x00000013
# addi x0, x0, 0xFA ---> 0x0FA00013

#-- Analiza la diferencia entre ellos. A partir de esos c�digo m�quina, 
#-- �Cu�l crees que ser�a el c�digo m�quina de la instrucci�n addi x0, x0, 0xBB? 
#-- Intenta obtener el c�digo m�quina por deducci�n, y luego compru�balo con el ensamblador
addi x0,x0,0xBB
# Respuesta ObijuanSolo se diferencian en los caracteres hexadecimales FA. Parece que esos bits codifican el valor inmediato de la instrucci�n addi
# Si eso es cierto, el c�digo m�quina de la instruccio addi x0,x0,0xBB seria 0x0BB00013. Comprobar con simulador 

#-- Obt�n el c�digo m�quina de estas instrucciones. Escr�belas en binario y marca los bits que sean diferentes en ambas

addi x0, x1, 0 # 0x00008013 --> 0000 0000 0000 0000 1000 0000 0001 0011
addi x0, x2, 0 # 0x00010013 --> 0000 0000 0000 0001 0000 0000 0001 0011

#-- Repite el punto anterior pero con estas dos instrucciones. �Qu� bits son diferentes?. �Podr�as deducir en qu� bits de la instrucci�n en c�digo m�quina se codifica el n�mero de registro?

addi x0, x0, 0 # 0x00000013 --> 0000 0000 0000 0000 0000 0000 0001 0011
addi x31, x0, 0 #0x00000F93 --> 0000 0000 0000 0000 0000 1111 1001 0011

#El registro 0 tiene esos 5 bits a 0: 00000
#El registro 31 tiene esos 5 bits a 1: 11111

