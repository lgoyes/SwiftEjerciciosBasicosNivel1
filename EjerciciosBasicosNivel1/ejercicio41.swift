//
//  ejercicio41.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 23/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 En una central de emergencias, cuando se recibe una llamada es necesario determinar, de las N ambulancias disponibles, cuál es la más cercana al lugar de la emergencia. Dadas las coordenadas cartesianas de una emergencia y la ubicación de las N ambulancias, determine cuál es la distancia de la ambulancia más cercana.
 - Antes de empezar el programa pida al usuario información de las ambulancias:
    1. Número N de ambulancias
    2. Placa de la ambulancia (Valide que tenga 3 caracteres, sin importar si son números o letras)
 - Cree un menu que itere infinitamente:
    1. Ingresar Ubicación (x,y) de cada ambulancia
    2. Ingresar Ubicación (x,y) del accidente y calcular ambulancia más cercana
    3. Salir
 */

func ejercicio41() {
    var mensaje = ""
    var placasDeAmbulancias = [String]()
    var ubicacionAccidente: (Double, Double) = (0,0)
    var ubicacionAmbulancias = [(Double, Double)]()

    print("Ingrese el número de ambulancias:")
    mensaje = readLine()!
    guard let numeroDeAmbulancias = Int(mensaje) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }

    for contadorAmbulancias in (1...numeroDeAmbulancias) {
        validacion: while true {
            print("Ingrese la placa de la ambulancia número \(contadorAmbulancias):")
            mensaje = readLine()!
            if (mensaje.count == 6) {
                placasDeAmbulancias.append(mensaje)
                break validacion
            }
        }
    }

    print("Ambulancias creadas exitosamente.")

    cicloInfinito: while true {
        print("Ingrese una opcion:")
        print("1. Ingresar Ubicación (x,y) de cada ambulancia")
        print("2. Ingresar Ubicación (x,y) del accidente y calcular ambulancia más cercana")
        print("3. Salir")

        mensaje = readLine()!
        guard let opcion = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }

        switch opcion {
        case 1:
            for indiceAmbulancia in (0..<numeroDeAmbulancias) {
                ubicacionAmbulancias = []
                
                print("Ingrese la posicion X de la ambulancia número \(indiceAmbulancia+1) de placa \(placasDeAmbulancias[indiceAmbulancia]):")
                mensaje = readLine()!
                guard let posicionX = Double(mensaje) else {
                    print("El texto ingresado no puede convertirse a Double")
                    return
                }
                
                print("Ingrese la posicion Y de la ambulancia número \(indiceAmbulancia+1) de placa \(placasDeAmbulancias[indiceAmbulancia]):")
                mensaje = readLine()!
                guard let posicionY = Double(mensaje) else {
                    print("El texto ingresado no puede convertirse a Double")
                    return
                }
                
                let posicionAmbulancia = (posicionX, posicionY)
                
                ubicacionAmbulancias.append(posicionAmbulancia)
            }
        case 2:
            print("Ingrese la posicion X del accidente:")
            mensaje = readLine()!
            guard let posicionX = Double(mensaje) else {
                print("El texto ingresado no puede convertirse a Double")
                return
            }
            
            print("Ingrese la posicion Y del accidente:")
            mensaje = readLine()!
            guard let posicionY = Double(mensaje) else {
                print("El texto ingresado no puede convertirse a Double")
                return
            }
            
            let posicionAccidente = (posicionX, posicionY)
            
        case 3:
            print("Hasta la proxima")
            break cicloInfinito
        default:
            break
        }
    }
}
