Ejercicio 3

Disponemos de 3 computadores, A, B y C, con las siguientes características:

Computador A: RISC-V Monociclo. Frecuencia de 1Ghz

Computador B: RSIC-V segmentando en 5 etapas. SIN adelantamiento de datos. Frecuencia de 3Ghz

Computador C: RISC-V segmentado en 5 etapas. CON adelantamiento de datos. Frecuencia de 3Ghz

Tenemos el siguiente programa de pruebas formado por 2 instruciones:

``li x5,5
mv x6,x5``

El programa ensamblador, que convierte este programa a código máquina, realiza una primera etapa en la que modifica el programa para que pueda funcionar correctamente en el comptador indicado, solucionando por software los problemas que puede haber. Tras esta fase se genera el programa ejecutable final (código máquina)

Se pide

a) Tiempo que tarda en ejecutar en el computador A

**En el computador A, monociclo, no hay ningún problema, ya que la ejecución secuencial. 
Hasta que no se termina de ejecutar la primera instrucción no se pasa a la segunda. 
El ensamblador no tiene que modificar nada. El programa usado será el mismo. 
Por tanto, el programa tarda 2 ciclos. El tiempo es: Ta = 2 * 1/Fa = 2 * 1ns = 2 ns**

b) Tiempo que tarda en ejecutarse en el computador B

**Este mismo programa NO funcionará correctamente en el computador B debido al riesgo de datos. Para que funcione correctamente el ensamblador debe insertar 3 instrucciones nop. Como NO hay adelantamiento de datos, sólo se puede resolver el problema por software. LO hará el ensamblador. El programa real a ejecutar será por tanto este:**

``addi x5,x0,5
nop
nop
nop
add x6,x0,x5``

**Este programa tarda en total 5 + 4 = 9 ciclos en ejecutarse (La primetra instrucción tarda 5 ciclos y el resto sólo 1). Tb = 9 * 1 / Fb = 9 / 3 = 3ns**

c) Tiempo que tarda en ejecutarse en el computador C

** En el computador C el riesgo de datos sigue existiendo, pero se soluciona exclusivamente por hardware, porque tiene adelantamiento de datos. En este caso el programa ensamblador NO tiene que añandir nada por lo que el programa a ejecutar será este:
``
addi x5,x0,5
add x6,x0,x5``

El tiempo que tarda el programa en ejecutarse es: Tc = 6 * 1/Fc = 6 / 3 = 2ns**
