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


### Teoría

Las estructuras son tipos de datos complejos, lo que significa que se componen de otros tipos de datos. Se debe definir una "plantilla" para la estructura, y luego se crean instancias de esa plantilla, rellenando los valores.
Por ejemplo, definamos una estructura `Persona` que contiene dos propiedades: `nombre` y `edad`:
```
struct Persona {
    var nombre: String
    var edad: Int
    let tieneHijo: Bool
}
```

Swift genera un inicializador para la estructura, en el que se debe dar un valor a cada uno de sus miembros:
```
let papa = Persona(nombre: "Luis", edad: 10, tieneHijo: true)
let hijo = Persona(nombre: "Luis2", edad: 2, tieneHijo: false)
```

Una vez creada la instancia de la estructura, se pueden leer sus propiedades al escribir el nombre de la instancia, seguida por un punto, y luego el miembro que se quiere leer:
```
print(papa.nombre)
print(hijo.edad)
```

Asímismo, para modificar los valores de los miembros de una instancia de la estructura, se puede acceder a ellos por el nombre de la instancia, seguida de un punto, y luego el miembro que se quiere modificar. Después, se pone el operador de asignación (=), seguido de su nuevo valor:
```
papa.nombre = "Medardo"
hijo.edad = 11
```

Nótese que, para que esto funcione, es OBLIGATORIO que el miembro sea VARIABLE y no constante. En caso de trate modificar una constante, el compilador arrojará error:
```
papa.tieneHijo = false // Error de compilación
```

Los miembros de una estructura pueden ser, tanto datos primitivos (`Int`, `Bool`, `String`, etc) como otros datos complejos (otras estructuras, diccionarios, tuplas, etc). Por ejemplo, considere las siguientes estructuras:
```
struct Ubicacion {
    let latitud: Double
    let longitud: Double
}
struct Direccion {
    let nombre: String
    let ubicacion: Ubicacion
}
struct Restaurante {
    let id: Int
    let nombre: String
    let direcciones: [Direccion]
}
struct DirectorioTelefonico {
    let directorio: [(restaurante: Restaurante, telefono: String)]
}
```

Nótese que  `Ubicacion` es una estructura cuyos miembros son variables primitivas (`Double` únicamente); `Direccion` tiene tanto variables primitivas como complejas (`String` y `Direccion`, respectivamente); `Restaurante` tiene un arreglo de variables complejas, un nombre y un id; y `DirectorioTelefonico` tiene un arreglo de tuplas, compuestas por un `Restaurante` y un `String`.

Una estructura NO ES una clase. El propósito de una estructura es _almacenar datos_, mientras que el de una clase es _abstraer comportamiento_.

Una estructura puede tener funciones, pero esto lo veremos más adelante. Por ahora, nos basta saber que **solo sirven para almacenar datos**.

### Ejercicios

1. McDonalds requiere una aplicación para hacer domicilios, en la que se mapee la ciudad de Medellín en una cuadrícula de 10x10. Las primeras dos franquicias que van a participar de la prueba piloto, llamadas "San Juan" y "Las palmas", están ubicadas en (2,2) y (5,7). Cada franquicia arranca con un capital de `100.000` COP.

El menú que ofrecen todos los restaurante de MacDonalds es limitado: solo se puede ordenar entre `Hamburguesa`, `Gaseosa` y `Papas`, y sus costos, en COP, son `15000`, `7000` y `4700`, respectivamente.

Cada restaurante tiene un inventario de los productos del menú finito. (Nótese, entonces, que cada franquicia está representada por un nombre, una ubicación, un capital, y un inventario de productos).

Para crear una nueva orden, se captura la ubicación del cliente, su nombre y los productos que quiere llevar. (Nótese que estos son los datos de una `Orden`, no de un cliente).

Cada orden es asignada al restaurante más cercano al cliente, siempre y cuando este tenga los productos pedidos en inventario. En caso de que un restaurante no pueda cumplir con la solicitud, rechazará el pedido, y comprará 10 unidades del producto que le faltaba (el costo del producto es el 50% del precio de venta del mismo).

El programa debe permitir agregar una nueva franquicia en cualquier momento.

