Escribe el siguiente programa, formado por tres ficheros independientes: el programa principal, la función cifrar(pcad,k) y la función descifrar(pcad, k)

* La función cifrar(pcad,k) tiene dos argumentos de entrada. El primer es un puntero a la cadena a cifrar y el segundo es la clave para cifrar. Es un número entero entre 1 y 255. Es el valor que se suma a cada carácter de la cadena original para cifrar

* La función descifrar(pcad, k) tiene los mismos parámetros que la función cifrar() pero realiza el descifrado. Está implementanda llamando a la función de cifrar pero con la clave -k (la clave cambiada de signo)

* El programa principal pide al usuario que introduzca una cadena inicial y la clave. Imprime primero la cadena sin cifrar. Luego llama a cifrar() y la imprime cifrada. Después llama a descifrar() y la imprime descifrada. Finalmente termina
