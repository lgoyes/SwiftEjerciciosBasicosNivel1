# Ejercicios de programación

 
 A continuación se presentará una serie de ejercicios de algoritmos de programación, cuya dificultad irá aumentando, progresivamente. Se pueden resolver con cualquier lenguage de programación aunque aquí se presente la solución de los mismos usando el lenguaje de programación Swift.
 
## Ejercicios de Programación estructurada

1. Calcule la distancia recorrida `x` [m] por un móvil que tiene velocidad constante `v=5` [m/s] durante un tiempo `t=2` [s]. Imprima la distancia recorrida.

2. Calcule la distancia recorrida `x` [m] por un móvil que se desplaza a velocidad constante `v1=60` [m/s] durante `t1=5` [s], y luego a velocidad constante `v2=30` [m/s] durante `t2=12` [s]. Imprima la distancia recorrida.

3. En un curso de programación se hicieron cuatro examenes (con notas entre 0 y 5). Todos con el mismo peso. Calcule el promedio de las notas dadas: `n1`, `n2`, `n3`, `n4`. Al final, imprima "Aprobó", si la nota promedio es mayor o igual que 3, o "Reprobó" en caso contrario.

4. En un curso de programación avanzada se hicieron seis examenes (con notas entre 0 y 5), con distintos pesos: El primero, valía el 10% de la nota final; el segundo, valía el 15%; el tercero valía 6%; el cuarto valía 29%, el quinto 12% y el sexto 28%. Guarde las notas en un arreglo, y los pesos en otro arreglo. Calcule la nota promedio. Si la nota es menor que 1, imprima "Bruto!"; Si es menor que 2, imprima "Mejor dedíquese a otra cosa"; Si es menor que 2.96, imprima "Se peló por nada"; Si es menor que 3.5, imprima "no celebre tanto"; si es menor que 4.5, imprima "tiene futuro"; si es mayor o igual que 4.5 imprima "Campeón".

 5. Imprima un saludo. Luego, pida al usuario su nombre. Captúrelo (ver función `readLine()`) y al final imprima un mensaje de bienvenida usando el nombre del usuario ingresado: `"Bienvenido al programa \(nombre)"`
 
 6. Imprima un saludo. Seguido de eso, pida la edad al usuario. Imprima "Mayor de edad", si la edad ingresada es mayor de 18 años; de lo contrario escriba "Todavía es un niño".

7. Las evaluaciones de un curso están valoradas como se muestra a continuación:
  * Examen 1: 50%.
  * Examen 2: 30%.
  * Examen 3: 20%.
Haga un algoritmo que tome como entradas: el nombre, la identificación y las 3 notas del estudiante. Éste debe imprimir como salida el nombre, la identificación y la nota definitiva obtenida por el estudiante.

  * Solucione el ejercicio sin usar arreglos
  * Solucionelo usando arreglos

8. Pida al usuario un número decimal cualquiera. Si el cuadrado del numero es mayor que 1, imprima "El numero X puede crecer"; De lo contrario, imprima "el numero X ya no crece más, donde X es el número expresado con solo 2 cifras decimales.
  * Extra: Modifique el programa para que repita este procedimiento infinitas veces (cómo se hace un ciclo infinito?)

9. Escriba un programa para adivinar un numero del 1 al 10.
Pasos:
   1. Genere un numero aleatorio del 1 al 10
   2. Pida al usuario que ingrese un número
   3. Compare el numero aleatorio, con el numero ingresado con el usuario.
       En caso de acertar imprima en pantalla: "Dio en el blanco!"
       En caso de fallar imprima en pantalla el mensaje que correspoda:
        * Si la diferencia entre el numero ingresado y el numero aleatorio es 1 -> "Se pelo por nada"
        * Si la diferencia es mayor que 1 y menor que 5 -> "Mejor suerte para la proxima"
        * Si la diferencia es mayor o igual que 5 -> "Adivinar no es lo suyo. Busque otra profesion"
       Imprima en pantalla el numero aleatorio.