2. La empresa Instagram2 quiere crear una nueva red social. Cada usuario tiene un `id`, un `correo`, `contraseña`, `nombre` y una colección de `publicaciones`. Cada publicación puede ser de tipo `Imagen` o `Video`, tiene un `id`, la `URL` del archivo asociado, una `descripcion`, una lista de `comentarios` y un contador de `likes`.

Hacer un programa que permita `Crear`, `Eliminar`, `Listar` y `Modificar` Usuarios y administrar Publicaciones.

Al conjunto de operaciones `Crear`, `Eliminar`, `Leer`, `Listar` y `Modificar` se le conoce como operaciones `CRUDL` (es el acrónimo de `Create`, `Read`, `Update`, `Delete`, `List`).

3. Repita el ejercicio 1 de la sección de Enumeraciones usando Estructuras en lugar de tuplas. Modifíquelo de modo que haya 2 obstáculos de dimensiones 1x1 en el camino (la cantidad puede variar) cuya posición sea dada aleatoriamente. El personaje no se puede tomar la posición de los obstáculos.

## Diccionarios

Un diccionario es un tipo de colección que relaciona pares `Llave`-`Valor` (`a:b`) de tipos `A` y `B`, respectivamente; donde `A` puede ser el mismo tipo que `B`. A tener en cuenta:
* Los elementos dentro del diccionario NO tienen un orden determinado. No son como elementos de un arreglo, que se pueden acceder a través de una posición. NO existe una posición ordenada.
* Cada llave `a`, de la pareja `a:b`, es UNICA e identifican al dato `b` dentro del diccionario.
    * Imagine que tenemos a dos personas dentro del diccionario. La llave es el número de cédula, y el nombre es el valor. El nombre puede repetirse; la cédula, no.
    
Un diccionario es de tipo `Dictionary<Key, Value>`, donde `Key` es el tipo del dato usado como llave o identificador, y `Value` es el tipo del dato almacenado en el diccionario, para su llave asociada.

La forma corta del tipo `Dictionary<Key, Value>` es `[Key: Value]`. Ambas formas son válidas, y nosotros vamos a preferir la forma corta.

Para crear un diccionario vacío de cierto tipo se puede usar la misma sintaxis de los arreglos:
```
var nombresDeEnteros = [Int: String]()
var cedulasANombres = [String: String]()
```

En el ejemplo 1, se van a asociar números enteros con la forma como se leen en español. En el ejemplo 2, se van a asociar números de cédula (representadas con Strings), con un nombre de una persona.
Otra forma de inicializar los diccionarios vacíos, habría sido:
```
var nombresDeEnteros : [Int: String] = [:]
var cedulasANombres : [String: String] = [:]
```

Para agregar una entrada al diccionario, basta con usar la misma notación de índice de los arreglos (`[0]`, `["1297319X"]`). Vale aclarar que, para modificar un diccionario, este debe ser mutable (o sea, `var` y no `let`.)
```
nombresDeEnteros[20] = "veinte"
cedulasANombres["1297319X"] = "Luis"
```

A diferencia de los arreglos, que se estallaban si la posición no existía, los diccionarios crean una nueva entrada, si no existe.

Para modificar una entrada del diccionario, se usa la misma notación de índice que vimos anteriormente.
```
nombresDeEnteros[20] = "VEINTE"
cedulasANombres["1297319X"] = "Luis Medardo G."
```

Para leer una entrada del diccionario, se llama la llave deseada, usando la notación de índice:
```
let numeroAImprimir = nombreDeEnteros[20]
let desarrollador = cedulasANombres["1297319X"]

print(numeroAImprimir) //Optional("VEINTE")
print(desarrollador) //Optional("Luis Medardo G.")
```

Como puede ver, el diccionario retorna un dato opcional, cuando se consulta por una llave. Eso se debe a que _existe la posibilidad de que la llave no exista_. En caso de que la llave no exista, el diccionario devolverá `nil`.
```
let numeroInexistente = nombreDeEnteros[21]
let desarrolladorInexistente = cedulasANombres["1297319X"]

print(numeroAImprimir) //nil
print(desarrollador) //nil
```

