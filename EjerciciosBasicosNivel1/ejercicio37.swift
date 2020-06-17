//
//  ejercicio37.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 17/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Realice un algoritmo que diga si un número ingresado es perfecto o no. Un número perfecto es un número que es igual a la suma de sus divisores propios positivos. De esta forma, 6 es un número perfecto porque sus divisores propios son 1, 2 y 3; y 6 = 1 + 2 + 3.
 */

func ejercicio37() {
    var mensaje = ""
    while true {
        print("Ingrese un número N mayor que 1:")
        mensaje = readLine()!
        guard let numeroN = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        if (numeroN < 2) {
            print("Numero invalido")
            continue
        }
        
        var divisoresPropios = [Int]()
        for posibleDivisor in (1..<numeroN) {
            if( numeroN % posibleDivisor == 0 ) {
                divisoresPropios.append(posibleDivisor)
            }
        }
        
        var suma = 0
        for divisor in divisoresPropios {
            suma += divisor
        }
        
        if suma == numeroN {
            print("\(numeroN) es un número perfecto. \(numeroN)=\(divisoresPropios.map{ String($0) }.joined(separator: "+"))")
        } else {
            print("\(numeroN) NO es un número perfecto.")
        }
        
    }
}