Bonus:
   Convierta este programa en un juego con puntos, que se repita indefinidamente (ciclo infinito).
   * Si acertó, sume 100 puntos.
   * Si fallo por 1, sume 50 puntos.
   * Si fallo por menos de 5, sume 10 puntos.
   * Si la diferencia es mayor o igual que 5, reste 10 puntos.
   * Imprima el puntaje acumulado en cada turno.
Tenga en cuenta que la diferencia entre el numero ingresado, y el numero aleatorio, puede ser positiva o negativa. Por eso, averigüe como calcular el valor absoluto de un numero en swift.

10. Una oficina de seguros ha reunido datos concernientes a todos los accidentes de tránsito ocurridos en el área metropolitana en el último año.
Por cada conductor involucrado se toman los siguientes datos:
    * Año de nacimiento
    * Sexo (F: Femenino, M: Masculino)
    * Registro del carro (1: Medellín, 2: Girardota, 3: Bello, 4: Otros municipios)
Haga un programa que muestre:
  * El porcentaje de conductores menores de 25 años
  * El porcentaje de conductores de sexo femenino
  * El porcentaje de conductores cuyos carros están registrados fuera de Medellín.

Use los siguientes datos:

```
let anyosNacimientos = [1961,1967,1994,1996]
let sexos = ["M", "F", "M", "F"]
let registroDelCarro = [1, 2, 3, 4]
```

11. En una evaluación, se calcula el puntaje de cada estudiante según el número de respuestas correctas, incorrectas y en blanco.
  * Por cada respuesta correcta, tendrá 5 puntos, respuestas incorrectas tendrá -2 y respuestas en blanco tendrá -1.
  * Pida al usuario cada una de estas variables como entradas de consola.

12. Se requiere elaborar una planilla de un empleado para pagarle sus salario mensual. Para ello, pida el número de horas laboradas en el mes, así como la tarifa por hora.
  * Pida al usuario cada una de estas variables como entradas de consola.

13. Desarrolle un algoritmo que permita calcular el volumen y el area superficial de un cubo

 14. Escriba un algoritmo que permita calcular la hipotenusa de un triángulo rectángulo utilizando el teorema de Pitágoras.
 
 15. Frente a mi casa hay una máquina dispensadora que tiene 4 productos etiquetados con los números 1, 2, 3 y 4; cada uno con un valor de $500, $800, $300, y $900 pesos, respectivamente.
   * Defina un algoritmo que lea el número de producto que ingresa el usuario y que le muestre su precio. Si el producto ingresado no existe, debe informarlo.

16. Construir un programa que, dada una temperatura en grados Kelvin, muestre su equivalente en grados Centígrados y Fahrenheit. Las fórmulas de conversión son:
```
C = K - 273.15
F = (9/5) * C + 32
```

17. Leer 3 números enteros, cada uno de un dígito. Construir un número decimal en el cual, la parte entera sea el segundo número leído, y la parte decimal, el primer y tercer número leído. Por ejemplo, si el usuario ingresa los números 1, 2 y 3; el número resultante será 2.13.

18. Calcular el número de horas de sueño de una persona, si se ingresa la hora a la que se va a la cama, la hora a la que se va a levantar, y se tiene en cuenta que la persona se demora 30 minutos en quedarse dormida. Por facilidad, trabaje solo con horas (sin minutos) y en formato de 24 horas.

19. Con base en el ejercicio anterior, calcule el número de horas de sueño de una persona que tiene problemas para dormir. En este caso, existe una probabilidad `P=3/10` de que la persona se despierte durante la noche. Si se despierta, permanecerá en vela 2 horas.
* Para el cálculo de la probabilidad `P=1/10`, busque un número aleatorio `N` entre 1 y 10. Como todos los números son equiprobables, `P=1/10` se obtiene cuando `N=1`. Es decir, `P=1/10` significa que la persona se va a levantar si `N=1`. En otro escenario, `P=2/10` significa que la persona se va a levantar si `N=1` o `N=2`.
* Con base en el análisis anterior, `P=3/10` significa que la persona se va a levantar en esa noche si `N=1`, `N=2` o  `N=3`

