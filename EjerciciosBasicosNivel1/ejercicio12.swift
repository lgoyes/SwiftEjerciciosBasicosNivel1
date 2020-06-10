//
//  ejercicio12.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

/*:
 12. Se requiere elaborar una planilla de un empleado para pagarle sus salario mensual. Para ello, pida el número de horas laboradas en el mes, así como la tarifa por hora.
    Pida al usuario cada una de estas variables como entradas de consola.
*/

func ejercicio12() {
    var horasTrabajadas = 0.0
    var tarifaPorHora = 0.0
    
    print ("Por favor ingrese el numero de horas trabajadas")
    if let string = readLine() {
        if let number = Double(string) {
            horasTrabajadas = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    print ("Por favor ingrese la tarifa por hora")
    if let string = readLine() {
        if let number = Double(string) {
            tarifaPorHora = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    let totalAPagar = tarifaPorHora * horasTrabajadas
    
    print("Se le debe pagar al empleado \(totalAPagar)")
}
