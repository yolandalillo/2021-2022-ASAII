#-- Calcular la siguiente expresion f = (a + b + c) - [(d - a) + (e + 3) - 30]
#-- a=2, b=4, c=6, d=8, e=10
# x5=> a
# x6=> b
# x7=> c
# x8 => d
# x9 => e
# x4 => f

.text
#-- Inicializamos 
addi x5,x0,2 #-- x5 = 2
addi x6,x0,4 #-- x6 = 4
addi x7,x0,6 #-- x7 = 6
addi x8,x0,8 #-- x8 = 8
addi x9,x0,10 #-- x9 = 10

#-- Calculamos x4 = (x5+x6+x7) -[(x8-x5)+(x9+3)-30]
#-- Vamos calculando poco a poco

add x10,x5,x6 #-- x10 = x5 +x6
add x11,x10,x7 #-- x11= x10 + x7

#-- Ahora tenemos x4 = x11 -[(x8-x5)+(x9+3)-30]

sub x12,x8,x5 #-- x12 = x8-x5

#-- Ahora tenemos x4 = x11 -[x12+(x9+3)-30]

addi x13,x9,3 #-- x13 = x9 +3

#-- Ahora tenemos x4 = x11 -[x12+x13-30]
add x14,x12,x13 #-- x14= x12 + x13

#-- Ahora tenemos x4 = x11 -[x14-30]

addi x15,x14,-30 #-- x15 = x15 -30 
#-- sub x15,x14,30 eso no es correcto

#-- Ahora tenemos x4 = x11 -[x15]

sub x4,x11,x15

#-- Terminar
li a7, 10
ecall

# Terminado y resultado correcto

