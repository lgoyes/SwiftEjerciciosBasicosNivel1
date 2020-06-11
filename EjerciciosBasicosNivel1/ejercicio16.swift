//
//  ejercicio16.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 11/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 16. Construir un programa que, dada una temperatura en grados Kelvin, muestre su equivalente en grados Centígrados y Fahrenheit. Las fórmulas de conversión son:
 ```
 C = K - 273.15
 F = (9/5) * C + 32
 ```
 */

func ejercicio16() {
    print("Ingrese temperatura en grados Kelvin (K): ")
    
    let temperaturaKString = readLine()!
    
    guard let temperaturaK = Double(temperaturaKString) else {
        print("El texto ingresado no puede convertirse a Double")
        return
    }
    
    let temperaturaC = temperaturaK - 273.15
    let temperaturaF = (9/5) * temperaturaC + 32
    
    print("\(temperaturaK) K = \(temperaturaC) C = \(temperaturaF) F")
}