20. Cree un programa tendero. Se podrá elegir una de las siguientes dos opciones: (1) Añadir una bolsa de leche al carrito y (2) Contar productos del carrito y salir. El programa debe iterar indefinidamente, pidiendo al cliente que ingrese una opción, y debe salir/terminar cuando se ingresa la opción 2. Antes de salir, debe imprimir en pantalla el número de productos que se agregaron al carrito. Si el usuario ingresa una opción que el tendero no reconoce, debe repetir el ciclo (continue).

21. Haga un algoritmo que pida un punto `(x,y)` al usuario (en dos pasos) y determine si pertenece o no a la recta `y=2x-3`.

22. El un almacén que venden balones se ofrecen descuentos de acuerdo a la cantidad que se compre. Si el cliente compra 3 o menos balones, no hay descuento; si compra entre 4 y 6, se da un descuento del 20%; y si se compran más de 6, se da un descuento del 25%. Haga un algoritmo que determine el valor total a pagar, dado el precio unitario de un balón y la cantidad de balones a comprar.

23. Haga un algoritmo que pida dos números `n1` y `n2` y determine si `n2` es múltiplo de `n1`.

24. Haga un algoritmo que determine si un año es bisiesto o no. Tenga en cuenta que para que un año sea bisiesto, éste debe ser múltiplo de 4 y, además, no puede ser múltiplo de 100; a no ser que sea también múltiplo de 400.

25. Extienda el algoritmo del año bisiesto para que, en caso de que el año no sea bisiesto, diga cuál sería el siguiente año bisiesto.

26. Haga un algoritmo que lea un número entero `n` y que imprima todos los múltiplos de `3` hasta `n`.

27. Escriba un programa que imprima la sumatoria de los múltiplos de `3` y `5` que sean menores que `N`, ingresado por el usuario. Por ejemplo, si el usuario ingresa el valor `N=17`, entonces los múltiplos de
`3` y `5` entre `1` y `17` son `3`, `5`, `6`, `9`, `10`, `12`, y`15`, por lo tanto, el programa imprimirá `60`.

28. Haga un algoritmo que calcule el factorial de un número ingresado por el usuario.

29. En un experimento se deben tomar medidas de temperatura cada hora por un día completo. Haga
un algoritmo que lea las medidas y determine la temperatura más alta, la más baja y la promedio.

30. Haga un algoritmo que reciba números repetidamente y que en cada iteración muestre el promedio de los números impares ingresados hasta el momento. El algoritmo debe finalizar cuando el número ingresado sea el cero.

31. Haga un algoritmo que muestre todos los divisores de un número entero ingresado y que diga cuántos divisores tiene.

32. Haga un algoritmo que encuentre el máximo común divisor (MCD) entre dos números `A` y `B` ingresados por el usuario. El MCD es el número más grande que divide en forma exacta tanto a `A` como a `B`. Si el MCD resulta ser 1, el algoritmo deberá imprimir "No existe", de lo contrario deberá imprimir el MCD encontrado.

33. Haga un algoritmo que imprima los primeros N términos de la serie de Fibonacci, donde N es ingresado por el usuario. Esta serie inicia con los elementos 0 y 1, y cada nuevo término se calcula como la suma de los dos anteriores. Así, la serie sería 0, 1, 1, 2, 3, 5...
- Tenga en cuenta que, como no estamos usando funciones, debe organizar la serie en un arreglo, y considerar las posiciones previamente calculadas.

34. Haga un algoritmo que muestre los primeros N términos de la serie: 10, 11, 20, 21, 30, 31, 40, 41, 50, 51...

