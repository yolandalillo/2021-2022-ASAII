Ejercicio 2

El computador B es igual que el computador A del ejercicio 1, pero su ordenación es de tipo Big Endian. Si el volcado de memoria es el
mismo que el del ejercicio 1, inidicar el valor (en hexadecimal) del dato que se almacena en el registro x1 al ejecutar las mismas 
instrucciones de los apartados a-g del ejercicio 1.

* a) load_byte x1, 0x10010003

**x1= 0x1D**

* b) load_byte x1, 0x10010005

**x1= 0xCA**


* c) load_half x1, 0x10010003

**x1= 0x1D00**


* d) load_half x1, 0x10010005

**x1= 0xCABA**


* e) load_word x1, 0x10010002

**x1= 0x2C1D00DA**


* f) load_word x1, 0x10010005

**x1= 0xCABAFEDE**


* g) load_dword x1, 0x10010001

**x1= 0x3B2C1D00CABAFEDE**




