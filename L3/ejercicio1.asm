#-- Escribe un programa en ensamblador (init.s) para inicializar los 
#-- registros x5, x6, x7 y x8 con los valores 5, 6, 7 y 8 respectivamente. 
#-- Utiliza li. Además, estos valores se deben transferir a los 
#-- registros x15, x16, x17 y x18 respectivamente: x15 = x5, x16 = x6, x17 = x7 y x18 = x8. 
#-- Usa mv. Por último el programa termina

.text 
 #-- x5 = 5
 li x5,5
 #-- x6 = 6
 li x6,6
 #-- x7 = 7
 li x7,7
 #-- x8 = 8
 li x8,8
 
 #-- x15 = x5
 mv x15,x5
 #-- x16 = x6
 mv x16,x6
 #-- x17 = x7
 mv x17,x7
 #-- x18 = x8
 mv x18,x8
 
 li a7, 10
 ecall
 
#-- Tiene 10 instrucciones, son 40 bytes