# Ejercicios de interfaces

## Protocolos

### Teoría

Un protocolo define una plantilla de métodos, propiedades y otros requisitos de una funcionalidad. Luego de ser definido, el protocolo puede ser _adoptado_ por una clase, estructura, o enumeración, los cuales tendrán que implementar dichos requerimientos.

Cualquier tipo (clase, estructura o enumeración) que satisfaga los requerimientos de un protocolo se dice que _conforma_ al protocolo.

Los protocolos se definen de forma similar a las clases, estructuras y enumeraciones:

```
protocol Animal {
    // La definición del protocolo va aquí.
}
```

Para que un tipo de dato (clase, estructura o enumeración) _conforme_ un protocolo, se coloca el nombre del protocolo después del nombre del tipo de dato, separado por dos puntos (`:`):

```
struct Perro: Animal {
    // La definición de la estructura Perro va aquí
}

struct Animal: Animal {
    // La definición de la estructura Perro va aquí
}
```

Un tipo de dato puede conformar múltiples protocolos, separándolos por comas (`,`):

```
protocol Humano {
 // La definición del segundo protocolo va aquí
}

struct Papa: Animal, Humano {
    // La definición de la estructura Perro va aquí
}
```

#### Requerimientos de Propiedades

Un protocolo puede requerir a los tipos que lo conforman, que tengan propiedades con nombre y tipos específicos. El protocolo también especifica si la propiedad se puede leer y escribir, o si es de solo lectura. Esto tiene implícito que, si la propiedad se puede leer y escribir, no puede ser de tipo `let` (constante), sino que debe ser obligatoriamente de tipo `var` (variable). Si la propiedad es de solo lectura, puede ser tanto `let` como `var`.

Para declarar que una propiedad es de solo lectura, se escribe `{ get }` después de la definición de la misma. Para declarar que es de lectura y escritura, se escribe `{ get set }` después de la definición:

```
protocol AlgunProtocolo {
    var variableDeSoloLectura : Int { get }
    let constanteDeSoloLectura : Int { get }
    var variableDeLecturaYEscritura : Int { get set }
}
```

Por ejemplo, considérese el siguiente protocolo:

```
protocol Nombrado {
    var nombreCompleto: String { get }
}
```

Según la definición del protocolo `Nombrado`, todos los tipos de datos (estructura, enumeración, clase) que lo conformen, deben tener una propiedad variable que se pueda leer, de tipo `String`, y de nombre `nombreCompleto`.

Considere el siguiente ejemplo de una estructura simple que adopta y conforma el protocolo `Nombrado`:

```
struct Persona: Nombrado {
    var nombreCompleto: String
}

let luis = Persona(nombreCompleto: "Luis Goyes")
```

Este ejemplo define la estructura llamada `Persona`, que representa específicamente a una persona con nombre. Esta definición _conforma_ el protocolo `Nombrado`. Cada instancia de `Persona` tiene una sola propiedad llamada `nombreCompleto`, que es de tipo `String`. Esto coincide con el requerimiento de `Nombrado`, lo cual significa que `Persona` conforma correctamente el protocolo. (Si no tuviera esta propiedad, el compilador sacaría un error reportando que los requerimientos del protocolo no se cumplen).

Considérese otro ejemplo:

```
struct Nave: Nombrado {
    var nombreCompleto: String
    var misilesConteo: Int
    var gasolinaPorcentaje: Int
}

var enterprise = Nave(nombreCompleto: "Enterprise", misilesConteo: 1, gasolinaPorcentaje: 100)
```

Esta clase implementa la propiedad `nombreCompleto` como lo requiere el protocolo `Nombrado`.

#### Requerimientos de Métodos de Mutación

Algunas veces es necesario que un método modifique (o _mute_) la instancia a la que pertenece. Para métodos en estructuras y enumeraciones, se coloca la palabra clave `mutating` antes de la palabra clave `func` para indicar que el método está autorizado a modificar la instancia a la cual pertence, y todas sus propiedades.

