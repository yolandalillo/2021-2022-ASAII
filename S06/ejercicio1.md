**EJERCICIO 1**

Tenemos el siguiente circuito:

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S06/images/ejercicio1.png)


a) Indicar qué tipo de circuito es: combinacional o secuencial

**Es un circuito combinacional, no almacena información solo la transforma, sus salidas dependen exclusivamente de sus entradas**

b) Indicar el número de entradas y salidas de 1 bit que tiene 

**Tiene 2 bit de entrada y un bit de salida**

c) Obtener todos los caminos posibles que van desde las entradas hacia las salidas, y calcular su retardo

**Camino 1: AND1 + NOT2 = 11ns**

**Camino 2: AND1 + AND2 = 5ns**

**Camino 3: AND1 + OR + AND2 = 7ns**

**Camino 4: NOT1 + OR + AND2 = 7ns**

**Tenemos un total de 4 caminos**

d) Obtener el camino crítico

**Su camino crítico es el camino 1 que pasa por AND1 y NOT2**

e) ¿Cual es el retardo de este circuito?

**El retardo del camino crítico es 11ns**

f) ¿Qué cambio sugerirías como ingeniero/a para mejorar el retardo de este circuito?

**En el caso de este circuito, para mejorar el retardo nos fijamos en el camino crítico, que está formado por las puertas AND1 y NOT2. Observamos que el retardo de la puerta NOT2 es muy alto (10ns). Una posible mejora sería sustituir la puerta NOT2 por una puerta NOT1. Tal vez no sea posible, pero como ingenieros nuestro trabajo es aportar soluciones que mejoren el circuito.**

**Al hacer el cambio, el camino 1 deja de ser el crítico. Y ahora los críticos son el C3 y el C4, ambos con 7ns de retardo. Tendríamos una mejora de 11-7 = 4ns**



