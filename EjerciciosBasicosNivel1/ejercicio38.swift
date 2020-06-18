//
//  ejercicio38.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 18/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Haga un algoritmo que repetidamente capture números que el usuario ingrese (uno por uno) hasta que el número ingresado sea el cero. Cuando eso suceda, el algoritmo debe mostrar en pantalla los últimos dos números que el usuario había ingresado.
 */

func ejercicio38() {
    var mensaje = ""
    var numerosIngresados = [Int]()
    while true {
        print("Ingrese un número:")
        mensaje = readLine()!
        guard let nuevoNumero = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        if nuevoNumero != 0 {
            numerosIngresados.append(nuevoNumero)
        } else {
            break
        }
    }
    
    let cantidadDeNumerosIngresados = numerosIngresados.count
    let ultimosDos = [
        numerosIngresados[cantidadDeNumerosIngresados-2],
        numerosIngresados[cantidadDeNumerosIngresados-1]
    ]
    
    print("Los ultimos dos numeros ingresados fueron: \(ultimosDos.map{String($0)}.joined(separator: " y "))")
}
