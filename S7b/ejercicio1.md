
**EJERCICIO 1**

Partimos de este circuito:

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S7b/images/ejercicio1.png)

a) Calcula su máxima frecuencia de funcionamiento

**El retardo del camino que hay desde la salida del registro hasta su entrada es de 5ns + 5ns = 10ns. Este será el periodo mínimo para garantizar que hay una señal estable a la entrada del registro. La frecuencia será 1 / 10ns = 0.1 Ghz = 100Mhz**

b) Si inicialmente el registro tiene el valor 0x00400000, indica sus valores en los siguientes 4 ciclos de reloj

**El circuito está formado por un registro de 32 bits conectado en anillo a través de un sumador. Es decir, que lo que tenemos es un circuito que cuenta de 4 en 4. Si inicialmente tiene el valor 0x00400000, en los siguientes 4 ciclos de reloj tendrá los valores 0x00400004, 0x00400008, 0x0040000C y 0x00400010**

A la salida del registro conectamos una memoria ROM que contiene instrucciones, que se almacenan en otro registro en cada ciclo de reloj

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S7b/images/ejercicio1.2.png)

c) Calcula frecuencia máxima de funcionamiento de este nuevo circuito

**Al conectar la memoria Rom tenemos un nuevo camino que va desde el registro original hacia el nuevo regitro. Al llegar un flanco, el nuevo valor tarda un tiempo de 5ns (retardo del primer registro) + 10ns (retardo de la memoria) = 15ns en llegar a la entrada del segundo registro. En ese momento ya es un valor estable.**

**Por otro lado tenemos el camino anterior, que tiene un retardo de 10ns. Nos quedamos con el mayor de ambos: 15ns. Es la manera de garantizar que ambos registros leen valores estables. Por tanto, ahora, la máxima frecuencia de funcionamiento es de 1 / 15ns = 66.7 Mhz**

**PPEGUNTAR -> ¿Y qué pasa con los 3 ns del final?**
