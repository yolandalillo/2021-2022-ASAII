**Ejercicio 1**

En la memoria de instrucciones de un NanoRisc-v monociclo se tiene el siguiente contenido:

| Direccion |  Instrucción |
| -- | -- | 
| 0x100 | addi x5, x0, 20 |
|0x104 |	add x5, x5, x6|
|0x108| 	beq x5, x7, 4|
|0x10C |	beq x0, x0, 0|
.... 	...

Tras la ejecución de una instrucción, el estado del procesador es:

    PC = 0x104
    x5 = 20
    x6 = 1
    Resto de registros a 0

Se pide:

 a) Calcula el estado del procesador al llegar el siguiente franco de subida del reloj
 
 **En el estado actual, al comenzar a ejecutar la nueva instrucción, tenemos que el PC vale 0x104. La instrucción que se va a cargar es por tanto la de la dirección 0x104, que según vemos en la memoria es: *add x5, x5, x6*. Como el registro x5 vale 20 y el registro x6 1, el valor que tendrá x5 en el siguiente ciclo será 21. Durante este ciclo se calcula el siguiente estado, que será PC = 0x108, x5 = 21, x6 sigue valiendo 1. Al llegar el flanco de subida del reloj, ese será el nuevo estado**
 
 b) Calcula el estado del procesador al llegar otro flanco de subida de reloj tras el del apartado a
 
 **El nuevo estado ahora es PC=0x108, X5 = 21 y x7 = 0 (resto de registros a cero). La instrucción a ejecutar es: *beq x5, x7, 4*. Se compara x5 con x7 y si son iguales el PC se actualiza al valor PC + 8. Pero como son diferentes, el siguiente valor de PC será PC+4. Por tanto, al llegar el siguiente flanco el nuevo estado será: PC = 0x10C, X5=21, X6=1 y el resto de registros a 0**
 
 c) Calcula el estado del procesador al llegar otro flanco de subida de reloj tras el del apartado b
 
 **El valor del PC es ahora de 0x10C, por lo que se ejecuta la instrucción beq x0,x0,0. Esta instrucción se cumple siempre, por lo que se asigna al PC el valor de PC+0. Es decir, que cuando llegue el siguiente flanco de subida el PC se queda con el mismo valor, y también los registros. Por tanto, ya no hay cambio de estado. El procesador permanece sin cambios hasta que se haga un reset**
 
*Adjuntar dibujo con explicación copiada en clase*
