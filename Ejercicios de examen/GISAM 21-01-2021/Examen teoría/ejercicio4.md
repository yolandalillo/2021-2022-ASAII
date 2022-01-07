Pregunta 4 (2.5 Puntos): NanoRisc-V

Se ha construido el procesador NanoRISC-V monociclo cuyo esquema se muestra en la figura. 

![](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/Ejercicios%20de%20examen/GISAM%2021-01-2021/Examen%20teor%C3%ADa/monociclo.png)

El ingeniero Hardware nos ha proporcionado los siguientes datos sobre los componentes usados:

|Componente|	Retardo|
|-|-|
|Memoria de instrucciones	170ps|
|Sumador	|20ps|
|ALU	|50ps|
|Memoria de datos	|200ps|
|Banco de registros	|80ps|
|Unidad de control	|33ps|

Para el resto de componentes supondremos que su retardo es despreciable por lo que asumiremos un valor de 0

a) Calcular el retardo de cada una de las fases: Fetch, Decodificación, Ejecución, Acceso a memoria y WriteBack para las instrucciones addi, ld, sd y beq (1 pto)

* Fetch: Determinado únicamente por la memoria de instrucciones
* Decod: Determinado únicamente por el banco de registros
* Ejecución: Determinado por la ALU
* Memoria: Determinado por la memoria de datos
* WriteBack: Será siempre 0 salvo para beq, que está determinado por el retardo del sumador

|Instrucción|	Fetch|	Decod|	Ejecución|	Memoria|	WriteBack|Total|
|-|-|-|-|-|-|-|
|addi|170ps|80ps|50ps|0|0|300ps|
|ld|170ps|80ps|50ps|200ps|0|500ps|
|sd|170ps|80ps|50ps|0|0|300ps|
|beq|170ps|80ps|50ps|0|20ps|320ps|
				
b) Indicar cuál es la instrucción crítica y calcular la frecuencia máxima de funcionamiento (0.5)

**La instrucción crítica es la que tarda más tiempo en ejecutarse. Es la de load, con un retardo de 500ps. Por tanto, será la instrucción que determina 
la frecuencia máxima de funcionamiento del procesador: 1 / 500ps = 2Ghz**

c) El ingeniero hardware nos ofrece la posibilidad de incluir una unidad de control muchísimo más rápida que la actual, con un retardo de sólo 5ps. 
¿Cuánto se mejora el rendimiento del procesador? (0.5)

**Por lo indicado en el apartado a, el retardo de la unidad de control es menor que el del banco de registros, por lo que su valor no determina el de la etapa 
de decodificación. Aunque se reduzca este tiempo, la frecuencia de funcionamiento seguirá siendo la misma: 2GHz**

d) Calcular la frecuencia máxima de funcionamiento si ahora utilizamos la versión Multiciclo del NanoRISC-V, con los mismos datos de la tabla inicial, y 
suponiendo que el resto de componentes tienen un retardo igual a 0 (0.5)
![](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/Ejercicios%20de%20examen/GISAM%2021-01-2021/Examen%20teor%C3%ADa/multiciclo.png)

**Para calcular la frecuencia del multiciclo nos tenemos que fijarnos en la etapa más lenta, que es la de acceso a la memoria de datos: 200ps. Por tanto, 
la frecuencia será: 1 / 200ps = 5Ghz**