Para eliminar una entrada del diccionario, basta con asignarle el valor de `nil` a la llave que se desea eliminar:
```
nombresDeEnteros[20] = nil
cedulasANombres["1297319X"] = nil

print(nombreDeEnteros[20]) //nil
print(cedulasANombres["1297319X"]) //nil
```

Como las entradas del diccionario no están ordenadas como en un arreglo, no se puede iterar sobre este como regularmente hemos iterado sobre arreglos, sino que se debe iterar directamente sobre los elementos del diccionario:
```
for (numero, lectura) in nombreDeEnteros {
    print("El número \(numero) se lee \(lectura)")
}
for (cedula, nombre) in cedulasANombres {
    print("La cedula \(cedula) pertenece a \(nombre)")
}
```

Nótese que cada elemento del diccionario es una tupla, que hemos descompuesto en dos partes: una llave, y un valor.

### Ejercicios

1. Dado un diccionario `codigo` de tipo `[String: String]`, que tiene valores para todas las letras minúsculas del alfabeto. El diccionario `codigo` representa la manera de codificar un mensaje. Por ejemplo, si `codigo["a"]="z"` y `codigo["b"]="x"`, la versión codificada de `ababa` sería `zxzxz`.

Dado un `mensaje` que contiene solo letras minúsculas y espacios, use el diccioinario para codificar el mensaje e imprimir el resultado.

```
var codigo = [
    "a" : "b",
    "b" : "c",
    "c" : "d",
    "d" : "e",
    "e" : "f",
    "f" : "g",
    "g" : "h",
    "h" : "i",
    "i" : "j",
    "j" : "k",
    "k" : "l",
    "l" : "m",
    "m" : "n",
    "n" : "o",
    "o" : "p",
    "p" : "q",
    "q" : "r",
    "r" : "s",
    "s" : "t",
    "t" : "u",
    "u" : "v",
    "v" : "w",
    "w" : "x",
    "x" : "y",
    "y" : "z",
    "z" : "a"
]
```

2. Dado un arreglo de diccionarios. Cada diccionario en el arreglo contiene exactamente 2 llaves: `nombre` y `apellido`. Cree un arreglo de strings llamado `nombres` que contenga únicamente los valores de la llave `nombre` de cada diccionario.
Si, por ejemplo, se tienen las siguientes personas:
```
var personas: [[String:String]] = [
    [
        "nombre": "Luis",
        "apellido": "Goyes"
    ],
    [
        "nombre": "David",
        "apellido": "Garces"
    ]
]
```
El resultado esperado es:
```
let nombres = ["Luis", "David"]
```

3. Dado un arreglo de diccionarios. Cada diccionario contiene máximo 3 llaves: `primerNombre`, `segundoNombre` y `apellido`. Cree un arreglo de strings llamado `nombresCompletos` que contiene los valores de `primerNombre`, `segundoNombre` y `apellido`, concatenados, separados por un espacio. Tenga en cuenta que no todas las personas tienen segundo nombre.
Si, por ejemplo, se tienen las siguientes personas:
```
var personas: [[String:String]] = [
    [
        "primerNombre": "Luis",
        "segundoNombre": "David",
        "apellido": "Goyes"
    ],
    [
        "nombre": "Natalia",
        "apellido": "Garces"
    ]
]
```
El resultado esperado es:
```
let nombresCompletos = ["Luis David Goyes", "Natalia Garces"]
```

4. Dado un arreglo de enteros, encuentre el número de veces que aparece cada entero en el arreglo. Imprima los números en orden ascendente, seguido por su frecuencia.
Si, por ejemplo, se tiene el arreglo:
```
var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
```
La salida es:
```
1 2
2 6
3 3
4 1
5 1
```

5. Dado un arreglo de participantes de un juego, encuentre la persona con el puntaje más alto. Cada participante se representa por una llave `String` para el nombre y un valor `Int` para su puntaje. En caso de que haya un empate, mostrar al primero que se encuentre.
Si, por ejemplo, se tiene el arreglo:
```
var personas: [[String: Int]] = [["Luis": 1], ["David": 2], ["Natalia": 2]]
```
La salida es:
```
David
```
