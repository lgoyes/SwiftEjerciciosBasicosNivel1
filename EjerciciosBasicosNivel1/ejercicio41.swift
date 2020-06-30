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
    var ubicacionAccidente: (Double, Double) = (0, 0)
    var ubicacionAmbulancias = [(Double, Double)]()
    var menorDistanciaHastaElAccidente = -1.0
    var ambulanciaMasCercana = -1

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
            if (mensaje.count == 3) {
                placasDeAmbulancias.append(mensaje)
                break validacion
            } else {
                print("Formato de placa inválida. Tiene que ser de 3 caracteres.")
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
            ubicacionAmbulancias = []
            for indiceAmbulancia in (0..<numeroDeAmbulancias) {

                capturaPosicionAmbulancia: while true {
                    print("Ingrese la posicion X,Y de la ambulancia número \(indiceAmbulancia + 1) de placa \(placasDeAmbulancias[indiceAmbulancia]):")
                    mensaje = readLine()!
                    let mensajeDivididoPorComa = mensaje.split(separator: ",")
                    if mensajeDivididoPorComa.count != 2 {
                        continue capturaPosicionAmbulancia
                    }

                    let posicionXString = mensajeDivididoPorComa[0].trimmingCharacters(in: .whitespaces)
                    let posicionYString = mensajeDivididoPorComa[1].trimmingCharacters(in: .whitespaces)

                    guard let posicionX = Double(posicionXString) else {
                        print("Error al convertir la parte X de la posicion en Double")
                        continue capturaPosicionAmbulancia
                    }

                    guard let posicionY = Double(posicionYString) else {
                        print("Error al convertir la parte y de la posicion en Double")
                        continue capturaPosicionAmbulancia
                    }

                    let posicionAmbulancia = (posicionX, posicionY)

                    ubicacionAmbulancias.append(posicionAmbulancia)
                    break capturaPosicionAmbulancia
                }
            }
        case 2:
            capturaPosicionAccidente: while true {
                print("Ingrese la posicion X,Y del accidente:")
                mensaje = readLine()!
                let mensajeDivididoPorComa = mensaje.split(separator: ",")
                if mensajeDivididoPorComa.count != 2 {
                    continue capturaPosicionAccidente
                }

                let posicionXString = mensajeDivididoPorComa[0].trimmingCharacters(in: .whitespaces)
                let posicionYString = mensajeDivididoPorComa[1].trimmingCharacters(in: .whitespaces)

                guard let posicionX = Double(posicionXString) else {
                    print("Error al convertir la parte X de la posicion en Double")
                    continue capturaPosicionAccidente
                }

                guard let posicionY = Double(posicionYString) else {
                    print("Error al convertir la parte y de la posicion en Double")
                    continue capturaPosicionAccidente
                }

                ubicacionAccidente = (posicionX, posicionY)
                break capturaPosicionAccidente
            }
            
            for indiceAmbulancia in (0..<numeroDeAmbulancias) {
                
                let posicionAmbulancia = ubicacionAmbulancias[indiceAmbulancia]
                
                let diferenciaXCuadrada = pow(posicionAmbulancia.0 - ubicacionAccidente.0, 2)
                let diferenciaYCuadrada = pow(posicionAmbulancia.1 - ubicacionAccidente.1, 2)
                
                let distancia = sqrt( diferenciaXCuadrada + diferenciaYCuadrada )
                
                if indiceAmbulancia == 0 || (distancia < menorDistanciaHastaElAccidente) {
                    menorDistanciaHastaElAccidente = distancia
                    ambulanciaMasCercana = indiceAmbulancia
                }
            }
            
            print("La ambulancia de placa \(placasDeAmbulancias[ambulanciaMasCercana]) es la más cercana al accidente, a unos \(menorDistanciaHastaElAccidente) metros del lugar")
        case 3:
            print("Suerte")
            break cicloInfinito
        default:
            break
        }
    }
}
