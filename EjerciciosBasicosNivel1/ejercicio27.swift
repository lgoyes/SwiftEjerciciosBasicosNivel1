//
//  ejercicio27.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 14/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Escriba un programa que imprima la sumatoria de los múltiplos de `3` y `5` que sean menores que `N`, ingresado por el usuario. Por ejemplo, si el usuario ingresa el valor `N=17`, entonces los múltiplos de
 `3` y `5` entre `1` y `17` son `3`, `5`, `6`, `9`, `10`, `12`, y`15`, por lo tanto, el programa imprimirá `60`.
 */

func ejercicio27() {
    print("Ingrese el limite N de multiplos de 3 y 5 que se calculara para la suma: ")
    let message = readLine()!
    guard let numeroN = Int(message) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    var suma = 0
    for sumando in (1...numeroN) {
        if sumando % 3 == 0 || sumando % 5 == 0 {
            suma += sumando
        }
    }
    
    print("La suma dio \(suma)")
}
