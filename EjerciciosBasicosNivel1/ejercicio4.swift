//
//  ejercicio4.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

/*:
 4. En un curso de programación avanzada se hicieron seis examenes (con notas entre 0 y 5), con distintos pesos: El primero, valía el 10% de la nota final; el segundo, valía el 15%; el tercero valía 6%; el cuarto valía 29%, el quinto 12% y el sexto 28%. Guarde las notas en un arreglo, y los pesos en otro arreglo. Calcule la nota promedio.
 Si la nota es menor que 1, imprima "Bruto!"; Si es menor que 2, imprima "Mejor dedíquese a otra cosa"; Si es menor que 2.96, imprima "Se peló por nada"; Si es menor que 3.5, imprima "no celebre tanto"; si es menor que 4.5, imprima "tiene futuro"; si es mayor o igual que 4.5 imprima "Campeón".
*/

func ejercicio4() {
    let notas = [1,2,3,4,5,0]
    let pesos = [0.1,0.15,0.06,0.29,0.12,0.28]
    let numeroDeNotas = notas.count

    var notaFinal = 0.0
    for indice in (0..<numeroDeNotas) {
        let notaBajoAnalisis = notas[indice]
        let pesoDeLaNota = pesos[indice]
        let notaPonderadaPorSuPeso = Double(notaBajoAnalisis) * pesoDeLaNota
        notaFinal += notaPonderadaPorSuPeso
    }

    if (notaFinal < 1) {
        print("Bruto!")
    } else if (notaFinal < 2 ){
        print("Mejor dedíquese a otra cosa")
    } else if (notaFinal < 2.96 ){
        print("Se peló por nada")
    } else if (notaFinal < 3.5 ){
        print("No celebre tanto")
    } else if (notaFinal < 4.5 ){
        print("Tiene futuro")
    } else {
        print("Campeón")
    }
}
