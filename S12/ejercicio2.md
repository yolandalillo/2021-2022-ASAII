Ejercicio 2

Seguimos usando los mismos computadores A y B anteriores. Pero ahora tenemos un programa de prueba formado por 2 instrucciones:

``li x5,5``

``li x6,6``

Se pide:

a) Calcular el tiempo que tarda el computador A en ejecutar el programa de pruebas

**Es un RISC-V monociclo, por lo que CPI es 1. Hay 2 instrucciones, por lo que tarda 2 ciclos en completarse. Como la frecuencia es de 1Ghz, Ta = 2 * 1ns = 2 ns**

b) Calcular el tiempo que tarda el computador B en ejecutar el programa de pruebas

**La primera instrucción tarda 5 ciclos en ejecutarse, pero en ese tiempo el pipeline se ha llenado. En el siguente ciclo se completa la segunda instrucción. 
Por tanto, el programa tarda 6 ciclos en ejecutarse. Tb = 6 * 1/Fb = 6 * 1/Fb = 6 / 3 = 2 ns**

c) Calcular el rendimiento relativo. Usando sólo ese programa de pruebas, ¿Qué computador ofrece mejor rendimiento?

**El rendimiento relativo es 1. Es decir, que ambos computadores tienen el mismo rendimiento al ejecutar ese programa**
