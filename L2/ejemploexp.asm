#---Calcula esta expresión f = (a+b)-c+d+50

# x10=> f
# x5=> a
# x6=> b
# x7=> c
# x8=> d

.text

#-- Inicializar todo

addi x5,x0,1 #-- x5 = 1
addi x6,x0,2 #-- x6 = 2
addi x7,x0,3 #-- x7 = 3
addi x8,x0,4 #-- x8 = 4


#-- Calcular x10 = (x5 + x6) - x7 + x8 + 50

add x9,x5,x6 #-- x9 = x5 +x6

#-- -x7+x8 = x8-x7
sub x11,x8,x7 #-- x11 = x8-x7

# -- x12 = x11 + 50
addi x12,x11,50
# -- x10 = x9 + x12
add x10,x9,x12

#-- Terminar
li a7, 10
ecall
