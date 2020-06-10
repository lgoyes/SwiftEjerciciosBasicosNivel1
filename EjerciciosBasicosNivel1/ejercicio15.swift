//
//  ejercicio15.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 15. Frente a mi casa hay una máquina dispensadora que tiene 4 productos etiquetados con los números 1, 2, 3 y 4; cada uno con un valor de $500, $800, $300, y $900 pesos, respectivamente.
 
 Defina un algoritmo que lea el número de producto que ingresa el usuario y que le muestre su precio. Si el producto ingresado no existe, debe informarlo.
 */

func ejercicio15() {
    var productoIngresado = 0
    
    print ("Por favor ingrese el numero del producto")
    if let string = readLine() {
        if let number = Int(string) {
            productoIngresado = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    switch productoIngresado {
    case 1:
        print("El producto vale $500")
    case 2:
        print("El producto vale $800")
    case 3:
        print("El producto vale $300")
    case 4:
        print("El producto vale $900")
    default:
        print("El producto ingresado no existe")
    }
}