- A continuación hay una ayuda que servirá en caso de sentirse estancado con el ejercicio.
Ayuda: Note que en cada posicion impar (1, 3, 5, 7, ...) se agrega 10 al numero de la serie antes acumulado; y que si la posicion es par, se agrega un 1 más, que no aparece en la siguiente posición.

35. Haga un algoritmo que le muestre al usuario la tabla de multiplicación de un número entero ingresado por el usuario (`N`). Además, el usuario también debe ingresar el límite (`L`) de la tabla de multiplicación. Por ejemplo, si el usuario ingresa `3` y `4`, el algoritmo debe imprimir: `3`, `6`, `9`, `12`.

36. Construir un programa que determine con un mensaje si un número ingresado es primo o no.

37. Realice un algoritmo que diga si un número ingresado es perfecto o no. Un número perfecto es un número que es igual a la suma de sus divisores propios positivos. De esta forma, 6 es un número perfecto porque sus divisores propios son 1, 2 y 3; y 6 = 1 + 2 + 3.

38. Haga un algoritmo que repetidamente capture números que el usuario ingrese (uno por uno) hasta que el número ingresado sea el cero. Cuando eso suceda, el algoritmo debe mostrar en pantalla los últimos dos números que el usuario había ingresado.

39. Realice un algoritmo que capture N números enteros positivos que el usuario ingrese, con N>=2. El algoritmo deberá imprimir la sumatoria de todos los números, el mayor de los números pares ingresados y el menor de los impares. Deberá pedir, entonces, el número N, seguido de los otro números.
Recuerde hacer las validaciones respectivas.

40. Haga un algoritmo que repetidamente capture números enteros positivos que el usuario ingrese, hasta que el número ingresado sea -1. Cuando esto suceda, el programa debe imprimir en pantalla la suma de todos los números ingresados, exceptuando: el -1, los múltiplos de 3 y los múltiplos de 7.
Note que no hay límite de números predefinido. La captura de números se detiene cuando se integrese -1.

41. En una central de emergencias, cuando se recibe una llamada es necesario determinar, de las N ambulancias disponibles, cuál es la más cercana al lugar de la emergencia. Dadas las coordenadas cartesianas de una emergencia y la ubicación de las N ambulancias, determine cuál es la distancia de la ambulancia más cercana.

- Antes de empezar el programa pida al usuario información de las ambulancias:
   1. Número N de ambulancias
   2. Placa de la ambulancia (Valide que tenga 3 caracteres, sin importar si son números o letras)
   
- Cree un menu:
   1. Ingresar Ubicación (x,y) de cada ambulancia
   2. Ingresar Ubicación (x,y) del accidente y calcular ambulancia más cercana
   3. Salir

## Ejercicios de ciclos

1. Haga un algoritmo que dibuje en la pantalla un triángulo recto de base y altura N, como se indica en el siguiente ejemplo para `N=5`:

```
OOOOO
OOOO
OOO
OO
O
```

+ Resuelva el ejercicio imprimiendo un mensaje por línea
+ Resuelva el ejercicio imprimiendo un solo mensaje (use el caracter `\n` para saltar de línea)

2. Haga un algoritmo que dibuje en pantalla un triágulo, como se indica en el siguiente ejemplo para `N=4`:

```
O
OO
OOO
OOOO
OOO
OO
O
```
+ Resuelva el ejercicio imprimiendo un mensaje por línea
+ Resuelva el ejercicio imprimiendo un solo mensaje (use el caracter `\n` para saltar de línea)

3. Haga un algoritmo que, dado un número `N`, dibuje en la pantalla un rombo de diagonales superior e inferior, `D=N` y `d=N`, respectivamente. Por ejemplo, dado `N=7`, el programa debería pintar la siguiente figura:

```
   O
  OOO
 OOOOO
OOOOOOO
 OOOOO
  OOO
   O
```
+ Resuelva el ejercicio imprimiendo un mensaje por línea
+ Resuelva el ejercicio imprimiendo un solo mensaje (use el caracter `\n` para saltar de línea)

