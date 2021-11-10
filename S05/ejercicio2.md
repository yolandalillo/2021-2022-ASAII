Ejercicio 2

El computador B es igual que el computador A del ejercicio 1, pero su ordenación es de tipo Big Endian. Si el volcado de memoria es el
mismo que el del ejercicio 1, inidicar el valor (en hexadecimal) del dato que se almacena en el registro x1 al ejecutar las mismas 
instrucciones de los apartados a-g del ejercicio 1.

**a) Como los bytes son unidades atómicas, el ordenamiento no les afecta por lo que: x1 = 0x1D

**b) x1 = 0xCA

**c) Se construye a partir de los 2 bytes situados en 0x10010003 y 0x10010004. El primero es el de mayor peso y el segundo el de menor: x1 = 0x1D00

**d) x1 = 0xCABA

**e) Se construye a partir de los 4 bytes situados en las direcciones 0x10010002, 0x10010003, 0x10010004 y 0x10010005
x1=0x2C1D00CA

**f) x1 = 0xCABAFEDE

**g) Se construye a partir de los 8 bytes situados desde la dirección 0x10010001 en adelante
x1 = 0x3B2C1D00CABAFEDE
