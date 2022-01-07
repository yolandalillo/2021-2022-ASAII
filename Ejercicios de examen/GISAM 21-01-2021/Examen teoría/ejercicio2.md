Pregunta 2 (2.5 Puntos): Repertorio de instrucciones

Un computador tiene una arquitectura registro-memoria, con 16 registros de propósito general de 32 bits, denotados por x0 - x15. Las direcciones de memoria son
de 32 bits y las variables almacenadas en memoria son palabras de 32 bits también. El fabricante nos proporciona el formato de las instrucciones store, add (suma) y sub (resta)

![](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/Ejercicios%20de%20examen/GISAM%2021-01-2021/Examen%20teor%C3%ADa/ejercicio2.png)

La operación de suma realiza la operación: ``Reg = Reg + dato``, y la de resta ``Reg = Reg - dato``. El ensamblador acepta esta sintáxis para las instrucciones:

* ``add reg, dir``
* ``sub reg, dir``
* ``store reg, dir``

En memoria están almacenadas las variables a, b, y c. Se quiere hacer la operación g = a - b - c , dejando el resultado en la variable de memoria g. 
Supón que los registros del computador están inicialmente a 0

a) Escribe un fragmento de programa en el ensamblador de este computador que realice esta operación (0.5)

**En el repertorio disponible NO tenemos una instrucción de asignación. Lo único que tenemos es la instrucción de add. Como nos dice el enunciado que supongamos que
todos los registros están incialmente a 0, la instrucción add tendrá justo este efecto: reg = 0 + a**

**Para implementar los cálculos intermedios necesitamos usar un registro. Como no nos dan restricciones, podemos usar el registro que queramos, 
como por ejemplo el x1 (pero sería válido cualquier otro, incluso el x0, porque no me están diciendo que en esta arquitectura el registro x0 sea 0, como ocurre en los RISC-V)**

``add x1, a   #-- x1 = 0 + a, porque x1 inicialmente vale 0

sub x1, b   #-- x1 = x1 - b

sub x1, c   #-- x1 = x1 - c

store x1, g #-- Almacenar x1 en g``

b) Calcula el número de accesos totales a memoria que se realizan, indicando cuáles son de lectura y cuáles de escritura (0.5)

**Cuando hablamos de accesos a memoria nos referimos a las veces que hay que acudir a la memoria para obtener una variable o una instrucción. 
Según la memoria física utilizada en la implementación, para leer una palabra de 32 bits necesitaríamos más o menos accesos. 
Pero como no nos indican nada, estamos suponiendo que la memoria tiene la misma anchura que los datos o instrucciones que usa. 
Así que para nosotros habrá un acceso cada vez que se lee una instrucción, y un acceso para cada lectura o escritura de variable**

**Las instrucciones están en memoria, por lo que para ejecutar cada una de ellas hay que leerla primero de memoria. Por tanto habrá 4 
accesos de lectura para leer las instrucciones.**

**Al ejecutar las instrucciones add y sub, hay un acceso a memoria, para leer la variable indicada. En la instrucción store hay 1 acceso de escritura**

**Número de accesos de lectura = 4 + 3 = 7
Número de accesos de escritura = 1
Total número de accesos a memoria: 8**

c) Calcula el tráfico total en bytes que se intercambian el procesador y la memoria principal (1)

**A partir del formato de las instrucciones, vemos que tienen un tamaño de 40 bits (5 bytes). El tráfico generado para la lectura de las instrucciones es de 4 * 5 = 20 bytes.
Las variables de memoria son de 32 bits (4 bytes). En todas las instrucciones se lee o escribe una variable, por lo que se transfieren 4 * 4 = 16 bytes
Por tanto, el tráfico total es de: 20 + 16 = 36 bytes**

d) Supón que las variables a,b,c y g están situadas consecutivamente en la memoria, a partir de la dirección 0x2C008400, escribe el código máquina del 
programa del apartado a (0.5)

**COMENTARIOS: Pensamo primero en cómo están situadas las variables en la memoria. Sabemos que son variables de 32 bits, por lo que ocuparán 4 bytes. 
Las memorias se direccionan por bytes, por lo que si la primera variable está en la dirección 0x2C008400, las siguientes estarán 4 bytes más arriba cada 
una de ellas: 0x2C008404 (b), 0x2C008408 (c) y 0x2C00840C (g)**

**Cada instrucción consta de su código de operación, el número del registro que usa y la dirección a la que accede (la variable). En todas las instrucciones
se usa el registro x1, que se codifica en 4 bits como 0001. Si lo ponemos en hexadecimal sería: 0x1**

**En esta table se muestran las instrucciones descompuestas en sus diferentes campos:**

|Instruccion|	Direccion|	Registro	|Opcode	|Código máquina|
|-|-|-|-|-|
|add x1, a|	0x2C008400|	0x1|	0xA|	0x2C0084001A|
|sub x1, b	|0x2C008404|	0x1	|0xB|	0x2C0084041B|
|sub x1, c	|0x2C008408	|0x1	|0xB	|0x2C0084081B|
|store x1, b|	0x2C00840C|	0x1|	0xF	|0x2C00840C1F|

**El programa en código máquina es, por tanto:**

**0x2C0084001A**

**0x2C0084041B**

**0x2C0084081B**

**0x2C00840C1F**
