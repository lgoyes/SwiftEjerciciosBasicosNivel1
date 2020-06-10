//
//  ejercicio7.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 10/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Las evaluaciones de un curso están valoradas como se muestra a continuación:
  Examen 1: 50%.
  Examen 2: 30%.
  Examen 3: 20%.
 Haga un algoritmo que tome como entradas: el nombre, la identificación y las 3 notas del estudiante. Éste debe imprimir como salida el nombre, la identificación y la nota definitiva obtenida por el estudiante.

 1. Solucione el ejercicio sin usar arreglos
 2. Solucionelo usando arreglos
 */

func ejercicio7_solucion1() {
    var nombre = ""
    var identificacion = ""
    var nota1: Double = 0.0
    var nota2 = 0.0
    var nota3 = 0.0
    
    print("Buenos dias. Ingrese su nombre:")
    if let string = readLine() {
        nombre = string
    }
    
    print("Ingrese su numero de documento:")
    if let string = readLine() {
        identificacion = string
    }
    
    print("Ingrese la nota 1:")
    if let string = readLine() {
        if let number = Double(string) {
            nota1 = number
        }
    }
    
    print("Ingrese la nota 2:")
    if let string = readLine() {
        if let number = Double(string) {
            nota2 = number
        }
    }
    
    print("Ingrese la nota 3:")
    if let string = readLine() {
        if let number = Double(string) {
            nota3 = number
        }
    }
    
    
    let notaDefinitiva: Double = nota1 * 0.5 + nota2 * 0.3 + nota3 * 0.2
    
    print("El estudiante \(nombre), identificado con CC. \(identificacion), obtuvo la nota definitiva: \(notaDefinitiva)")
}
