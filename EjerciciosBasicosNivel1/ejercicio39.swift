//
//  ejercicio39.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 18/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Realice un algoritmo que capture N números enteros positivos que el usuario ingrese, con N>=2. El algoritmo deberá imprimir la sumatoria de todos los números, el mayor de los números pares ingresados y el menor de los impares. Deberá pedir, entonces, el número N, seguido de los otro números.
 Recuerde hacer las validaciones respectivas.
 */

func ejercicio39() {
    var mensaje = ""
    var numerosIngresados = [Int]()
    
    print("Ingrese la cantidad de números que se deben revisar (N) y presione enter:")
    mensaje = readLine()!
    guard let cantidadDeNumerosEsperada = Int(mensaje) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    if cantidadDeNumerosEsperada < 2 {
        print("La cantidad de números a ingresar debe ser mayor o igual que 2")
        return
    }
    
    while numerosIngresados.count < cantidadDeNumerosEsperada {
        print("Ingrese el \(numerosIngresados.count + 1)-ésimo número:")
        mensaje = readLine()!
        guard let nuevoNumero = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        if nuevoNumero < 0 {
            print("El número debe ser entero positivo")
            continue
        }
        
        numerosIngresados.append(nuevoNumero)
    }
    
    var sumatoria = 0
    var menorImpar: Int = -1
    var mayorPar: Int = -1
    
    for numero in numerosIngresados {
        sumatoria += numero
        
        if numero % 2 == 0 {
            // par
            if mayorPar == -1 {
                mayorPar = numero
            } else {
                if numero > mayorPar {
                    mayorPar = numero
                }
            }
        } else {
            // impar
            if menorImpar == -1 {
                menorImpar = numero
            } else {
                if numero < menorImpar {
                    menorImpar = numero
                }
            }
        }
    }
    
    print("La sumatoria de los números da \(sumatoria)")
    
    if menorImpar != -1 {
        print("El menor impar es \(menorImpar)")
    } else {
        print("No hay números impares en la secuencia")
    }
    
    if mayorPar != -1 {
        print("El mayor par es \(mayorPar)")
    } else {
        print("No hay números pares en la secuencia")
    }
}
