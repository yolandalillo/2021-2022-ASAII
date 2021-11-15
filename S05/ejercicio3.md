Ejercicio 3


El computador C tiene una arquitectura de 32-bits. La memoria que usa tiene por tanto una anchura de 32-bits, lo que le permite leer o escribir palabras de 32-bits con un único acceso. Dispone de instrucciones de load y store para acceder a datos de tipo byte, media palabra y palabra. Estas instrucciones usan direccionamiento directo. Las instrucciones de load son las siguientes:

* load_byte reg, dir : Carga del byte almacenado en la dirección dir en el registro reg
* load_half reg, dir : Carga de la media palabra (16-bits) almacenada en la dirección dir en el registro reg
* load_word reg, dir : Carga de la palabra (32-bits) almacenada en la dirección dir en el regisgtro reg

El computador C permite acceso tanto a datos alineados como no alineados. Indica la cantidad de accesos a memoria para la lectura de los datos que se realizan al ejecutarse estas instrucciones

* a) load_byte x1, 0x2003 -> Los bytes son un acceso a memoria,¡no hay nunca problemas de alineamiento. Sólo habrá 1 acceso para leer el dato

* b) load_byte x1, 0x2000 -> 1 acceso

* c) load_half x1, 0x2000 -> En el caso de las medias palabras (0, 2, 4, 6, 8, A, C ó E), el número de accesos depende de si se accede a una dirección alineada o no. Las direcciones alineadas para las palabras son las direcciones pares. Así, si se lee una media palabra de una dirección par, sólo habrá un único acceso a memoria. Pero si se lee de una dirección impar, habrá 2. Como el dato está en la dirección 0x2000, que es par, el número de accesos es 1. Dirección alineada.

* d) load_half x1, 0x2007 -> Como está en una dirección impar, el número de accesos es de 2. Dirección no alineada.

* e) load_half x1, 0x200A -> Dirección alineada, un acceso.

* f) load_word x1, 0x2000 -> La direcciones alineadas para las palabras son las que son múltiplo de 4. En hexadecimal es fácil reconocerlas porque acaban en 0, 4, 8 ó C. Si la lectura es en una dirección alineada, sólo habrá un único acceso. Si es a una dirección no alineada entonces se necesitarán 2 accesos. La dirección 0x2000 está alineada, así que el número de accesos es de 1

* g) load_word x1, 0x2004 -> Dirección alineada, un acceso a memoria.

* h) load_word x1, 0x2007 -> Dirección no alineada, dos acceso a memoria.

* i) load_word x1, 0x200A -> Dirección no alineada, dos acceso a memoria.
