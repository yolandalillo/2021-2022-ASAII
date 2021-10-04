#-- Generar sonrisa en el monitor

.data

memoria:

.text 
#-- Puntero para acceder a la memoria, en x5
 la x5, memoria
#-- Ojos
 sw x10, 0x48(x5)
 sw x10, 0x50(x5)
 sw x10, 0x88(x5) #-- ¿Por qué salta la del medio?
 sw x10, 0x90(x5)

#-- Sonrisa #--¿Por qué?
 sw x10, 0x148(x5)
 sw x10, 0x14C(x5)
 sw x10, 0x150(x5)

#-- Hoyuelos #-- ¿Por qué?
 sw x10, 0x104(x5)
 sw x10, 0x114(x5)