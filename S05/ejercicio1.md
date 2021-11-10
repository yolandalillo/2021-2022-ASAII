Ejercicio 1

El computador A utiliza ordenación little-endian. Dispone de registros de propósito general de 64-bits (x1, x2, x3....). 
Para leer datos de la memoria se usa direccionamiento directo. Estas son las instrucciones de carga (load) disponibles:

* load_byte reg, dir : Carga del byte almacenado en la dirección dir en el registro reg
* load_half reg, dir : Carga de la media palabra (16-bits) almacenada en la dirección dir en el registro reg
* load_word reg, dir : Carga de la palabra (32-bits) almacenada en la dirección dir en el regisgtro reg
* load_dword reg, dir : Carga de la doble palabra (64-bits) almacenada en la dirección dir en el registro reg

Se ha realizado un volcado de la memoria (en bytes) a partir de la dirección 0x10010000. Esto es lo obtenido:
![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S05/images/ejercicio1.png)

Inidicar el valor (en hexadecimal) del dato que se almacena en el registro x1 al ejecutar las siguientes instrucciones:

* a) load_byte x1, 0x10010003

**Los bytes se leen tal cual. Al ser las unidades mínimas de almacenamiento son atómicas y NO se aplica el concepto de ordenación. Así que el valor de x1 es de 0x1D**

* b) load_byte x1, 0x10010005

**x1 = 0xCA**

* c) load_half x1, 0x10010003

**Cuando se cargan datos mayores que un bytes, siempre se especifica la dirección del primer byte del dato. En las direcciones consecutivas se almacenan 
el resto de bytes. En este caso, queremos leer una media palabra (16-bits, 2 bytes) situada a partir de la dirección 0x10010003. Los bytes de esta media 
palabrá están almacenados por tanto en las direcciones 0x10010003 y 0x10010004. 
Pero... ¿En qué orden? En este computador nos dicen que la ordenación es little endian por lo que primero está el byte de menos peso, y luego el de mayor x1 = 0x001D**

* d) load_half x1, 0x10010005

**x1 = 0xBACA**

* e) load_word x1, 0x10010002

**Las palabras ocupan 4 bytes. Con la instrucción dada se leen 4 bytes, de las posiciones de memoria 0x10010002, 0x10010003, 0x10010004 y 0x10010005. 
¿En qué orden? Igual que antes. Este computador tiene ordenación little endian por lo el primer byte es el de menor peso y el último el de mayor
x1 = 0xCA001D2C**

* f) load_word x1, 0x10010005

**x1 = 0xDEFEBACA**

* g) load_dword x1, 0x10010001

**Las dobles palabras ocupan 8 bytes. Con esta intrucción se leen los 8 bytes a partir de la dirección 0x10010001. Sabemos que el priimer byte 
(el de la dirección 0x10010001 será el de menor peso) x1 = 0xDEFEBACA001D2C3B**
