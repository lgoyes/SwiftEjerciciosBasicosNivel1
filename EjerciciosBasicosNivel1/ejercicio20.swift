//
//  ejercicio20.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 11/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 20. Cree un programa tendero. Se podrá elegir una de las siguientes dos opciones: (1) Añadir una bolsa de leche al carrito y (2) Contar productos del carrito y salir. El programa debe iterar indefinidamente, pidiendo al cliente que ingrese una opción, y debe salir/terminar cuando se ingresa la opción 2. Antes de salir, debe imprimir en pantalla el número de productos que se agregaron al carrito.
 */

func ejercicio20() {
    print("Buenos días")
    var numeroDeBolsasDeLeche = 0
    while(true) {
        print("Qué le gustaría hacer?")
        print("1. Agregar una bolsa de leche al carrito")
        print("2. Salir")
        
        let message = readLine()!
        
        guard let opcion = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        if (opcion == 1) {
            numeroDeBolsasDeLeche += 1
            print("Agregando bolsa de leche al carrito. Van \(numeroDeBolsasDeLeche)")
        } else if (opcion == 2) {
            print("Usted llevo \(numeroDeBolsasDeLeche) bolsa(s) de leche")
            print("Que tenga un buen dia")
            break
        } else {
            print("No le entiendo")
            continue
        }
    }
}
