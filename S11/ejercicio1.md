Ejercicio 1

Se tiene un procesador NanoRisc-V implentado con los siguientes componentes:

Componente	                            Retardo (ps)

Memoria de codigo (Lectura)	                220

Banco registros (Lectura)	                  100

ALU	                                         80

Memoria de datos (Lectura)	                400

Tanto la escritura en el Banco de registros como en la memoria de datos las consideraremos muy rápidas por los que sus retardos serán despreciables (= 0 ps)

Se pide:

a) Calcular la frecuencia máxima de funcionamiento si este procesador tiene una implementación Monociclo

**1/(220+100+80+400) = 1.25 GHz**

b) Calcular la frecuencia máxima de funcionamiento si se utiliza una implementación segmentada

**Elegimos el peor por tanto 1/400 = 2.5 GHz **

c) Se tiene un programa de prueba que ejecuta 1000 instrucciones y termina. Calcular el CPI del procesador segmentando

**El CPI será igual al número total de ciclos que tarda el programa de prueba dividido entre el número de instrucciones.
CPI = Ciclos totales / 1000
La primer instrucción tarda 5 ciclos, pero el resto de instrucciones (las 999 restantes) se ejecutan en un único ciclo de reloj. 
Esa es la magia de la segmentación. Por tanto el CPI = (5 + 999) / 1000 = 1004 / 1000 = 1.004 (que lo aproximamos por 1). CPI=1**

d) ¿Cual es la mejora del rendimiento al pasar de la implementación monociclo a la segmentada?

**La mejora del rendimiento la calculamos aplicando la fórmula que ya conocemos: n = Tiempo monociclo/Tiempo segmentado. 
El tiempo que tarda el monociclo en ejecutar las 1000 instrucciones es de: Tmono = (1000 * CPImono) / Fmono = (1000 * 1) / 1.25 = 800ns. 
El tiempo que tarda el segmentado es de Tseg = (1000 * CPIseg) / Fseg = (1000 * 1) / 2.5 = 400ns. 
La mejora del rendimiento es de n = Tiempo monociclo/Tiempo segmentado = 2.
La implementación segmentada es el doble de rápida que la versión monociclo**