4. Escribir un programa que pregunte al usuario una cantidad de dinero a invertir en un CDT, la tasa de interés anual y el número de durante el que va a dejar la inversión. Luego, muestre por pantalla el capital obtenido en la inversión cada año.

5. Haga un programa que pida al usuario un número entero y que muestre por pantalla un triángulo rectángulo como el se muestra a continuación para `N=9`.
```
1
3 1
5 3 1
7 5 3 1
9 7 5 3 1
```

6. Escribir un programa que pida al usuario una palabra y luego muestre por pantalla una a una las letras de la palabra introducida, empezando por la última. Por ejemplo, si se ingresa: "hola" el programa deberá imprimir: "a l o h".

7. Escribir un programa en el que se pregunte al usuario por una frase y una letra, y muestre por pantalla el número de veces que aparece la letra en la frase.

8. Socitar al usuario que ingrese una frase, y luego imprimir un listado de las vocales que aparecen en esa frase (sin repetirlas). (¿CUALES vocales aparecen?)

9. Solicitar al usuario que ingrese una frase, y luego imprimir la cantidad de vocales que se encuentran en dicha frase. (¿CUANTAS vocales aparecen?)

10. Pedir al usuario que ingrese números enteros positivos, y por cada uno, imprimir la suma de los dígitos que lo componen. Al ingresarse el número `-1`, el programa debe salir. Al final, mostrar CUANTOS de los números ingresados por el usuario fueron pares. 

11. Crear un programa que permita al usuario ingresar títulos de libros por teclado. Se debe finalizar el programa al leerse el string `"*"` (asterisco). Cada vez que el usuario ingrese un string de longitud `l=1` que contenga solo un slash (`"/"`), se considera como terminada una línea. Por cada línea completa, informar cuántos dígitos numéricos aparecieron en total (en todos los títulos que componen esa línea). Finalmente, informar cu´natas líneas completas se ingresaron. Por ejemplo:
```
Ingrese nombre del libro:
Los 3 mosqueteros

Ingrese nombre del libro:
Historia de 2 ciudades

Ingrese nombre del libro:
/

Línea completa. Aparecen 2 dígitos numéricos.

Ingrese nombre del libro:
20000 leguas de viaje submarino

Ingrese nombre del libro:
El señor de los anillos

Ingrese nombre del libro:
/

Línea completa. Aparecen 5 dígitos numéricos.

Ingrese nombre del libro:
20 años después

Ingrese nombre del libro:
*

Fin. Se leyeron 2 líneas completas.
```

12. Hacer un programa que pida al usuario una frase, y que luego informe cuál fue la palabra más larga (en caso de haber más de una, mostrar la primera) y cuántas palabras había.
+ Tome como separador de las palabras el caracter `" "` (espacio), ya sea uno o más.

13. En la central de pollo se pueden comprar alas de pollo en paquetes de 6, 9 o 20 unidades. Escribir una programa que reciba un número entero `X`, y decida si es o no posible comprar `X` cantidad de alitas.
Por ejemplo:
+ Se pueden comprar 12 alitas en 2 paquetes de 6 alitas.
+ Se pueden comprar 26 alitas en 1 paquete de 6 alitas junto con otro de 20.
+ No se pueden comprar 7 alitas. 
+ No se pueden comprar 16 alitas.

14. Encriptar un mensaje usando el método de "la cifra del césar", que consiste en correr cada letra -considerando la posición de cada una en el alfabeto- una determinada cantidad de lugares. Ejemplo: si el corrimiento es de 2 lugares, la palabra "HOLA" se transforma en "JQNC". Si el alfabeto termina antes de poder correr la cantidad de lugares necesarios, se vuelve a comenzar desde la letra "A".

## Ejercicios de arreglos

1. Realizar un programa que defina un vector llamado `vectorNumeros` de 10 enteros. A continuación, inicialice el vector con valores aleatorios, del 0 al 9; y posteriormente, muestre en pantalla cada elemento del vector junto con su cuadrado y su cubo.

