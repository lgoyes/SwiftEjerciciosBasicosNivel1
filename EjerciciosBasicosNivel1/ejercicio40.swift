//
//  ejercicio40.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 18/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Haga un algoritmo que repetidamente capture números enteros positivos que el usuario ingrese, hasta que el número ingresado sea -1. Cuando esto suceda, el programa debe imprimir en pantalla la suma de todos los números ingresados, exceptuando: el -1, los múltiplos de 3 y los múltiplos de 7.
 Note que no hay límite de números predefinido. La captura de números se detiene cuando se integrese -1.
 */

func ejercicio40() {
    var mensaje = ""
    var numerosIngresados = [Int]()
    while true {
        print("Ingrese un número:")
        mensaje = readLine()!
        guard let nuevoNumero = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }

        if nuevoNumero != -1 {
            numerosIngresados.append(nuevoNumero)
        } else {
            break
        }
    }

    var suma = 0
    var multiplos3 = [Int]()
    var multiplos7 = [Int]()
    for numero in numerosIngresados {
        suma += numero
        if numero % 3 == 0 {
            multiplos3.append(numero)
        } else if numero % 7 == 0 {
            multiplos7.append(numero)
        }
    }

    print("La sumatoria de los números da \(suma)")

    if multiplos3.count > 0 {
        print("Los múltiplos de 3 son: \(multiplos3.map { String($0) }.joined(separator: ", "))")
    } else {
        print("No hay múltiplos de 3 en la secuencia")
    }

    if multiplos7.count > 0 {
        print("Los múltiplos de 7 son: \(multiplos7.map { String($0) }.joined(separator: ", "))")
    } else {
        print("No hay múltiplos de 7 en la secuencia")
    }
}
