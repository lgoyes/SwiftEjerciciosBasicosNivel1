//
//  ejercicio33.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 16/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 33. Haga un algoritmo que imprima los primeros N términos de la serie de Fibonacci, donde N es ingresado por el usuario. Esta serie inicia con los elementos 0 y 1, y cada nuevo término se calcula como la suma de los dos anteriores. Así, la serie sería 0, 1, 1, 2, 3, 5...
 */

func ejercicio33() {
    var mensaje = ""
    while true {
        print("Ingrese el número N de elementos que quiere imprimir de la serie fibonacci:")
        mensaje = readLine()!
        guard let numeroN = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }

        var serie = [0, 1]

        if (numeroN == 1 || numeroN == 2) {
            // No tiene que hacer nada. Ya estan dados los numeros
        } else {
            for i in Range(3...numeroN) {
                let serieEnNmenos1 = serie[i - 2]
                let serieEnNmenos2 = serie[i - 3]
                let serieEnN = serieEnNmenos1 + serieEnNmenos2
                serie.append(serieEnN)
            }
        }
        
        print("Serie de los primeros \(numeroN) numeros:\(serie.map {String($0)}.joined(separator: ", "))")
    }
}