2. Crear un vector de 5 elementos de cadenas de caracteres (arreglo de strings). Inicializar el vector con datos leídos por teclado. Copiar los elementos del vector en otro vector, pero en orden inverso. Imprima los dos vectores en pantalla.

3. Se quiere realizar un programa que lea por teclado las 5 notas obtenidas por un alumno (comprendidas entre 0 y 10). A continuación, debe mostrar todas las notas, la nota media, la nota más alta que ha sacado y la menor.

4. Declare un vector de diez elementos enteros positivos. Pida números para rellenarlo; al ingresar el número -1, se debe poder remplazar el último número ingresado.

Por ejemplo: 
Si la secuencia de números ingresada es: `1 2 3 4 5`, al introducir el `-1` seguido del número `6`, la secuencia resultante será `1 2 3 4 6`.

5. Hacer un programa que inicialice un vector de números enteros con valores aleatorios, y posteriomente, ordene los elementos de menor a mayor.

6. Cree un programa que pida un número al usuario correspondiente a un mes del año (0: enero, 1: febrero, 2: marzo, 3: abril, 4: mayo, 5: junio, 6: julio, 7: agosto, 8: septiembre, 9: octubre, 10: noviembre, 11: diciembre) y luego imprima en pantalla cuál es el mes asociado y el número de días del mes. Al ingresar un número mayor a 11, debe mostrar un mensaje de error.

7. Declare tres arreglos `arreglo1`, `arreglo2` y `arreglo3` de cinco enteros cada uno. Pida valores para `arreglo1` y calcule aleatoriamente los valores para `arreglo2`, entre `-5` y `5`. Luego, calcule `arreglo3 = arreglo1 + arreglo2`.

8. Queremos guardar los nombres y las edades de los alumnos de un curso. Realizar un programa que introduzca el nombre y la edad de cada alumno. El proceso de lectura de datos terminará cuando se introduzca como nombre un asterisco (`"*"`). Al finalizar se mostrará los siguientes datos:
    + Todos los alumnos mayores de edad.
    + El alumno más viejo.

9. Cree un programa para guardar la temperatura máxima y mínima de 5 días. Luego, imprima en pantalla la siguiente información:
    + La termperatura media de cada día.
    + Los días con menos temperatura.

Adicionalmente, se lee una temperatura por teclado y se muestran los días cuya temperatura máxima supera ese umbral. Si no existe ningún día se muestra un mensaje de información.

10. Se requiere guardar el nombre de los conductores de una empresa, junto con los kilómetros que conducen cada día de la semana.

Para guardar esta información se van a utilizar dos arreglos:
+ nombres: Arreglo para guardar los nombres de los conductores
+ kilometros: Tabla  para guardar los kilómetros que realizan cada día de la semana.

Se quiere generar un nuevo arreglo `totalKms` con los kilómetros totales que realiza cada conductor.
Al finalizar se muestra la lista con los nombres de conductores y los kilómetros que han realizado.

NOTA: Tenga en cuenta que para hacer una tabla, o una matriz, tendrá que hacer un vector de vectores, o un arreglo de arreglos. Es decir, por ejemplo, la tabla `kilometros` podría ser:

```
let kilometros: [[Int]] = [[1,2,3], [3,4,5], [6,7,8]]
```

11. Crear un programa que lea los precios de 5 artículos y las cantidades vendidas por una empresa en sus 4 sucursales. Informar:

+ Las cantidades totales de cada artículo.
+ La cantidad de artículos en la sucursal 2.
+ La cantidad del artículo 3 en la sucursal 1.
+ La recaudación total de cada sucursal.
+ La recaudación total de la empresa.
+ La sucursal de mayor recaudación.
+ El artículo menos vendido.

