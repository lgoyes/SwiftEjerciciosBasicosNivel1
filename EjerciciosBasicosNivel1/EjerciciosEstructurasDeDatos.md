# Ejercicios de estructuras de datos

## Tuplas

### Teoría:

Una tupla es una agrupación de varios tipos de datos, dentro de un mismo tipo.

Ejemplo:
Imaginemos que queremos declarar varias variables a la vez y darles un valor, como por ejemplo, un alto y un ancho. Normalmente haríamos:
```
var alto = 2
var ancho = 3
```
Con ayuda de las tuplas, podemos reducir el código así:
```
var dimensiones = (2,3)
```
Nótese que los valores de la tupla deben estar encerrados entre paréntesis; y que sus tipos son inferidos. Se consigue el mismo resultado haciendo:
```
var dimensiones: (Int, Int) = (2,3)
```
Se puede acceder a los elementos de la tupla, a través de su índice. Por ejemplo:
```
var altoTupla = dimensiones.0 // Va a sacar el 2 de la tupla
var anchoTupla = dimensiones.1 // Va a sacar el 3 de la tupla
```
Las partes de la tupla también pueden ser nombradas:
```
var persona = (nombre: "Luis", edad: 10)
```
Tenga en cuenta que aquí también se infiere el tipo de los datos. Se obtiene el mismo resultado haciendo:
```
var persona: (nombre: String, edad: Int) = (nombre: "Luis", edad: 10)
```
En el caso de las tuplas nombradas, se puede acceder a sus elemento a través del nombre dado:
```
var nombrePersona = persona.nombre // Va a sacar el "Luis" de la tupla
var edadPersona = persona.edad // Va a sacar el 10 de la tupla
```
Existe otra manera de extraer la información de una tupla y se conoce como "Destructuración". Considere el siguiente ejemplo:
```
var persona = (nombre: "Luis", edad: 10)
var (nombre, edad) = persona
var (nombrecito, medidorDeVejez) = persona
```
En el ejemplo anterior, el string `Luis` va a estar almacenado en la variable `nombre`, mientras que el entero `10` va a estar almacenado en la variable `edad`. Note también que `nombrecito` también almacena el string `Luis` y `medidorDeVejez` también almacena el entero `10`. Esto significa que la descomposición de la tupla depende únicamente del ORDEN de sus elementos internos, no por el nombre de los mismos.

Durante la destructuración, puede ignorar algunos de los elementos de la tupla, usando guiones bajos en las posiciones que decida ignorar. Por ejemplo:
```
var persona = (nombre: "Luis", edad: 10)
var (unStringCualquiera, _) = persona
```
En este caso, solo se extrae el primer elemento de la tupla, que corresponde al string `Luis`.

### Ejercicios

1. Pedir al usuario que ingrese los datos de 7 personas: su nombre (`String`), su edad (`Int`) y si es mujer (`Bool`). Represente a cada persona por una tupla, y almacene todas las personas en un arreglo. Luego, imprima el nombre de las mujeres mayores de 30 años. En caso de que no haya mujeres en el arreglo, la función de filtro de personas debe arrojar un error.

2. Cree una función que, dados dos valores enteros, retorne una tupla indicando cuál de esos dos valores es el menor y cuál el mayor. En caso que de que ambos números sean iguales, la función debe arrojar un error señalando que los números son iguales.

3. Pida al usuario que ingrese los datos de 5 películas: nombre, dinero recaudado y director. Represente cada película por una tupla y almacene todas las películas en un arreglo. Luego, imprima cuál es el director con más películas, y cuál fue la película con más dinero recaudado. Ajuste los datos recibidos de modo que, si el dinero recaudado de una película sea menor que 0, se almacene 0 en su lugar.

4. Representemos una figura por una tupla compuesta por tres elementos: un `String` para el tipo (cuadrado, triángulo y círculo), un `Int` para el número de lados (4, 3, 0, respectivamente) y un `Double` para su área.

Cree un programa con un menú que permita al usuario 1. agregar un cuadrado, 2. agregar un triángulo, 3. agregar un círculo, 4. ver figuras y 5. salir. Para agregar un cuadrado, se debe ingresar la longitud de sus lados; para agregar un triángulo se debe agregar su base y su altura; y para agregar un círculo, se debe agregar su radio.

Cada vez que el usuario ingrese una figura, se debe calcular su área, y se debe almacenar la información de las figuras (tipo, número de lados y área) en un arreglo.

## Enumeraciones

### Teoría

Son un conjunto de datos de un mismo tipo que agrupa valores que se relacionan entre sí. Normalmente se usan para acotar posibles características de una propiedad, donde uno de los valores de la enumeración es asignado a una variable tipificada en esta.

