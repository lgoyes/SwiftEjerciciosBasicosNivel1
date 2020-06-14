//
//  ejercicio30.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 14/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 30. Haga un algoritmo que reciba números repetidamente y que en cada iteración muestre el promedio de los números impares ingresados hasta el momento. El algoritmo debe finalizar cuando el número ingresado sea el cero.
 */

func ejercicio30() {
    var numerosIngresados: [Int] = []
    var mensaje = ""
    while true {
        print("Ingrese un nuevo número:")
        mensaje = readLine()!
        guard let nuevoNumero = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        if (nuevoNumero == 0) {
            print("Suerte papá")
            break
        }
        
        numerosIngresados.append(nuevoNumero)
        
        var suma = 0
        var cantidadDeImpares = 0
        for numeroBajoAnalisis in numerosIngresados {
            if numeroBajoAnalisis % 2 == 1 {
                suma += numeroBajoAnalisis
                cantidadDeImpares += 1
            }
        }
        let promedio = Double(suma) / Double(cantidadDeImpares)
        
        print("El promedio de los numeros impares ingresados es \(promedio)")
    }
}