Considere el siguiente ejemplo:

```
protocol Togglable {
    mutating func toggle()
}
```

Este protocolo `Toggable` requiere un solo método llamado `toggle`. Como el nombre sugiere, el método `toggle` pretende invertir el estado de cualquiera de los tipos (estructura, enumeración o clase) que lo conformen, típicamente al modificar una propiedad del mismo.

El método `toggle` se marca con la palabra clave `mutating` para indicar que el método va a mutar el estado de la instancia que lo conforma, cuando se llama.

Considere la siguiente enumeración:

```
enum Interruptor: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
            case .on:
                self = .off
            case .off:
                self = .on
        }
    }
}

var bombillo = Interruptor.off
bombillo.toggle()

// El bombillo ahora debe estar en .on
```

En este ejemplo se puede ver que, dentro del método `toggle`, se está modificando el valor de la misma enumeración que conforma el protocolo. Para consultar cuál es su propio valor, se usa `self`. Asímismo, para asignarse un nuevo valor también se usa `self`. En otras palabras, `self` representa a la instancia en sí misma.

Considere el siguiente ejemplo:

```
protocol MedioDeTransporte {
    var combustibleLitros: Int
    var kilometraje: Int
    
    mutating func recargar(litros: Int)
    mutating func desplazarse(km: Int)
}

struct Carro: MedioDeTransporte {
    var combustibleLitros: Int
    var kilometraje: Int
    
    let kilometrosPorLitro: Int

    mutating func recargar(litros: Int) {
        self.combustibleLitros += litros
    }
    
    mutating func desplazarse(km: Int) {
        let combustibleConsumido = Int(Double(km) / (kilometrosPorLitro))
        
        self.combustibleLitros -= combustibleConsumido
        self.kilometraje += km
    }
}

let patichueco = Carro(kilometrosPorLitro: 10, combustibleLitros: 30, kilometraje: 0)
patichueco.desplazarse(km: 10)

// Debe quedar patichueco.kilometraje en 10, y patichueco.combustibleLitros en 29

patichueco.recargar(litros: 10)

// Debe quedar patichueco.combustibleLitros en 39
```

#### Protocolos como Tipos

Los protoclos no implementan ninguna funcionalidad por sí mismos. Sin embargo, se pueden usar los protocolos como un tipo de dato. Los lugares donde se permite usar un protocolo como tipo de dato, son los siguientes:
* Como el tipo de un parámetro, o como el tipo de retorno de una función.
* Como el tipo de una constante o una variable.
* Como el tipo de los elementos de un arreglo, diccionario, u otro contenedor.

Como los protocolos son tipos, se debe comenzar sus nombres con una letra mayúscula, para que coincida con la convención de nombres de los otros tipos de Swift (como `Int`, `String` y `Double`).

Considere el siguiente protocolo:

```
protocol Empleado {
    func desempenyarOficio()
}
```

Ahora, considere las siguientes estructuras:

```
struct Desarrollador: Empleado {
    func desempenyarOficio() {
        print("Me dedico a programar todo el dia")
    }
}

struct Dibujante: Empleado {
    func desempenyarOficio() {
        print("Me dedico a pintar")
    }
}

struct Empresa {
    var empleados: [Empleado]
}
```

Note, en primer lugar, que como la función `desempenyarOficio` del protocolo `Empleado`, no modifica el estado de las estructuras, no se requiere el modificador `mutating`.

Considere ahora las siguientes instancias:

```
let luisGoyes = Desarrollador()
let davinci = Dibujante()
let microsoft = Empresa(empleados: [luisGoyes, davinci])
```

Note que, tanto `Desarrollador` como `Dibujante` conforman el protocolo `Empleado`, y por eso, `Empresa` puede almacenar las instancias `luisGoyes` y `davinci` dentro del arreglo de `Empleado`. Si el arreglo fuera de tipo `Desarrollador`, no podría almacenar a `davinci`; y si fuera de tipo `Dibujante`, no podría almacenar a `luisGoyes`.