Tenga en cuenta que si hay 4 sucursales y por cada una de ellas se tienen las cantidades vendidas de 5 artículos; esto significa que tendrá que hacer una matriz de 4 filas y 5 columnas, que es lo mismo que un vector con 4 vectores en su interior, los cuales se componen de 5 elementos, cada uno.

## Ejercicios de funciones

1. Crea una función `centrar`, que reciba como parámetro una frase de tipo `String` y la escriba centrado en pantalla. Suponer que el ancho de la pantalla es de 80 columnas.

Pista: Si la longitud de la frase es `L`, se tendrán que escribir `40-L/2` espacios en blanco (`" "`) antes del texto.

2. Crea un programa que pida dos número enteros al usuario y diga si alguno de ellos es múltiplo del otro. Crear una función `esMultiplo` que reciba los dos números, y devuelve si el primero es múltiplo del segundo.

3. Crear una función que calcule la temperatura media de un día a partir de la temperatura máxima y mínima. Crear un programa principal, que utilizando la función anterior, vaya pidiendo la temperatura máxima y mínima de cada día y vaya mostrando la media. El programa pedirá el número de días que se van a introducir.

4. Crear un función `convertirEspaciado`, que reciba como parámetro un texto y devuelve una cadena con un espacio adicional tras cada letra. Por ejemplo, `"Hola, tú"` devolverá `"H o l a , t ú "`. Luego, crear un programa principal donde se use dicha función.

5. Crear una función `calcularMaxMin` que recibe una arreglo con valores numérico y devuelve el valor máximo y el mínimo. Luego, crear un programa que pida números por teclado y muestre el máximo y el mínimo, utilizando la función anterior.

6. Diseñar una función que calcule el área y el perímetro de una circunferencia. Utilizar dicha función en un programa principal que lea el radio de una circunferencia y muestre su área y perímetro.

7. Crear una función llamada `login`, que reciba un nombre de usuario (`username`) y una contraseña (`password`) y devuelva `true` si el nombre de usuario es `usuario1` y la contraseña es `asdasd`. Además recibe el número de intentos que se ha intentado hacer login y si no se ha podido hacer login incremente este valor. Luego, crear un programa principal donde se pida un nombre de usuario y una contraseña y se intente hacer login, solamente tenemos tres oportunidades para intentarlo.

8. Crear una función que permita calcular el factorial de un número. Realizar un programa principal donde se lea un entero y se muestre el resultado del factorial.

9. Crear una función que calcule el MCD de dos número por el método de Euclides. El método de Euclides es el siguiente:

+ Se divide el número mayor entre el menor.
+ Si la división es exacta, el divisor es el MCD.
+ Si la división no es exacta, dividimos el divisor entre el resto obtenido y se continúa de esta forma hasta obtener una división exacta, siendo el último divisor el MCD.

Crear un programa principal que lea dos números enteros y muestre el MCD.

10. Escribir dos funciones que permitan calcular:
+ La cantidad de segundos en un tiempo dado en horas, minutos y segundos.
+ La cantidad de horas, minutos y segundos de un tiempo dado en segundos.

Escribir un programa principal con un menú donde se pueda elegir la opción de convertir a segundos, convertir a horas,minutos y segundos o salir del programa.

11. El día juliano correspondiente a una fecha es un número entero que indica los días que han transcurrido desde el 1 de enero del año indicado. Queremos crear un programa principal que al introducir una fecha nos diga el día juliano que corresponde. Para ello podemos hacer las siguientes funciones:

`leerFecha`: Nos permite leer por teclado una fecha (día, mes y año).
`diasDelMes`: Recibe un mes y un año y nos dice los días de ese mes en ese año.
`esBisiesto`: Recibe un año y nos dice si es bisiesto.
`calcularDiaJuliano`: recibe una fecha y nos devuelve el día juliano.

12. Vamos a mejorar el ejercicio anterior haciendo una función para validar la fecha. De tal forma que al leer una fecha se asegura que es válida.

