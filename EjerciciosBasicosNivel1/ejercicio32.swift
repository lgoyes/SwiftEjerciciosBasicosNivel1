//
//  ejercicio32.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 16/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 32. Haga el diagrama de flujo de un algoritmo que encuentre el máximo común divisor (MCD) entre dos números `A` y `B` ingresados por el usuario. El MCD es el número más grande que divide en forma exacta tanto a `A` como a `B`. Si el MCD resulta ser 1, el algoritmo deberá imprimir "No existe", de lo contrario deberá imprimir el MCD encontrado.
 */

func ejercicio32() {
    var mensaje = ""
    while true {
        print("Ingrese el número A:")
        mensaje = readLine()!
        guard let numeroA = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        print("Ingrese el número B:")
        mensaje = readLine()!
        guard let numeroB = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        let numeroMasPequenyo = min(numeroA, numeroB)
        
        var maximoComunDivisor = 1
        
        for posibleDivisor in (2..<numeroMasPequenyo) {
            if (numeroA % posibleDivisor == 0 && numeroB % posibleDivisor == 0) {
                maximoComunDivisor = posibleDivisor
            }
        }
        
        if maximoComunDivisor == 1 {
            print("No hay divisor común")
        } else {
            print("El máximo común divisor entre \(numeroA) y \(numeroB) es \(maximoComunDivisor)")
        }
    }
}
