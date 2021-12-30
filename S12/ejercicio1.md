Ejercicio 1

Se tiene un programa de prueba para un procesador Risc-V formado por una única instrucción:

``li x5,5``

Se dispone de los siguientes computadores:

Computador A: Risc-V monociclo. Frecuencia: 1Ghz

Computador B: Risc-V segmentando. 5 etapas. Frecuencia: 3Ghz

Se pide:

a) Calcular el tiempo que tarda el computador A en ejecutar el programa de pruebas

**Se trata de un computador RISC-V monociclo, por lo que su CPI es de 1 (cada instrucción tarda un ciclo de reloj). 
Como sólo hay una instrucción, el tiempo que se tarda es igual al perido del reloj. Ta = 1/Fa = 1 / 1Gz = 1ns**

b) Calcular el tiempo que tarda el computador B en ejecutar el programa de pruebas

**El computador B es un RISC-V segmentando, de 5 etapas. Cada etapa se ejecuta en un tiempo igual a 1/b. 
La instrucción se completa transcurridos 5 ciclos de reloj, por lo que el tiempo que se tarda es: Tb = 5 * 1 / Fb = 5 / 3Ghz = 1.7ns (aprox)**

c) Calcular el rendimiento relativo. Usando sólo ese programa de pruebas, ¿Qué computador ofrece mejor rendimiento?

**El rendimiento relativo es: n = Tb / Ta = 1.7 / 1 = 1.7. Utilizando ese programa de prueba, el rendimiento del computador A (Monociclo) es 1.7 veces mejor que el rendimiento del computador B (segmentado)**