13. Queremos crear un programa que trabaje con fracciones a/b. Para representar una fracción vamos a utilizar dos enteros: numerador y denominador.

Vamos a crear las siguientes funciones para trabajar con funciones:

+ `leerFraccion`: La tarea de esta función es leer por teclado el numerador y el denominador. Cuando se lea una fracción se debe simplificar.
+ `escribirFraccion`: Esta función escribe en pantalla la fracción. Si el dominador es 1, se muestra sólo el numerador.
+ `calcularMCD`: Esta función recibe dos número y devuelve el máximo común divisor.
+ `simplificarFraccion`: Esta función simplifica la fracción, para ello hay que dividir numerador y dominador por el MCD del numerador y denominador.
+ `sumarFracciones`: Función que recibe dos funciones `n1/d1` y `n2/d2`, y calcula la suma de las dos fracciones. La suma de dos fracciones es otra fracción cuyo `numerador=n1*d2+d1*n2` y `denominador=d1*d2`. Se debe simplificar la fracción resultado.
+ `restarFracciones`: Función que resta dos fracciones: `numerador=n1*d2-d1*n2` y `denominador=d1*d2`. Se debe simplificar la fracción resultado.
+ `multiplicarFracciones`: Función que recibe dos fracciones y calcula el producto, para ello `numerador=n1*n2` y `denominador=d1*d2`. Se debe simplificar la fracción resultado.
+ `dividirFracciones`: Función que recibe dos fracciones y calcula el cociente, para ello `numerador=n1*d2` y `denominador=d1*n2`. Se debe simplificar la fracción resultado.

Crear un programa que utilizando las funciones anteriores muestre el siguiente menú:

1. Sumar dos fracciones: En esta opción se piden dos fracciones y se muestra el resultado.
2. Restar dos fracciones: En esta opción se piden dos fracciones y se muestra la resta.
3. Multiplicar dos fracciones: En esta opción se piden dos fracciones y se muestra la producto.
4. Dividir dos fracciones: En esta opción se piden dos fracciones y se muestra la cociente.
5. Salir

13. Vamos a crear un programa para trabajar con una pila. Una pila es una estructura de datos que nos permite guardar un conjunto de variables. La característica fundamental es que el último elemento que se añade al conjunto es el primero que se puede sacar.

Para representar una pila vamos a utilizar un arreglo (vector) de Strings con tamaño 10, por lo tanto la pila no podrá tener más de 10 elementos.

Vamos a crear varias funciones para trabajar con la pila:

+ `incializarPila`: Como tenemos un arreglo de 10 elementos de cadenas tenemos que inicializarlo con espacios vacíos (`""`) en todas las posiciones.
+ `longitudPila`: Función que recibe una pila y devuelve el número de elementos que tiene.
+ `estaVaciaPila`: Función que recibe una pila y que devuelve si la pila está vacía, no tiene elementos.
    EstaLlenaPila: Función que recibe una pila y que devuelve si la pila está llena.
+ `addPila`: función que recibe un String y una pila, y añade la cadena a la pila, si no está llena. si esta llena muestra un mensaje de error.
+ `sacarDeLaPila`: Función que recibe una pila y devuelve el último elemento añadido y lo borra de la pila. Si la pila está vacía muestra un mensaje de error.
+ `escribirPila`: Función que recibe una pila y muestra en pantalla los elementos de la pila.

Realiza un programa principal que nos permita usar las funciones anterior, que nos muestre un menú, con las siguientes opciones:

1. Añadir elemento a la pila
2. Sacar elemento de la pila
3. Longitud de la pila
4. Mostrar pila
5. Salir

15. Vamos a realizar un programa similar al anterior para trabajar con una cola. Una cola es una estructura de datos que nos permite guardar un conjunto de variables. La característica fundamental es que el primer elemento que se añade al conjunto es el primero que se puede sacar.

Todas las funciones del ejercicio anterior sirven, menos la función `sacarDeLaCola`, que es la que se tiene que modificar.
