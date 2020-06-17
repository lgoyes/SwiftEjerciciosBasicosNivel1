//
//  ejercicio36.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 17/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 36. Construir un programa que determine con un mensaje si un número ingresado es primo o no.
 */

func ejercicio36() {
    var mensaje = ""
    while true {
        print("Ingrese un número N mayor que 2:")
        mensaje = readLine()!
        guard let numeroN = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }

        if (numeroN < 3) {
            print("Numero invalido")
            continue
        }

        var esPrimo: Bool = false
        var divisorEncontrado: Int = 0
        for posibleDivisor in (2..<numeroN) {
            if numeroN % posibleDivisor == 0 {
                esPrimo = true
                divisorEncontrado = posibleDivisor
                break
            }
        }
        if esPrimo {
            print("\(numeroN) no es primo. Encontré un divisor: \(divisorEncontrado)")
        } else {
            print("\(numeroN) es primo. No encontré divisores")
        }
    }
}