Luego, se pueden recorrer todos los empleados de `microsoft` e invocar su funcion `desempenyarOficio`:

```
for empleado in microsoft.empleados {
    empleado.desempenyarOficio()
}

// Va a arrojar:
// Me dedico a programar todo el dia
// Me dedico a pintar
```

A pesar de que se puede conformar un protocolo poniéndolo después del nombre del tipo de datos (ver el ejemplo de `Desarrollador` y `Dibujante`) es más común ver que se conformen los protocolos a través de extensiones:

```
struct Futbolista {
}

extension Futbolista: Empleado {
    func desempenyarOficio() {
        print("Me dedico a chutar un balon todo el dia")
    }
}
```

Como se ve en este ejemplo, la estructura de `Futbolista` no tiene estado (atributos) ni comportamiento (funciones), inicialmente. Después de su creación, se la hace conformar el protocolo `Empleado`. 

### Ejercicios

1. Se quiere hacer un tablero, como en paint. Para ello, se deben definir varias figuras: `Circulo`, `Rectangulo` y `Triángulo`. El tablero (de tipo `Tablero`) solo sabe que tiene figuras de tipo `FiguraCerrada`, y que todas las figuras tienen una función `func obtenerArea() -> Double` y otra función `func obtenerPerimetro() -> Double`.

Haga un programa que permita agregar, listar las figuras, eliminar las figuras, implimir el area total del tablero (suma de todas las areas) y el perímetro total del tablero (suma de todos los perímetros).

2. Todos los alimentos que existen se definen por su nombre, el numero de gramos de proteina por gramo de alimento, el numero de gramos de carbohidratos por gramo de alimento y el numero de gramos de grasa por gramo de alimento. Se debe saber que 1gr de carbohidratos o de proteína aportan 4 calorías, y que 1gr de grasa aporta 9 calorías.

Se puede consumir tres tipo de alimentos: `Chatarra`, `Saludable` y `DeDudosaProcedencia`. La comida chatarra puede ser  `mecato` o `gaseosa` (esto es una enumeracion), y puede o no venir en un empaque reciclable; la comida saludable puede ser `sopa` o `seco` (también es una enumeración) y los alimentos de dudosa procedencia tienen fecha de vencimiento.

Un ser humano tiene un requerimiento mínimo calórico diario (Tasa de Metabolismo Basal) que depende de su peso, su sexo, su estatura, su edad y su nivel de actividad física:

`Hombre: TMB = (10 x Peso_kg) + (6.25 x Altura_cm) - (5 x Edad_anyos) + 5`
`Mujer: TMB = (10 x Peso_kg) + (6.25 x Altura_cm) - (5 x Edad_anyos) -161`

Luego,

Poco o ningún ejercicio: `Calorias necesarias = TMB x 1,2`
Ejercicio ligero (1-3 días a la semana): `Calorias necesarias = TMB x 1,375`
Ejercicio moderado (3-5 días a la semana): `Calorias necesarias = TMB x 1,55`
Ejercicio fuerte (6-7 días a la semana): `Calorias necesarias = TMB x 1,725`

Crear un programa que represente el ciclo de consumo y gasto calórico del mundo. Para ello, crear una estructura `Poblacion` que tenga un arreglo de elementos de tipo `Persona`. Diariamente, se debe recorrer a todas las personas de la población y restárseles el número de calorias diarias mínima. Por otro lado, se debe poder alimentar a las personas con distintos alimentos, en distintas porciones.

Para que el ejercicio sea fácil, considere que la población tiene solo dos personas (inicialmente).

3. Todos los vehículos que existen se definen por su marca, cilindrada del motor, el número de galones de combustible que le caben, y su rata de kilómetros recorridos por galón de gasolina consumido (km/galon).

Existen tres tipos de vehículo: `Moto`, `Carro` y `Camión`. La moto puede ser `automática`, `semi-automática` o `manual` (esto es una enumeración), y puede tener 2 o 3 ruedas; el carro puede ser `automático` o `manual`, puede tener o no maletero recortado; y puede tener 2 o 4 puertas. El camión puede tener 6, 8 o 16 ruedas, y puede o no tener trailer desmontable.