Por ejemplo, si tenemos una propiedad que es "puntos cardinales", es fácil saber qué valores vamos a poner: `norte`, `sur`, `este`, `oeste`. Podemos usar un entero y poner los valores. Pero, ¿y sí queremos que estos sean los únicos posibles valores de nuestro campo? Usamos las enumeraciones:
```
enum PuntoCardinal {
    case norte, sur, este, oeste
}
```
Luego, se puede crear un variable cuyo valor sea dado por uno de los casos del enum:
```
var direccion: PuntoCardinal = PuntoCardinal.norte
```
Note que el nombre de la enumeración empieza en mayúscula, porque se está definiendo un tipo de dato, y va en singular, porque la variable que la utilizará solo puede tomar un valor.  

A un enum se le puede asignar un valor primitivo (`Int`, `String`, `Double`, `Bool`) de la siguiente manera:
```
enum MonedaCOP: Int {
    case cincuenta = 50
    case cien = 100
    case doscientos = 200
    case quinientos = 500
    case mil = 1000
}
```
Para acceder a su valor primitivo, se llama a la propiedad `rawValue` del valor del enum, por ejemplo:
```
var numeroDeMonedasDe100 = 3
var totalPlata = MonedaCOP.cien.rawValue * numeroDeMonedasDe100 // El resultado es 300
```
Las enumeraciones son herramientas muy útiles para el manejo de opciones dentro de un switch:
```
var direccion: PuntoCardinal = PuntoCardinal.norte
switch (direccion) {
    case .norte:
        print("Voy al norte")
    case .sur:
        print("Voy al sur")
    case .este:
        print("Voy al este")
    case .oeste:
        print("Voy al oeste")
}
```
Hay que tener en cuenta que el switch debe ser exhaustivo, lo que significa que se deben cubrir todos los casos del enum, o usar un "default" en caso contrario.

El enum también puede tener un dato acompañante. Por ejemplo:
```
enum iOSDeviceType {
    case iPhone(String)
    case iPad
    case iWatch
}
```
En este caso, el dato acompañante es el modelo. Dado este tipo de dato, podríamos crear las siguientes variables:
```
var myDevice = iOSDeviceType.iPhone("XR")
var six = iOSDeviceType.iPhone("6")
var sixPlus = iOSDeviceType.iPhone("6 Plus")
var myIpad = iOSDeviceType.iPad
```
El dato acompañante se puede usar de la siguiente manera:
```
func printDevice(device: iOSDeviceType) {
    switch (device) {
        case .iPhone(let modelo):
            print("Tengo un iphone \(modelo)")
        case .iPad:
            print("Tengo un iPad")
        case .iWatch:
            print("Tengo un iWatch")
    }
}
```

### Ejercicios

1. Hacer un juego que consista en sacar a un personaje de una cuadricula de 5x5 posiciones, por una puerta ubicada en el borde derecho de la misma.

Para empezar, ubicar aleatoriamente al personaje en algún punto (0,y) de la cuadricula (borde izquierdo), y ubicar aleatoriamente la salida en un punto (4,y) de la cuadrícula (borde derecho).

Pedir al usuario de forma iterativa que ingrese alguna dirección para mover al personaje (arriba, abajo, izquierda o derecha) un paso. Mostrar la nueva posición del personaje, y la posición de la salida, en cada iteración.

La función de movimiento del personaje debe arrojar un error si se ingresa una dirección de movimiento, que saque al personaje fuera de la cuadrícula.

El juego acaba cuando la posición (x,y) del personaje sea la misma que la posición (x,y) de la salida.

2. Hacer el juego de piedra, papel y tijeras, utilizando una enumeración con los tres posibles casos.
Aleatoriamente, el computador va a generar una de las tres opciones.
Imprimir en pantalla cuando haya un empate, cuando el jugador gane, y cuando el jugador pierda.

3. Hacer un programa que le pregunte al usuario cuántas monedas (en COP) de cada tipo tiene el usuario, y que arroje al final la cantidad de dinero que tiene.

Consejo: Crear un enum `TipoMoneda`, y un arreglo de tuplas, que sean de la forma `(tipo: TipoMoneda, cantidad: Int)`.

4. En un restaurante se tienen 4 productos: `Bebida`, `Sopa`, `Seco` y `Postre`, cuyos precios son `100`, `200`, `300` y `400` respectivamente. Cuando un mesero se acerca a una mesa a pedir un pedido, anota cuántas unidades de cada producto quieren los comensales. 

Imprima cuántas unidades de cada productos pidió la mesa, y cuánto es el total a pagar.

## Estructuras

## Diccionarios

## Conjuntos


