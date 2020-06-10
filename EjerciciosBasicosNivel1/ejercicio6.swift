//
//  ejercicio6.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 10/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 6. Imprima un saludo. Seguido de eso, pida la edad al usuario. Imprima "Mayor de edad", si la edad ingresada es mayor de 18 años; de lo contrario escriba "Todavía es un niño".
 */

func ejercicio6() {
    var edad = 0
    print ("Buenos días. Por favor ingrese su edad:")
    if let string = readLine() {
        if let number = Int(string) {
            edad = number
        }
    }
    if edad >= 18 {
        print( "mayor de edad" )
    } else {
        print( "todavía es un niño" )
    }
}
