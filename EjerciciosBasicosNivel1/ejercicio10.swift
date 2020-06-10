//
//  ejercicio16.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 16. Una oficina de seguros ha reunido datos concernientes a todos los accidentes de tránsito ocurridos en el área metropolitana en el último año.
 Por cada conductor involucrado se toman los siguientes datos:
    1. Año de nacimiento
    2. Sexo (F: Femenino, M: Masculino)
    3. Registro del carro (1: Medellín, 2: Girardota, 3: Bello, 4: Otros municipios)
 Haga un programa que muestre:
    a. El porcentaje de conductores menores de 25 años
    b. El porcentaje de conductores de sexo femenino
    c. El porcentaje de conductores cuyos carros están registrados fuera de Medellín.
 
 Use los siguientes datos:
 
 let anyosNacimientos = [1961,1967,1994,1996]
 let sexos = ["M", "F", "M", "F"]
 let registroDelCarro = [1, 2, 3, 4]
 */

func ejercicio16() {
    let anyosNacimientos = [1961,1967,1994,1996]
    let sexos = ["M", "F", "M", "F"]
    let registroDelCarro = [1, 2, 3, 4]
        
    var edades : [Int] = []
    for anyoDeUnaPersona in anyosNacimientos {
        edades.append(2020 - anyoDeUnaPersona)
    }
    
    var personasMenoresDe25 = 0
    for edadPersona in edades {
        if edadPersona < 25 {
            personasMenoresDe25 += 1
        }
    }
    
    var numeroMujeres = 0
    for sexoPersona in sexos {
        if sexoPersona == "F" {
            numeroMujeres += 1
        }
    }
    
    var personasEnMedellin = 0
    for ubicacionPersona in registroDelCarro {
        if ubicacionPersona == 1 {
            personasEnMedellin += 1
        }
    }
    
    let numeroPersonasTotal = Double(anyosNacimientos.count)
    
    let porcentajeMenorDe25 = Double(personasMenoresDe25) / numeroPersonasTotal * 100
    let porcentajeMujer = Double(numeroMujeres) / numeroPersonasTotal * 100
    let porcentajeFueraDeMedellin = (1.0 - Double(personasEnMedellin) / numeroPersonasTotal) * 100

    print("Menores de 25: \(porcentajeMenorDe25)%")
    print("Mujeres: \(porcentajeMujer)%")
    print("Fuera de Medellin: \(porcentajeFueraDeMedellin)%")
    
}
