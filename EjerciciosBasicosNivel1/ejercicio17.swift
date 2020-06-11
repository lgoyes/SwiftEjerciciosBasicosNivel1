//
//  ejercicio17.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 11/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 17. Leer 3 números enteros, cada uno de un dígito. Construir un número decimal en el cual, la parte entera sea el segundo número leído, y la parte decimal, el primer y tercer número leído. Por ejemplo, si el usuario ingresa los números 1, 2 y 3; el número resultante será 2.13.
 */

func ejercicio17() {
    print("Ingrese el número 1: ")
    
    var message = readLine()!
    
    guard let numero1 = Int(message) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    print("Ingrese el número 2: ")
    
    message = readLine()!
    
    guard let numero2 = Int(message) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    print("Ingrese el número 3: ")
    
    message = readLine()!
    
    guard let numero3 = Int(message) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    let numeroFinal = Double(numero2) + Double(numero1) * 0.1 + Double(numero3) * 0.01
    
    print("Dados los numeros \(numero1), \(numero2) y \(numero3), el número resultante es \(numeroFinal)")
}