Crear un programa que represente el ciclo de consumo y recarga de combustible de los vehículos. Un vehículo puede recargar una cantidad determinada de combustible en una estación de servicio, y puede ejecutar viajes con una distancia determinada en kilómetros.

Por otro lado, una empresa de transporte, que posee motos, carros y camiones, quiere saber cuántos galones se van a consumir en un viaje en caravana a determinada ciudad. Para ello, debe hacer el cálculo de consumo de combustible sobre un conjunto de vehículos.

4. La empresa `Moticos S.A.S` tiene varios empleados en su nómina: tiene `Conductores`, `Ingenieros` y `Vendedores`. Todos los empleados tienen `nombre`, `documentoIdentidad`, `edad` y `salarioNomina`; además, todos tienen una función `trabajar`, que desempeñan de una forma distinta, según la profesión.

Los `Conductores` tienen `numeroMatriculaVehiculo` y al `trabajar`, recorren la ciudad en sus vehículos (basta con imprimir un mensaje). Los `ingenieros` cierto porcentaje de eficiencia en el trabajo (que es un número del 1 al 100) y al `trabajar`, se sientan en una silla a rascarse la barriga (basta con imprimir un mensaje). Los `Vendedores` tienen `promedioVentasDia` y al `trabajar`, hacen llamadas telefónicas (basta con imprimir un mensaje).

Cuando alguien quiere renunciar, y se lo va a liquidar, se debe calcular el valor a pagarsele de liquidación según la profesión:
* Si es `Conductor` se le paga el salario, multiplicado por décima parte, de la cantidad de años de su edad que estén por encima de 20. (Si la edad es 24, la cantidad de años por encima de `20` son `4`, sobre `10` son `0.4`).
* Si es `Ingeniero`, se le paga el salario, multiplicado por el porcentaje de eficiencia en el trabajo.
* Si es `Vendedor`, se le paga el salario, multiplicado por el promedio de ventas del día, dividido `30`.

Crear un programa que facilite crear y agregar empleados a la empresa  `Moticos S.A.S`, y que permita determinar cuál es el monto a pagar en la liquidación de cada persona.

5. Juanito es un Carpintero que usa muchas herramientas. Todas las herramientas tienen un `nombre`, y un `año de compra`.

El martillo, además de las propiedades que tienen todas las herramientas, tiene un mango de cierta `longitud` y una cabeza con un `peso` determinado.

La sierra, además de las propiedades que tienen todas las herramientas, tiene una empuñadura de cierto material que puede ser `plástico`, `madera` o `fibraDeCarbono`; también tiene un borde cortante de cierta longitud, y puede ser de uno de los siguientes tipos: `serruchoComun`, `serruchoCostilla`, `serruchoPunta`, `segueta` y `sierraDeCalar`.

El taladro, además de las propiedades que tienen todas las herramientas, tiene un `color` y una `potencia` en caballos de fuerza.

Juanito debe ser capaz de usar cada una de las herramientas, para lo cual, la clase `Carpintero` deberá tener una función `usar` que reciba una `Herramienta`, y llame la función `operar`.

Cuando se llama la funcion `operar` en el `Martillo`, se dan golpes.
Cuando se llama la funcion `operar` en la `Sierra`, se corta.
Cuando se llama la funcion `operar` en el `Taladro`, se hace un hueco.

Cree un programa para modelar este sistema, en el que se puedan administrar las herramientas de Juanito, y que permita a Juanito `usar` la herramienta que quiera.

6. Estudie el funcionamiento del protocolo `Equatable` (https://developer.apple.com/documentation/swift/equatable) y haga un programa sencillo donde compare si dos personas (con nombre, apellido y edad) son iguales.

7. Estudie el funcionamiento del protocolo `Error` (https://developer.apple.com/documentation/swift/error). Agregue manejo de errores al programa del punto 2.
