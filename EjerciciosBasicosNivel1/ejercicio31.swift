//
//  ejercicio31.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 16/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Haga un algoritmo que muestre todos los divisores de un número entero ingresado y que diga cuántos divisores tiene.
 */

func ejercicio31() {
    print("Ingrese el número al que se le calcularán los divisores:")
    let mensaje = readLine()!
    guard let numeroBajoAnalisis = Int(mensaje) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }

    let tope = numeroBajoAnalisis
    var posibleDivisor = 2
    var divisores = [Int]()
    while (posibleDivisor < tope) {
        if (numeroBajoAnalisis % posibleDivisor == 0) {
            divisores.append(posibleDivisor)
        }
        posibleDivisor += 1
    }

    if divisores.count == 0 {
        print("El número no tiene divisores")
    } else {
        print("Los divisores de \(numeroBajoAnalisis) son \(divisores.map { String($0) }.joined(separator: ", ")). (\(divisores.count) en total)")
    }
}
