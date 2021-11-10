**Ejercicio 7**

Con los datos del ejercicio 2 y los cálculos realizados en los ejercicios 2, 3, 4, 5 y 6

Se pide

a) Completar la siguiente tabla

|Instrucción| 	Tiempo de ejecución|
|--|--|
|addi x5, x0, 20 	|720ps|
|add x5, x5, x6 	|720ps|
|ld x1, 0x100(x2) |1070ps|	
|sd x1, 0x100(x2) |720ps|	
|beq x5, x6, 4 	|820ps|

b) ¿Cual es la frecuencia máxima de funcionamiento?

**La frecuencia máxima está determinada por el camino crítico (el de mayor retardo).Se corresponde con la instrucción load, con un retardo de 1070ps. Por tanto, el periodo mínimo de reloj es de 1070ps. Y la máxima frecuencia es: Fmax = 1 / Tmin = 1 / 1070ps, que es aproximadamente igual a 934.6 Mhz**

