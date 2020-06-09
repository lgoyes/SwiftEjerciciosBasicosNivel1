//
//  ejercicio3.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

/*:
 3. En un curso de programación se hicieron cuatro examenes (con notas entre 0 y 5). Todos con el mismo peso. Calcule el promedio de las notas dadas: `n1`, `n2`, `n3`, `n4`. Al final, imprima "Aprobó", si la nota promedio es mayor o igual que 3, o "Reprobó" en caso contrario.
 */

func ejercicio3() {
    let n1 = 0.7
    let n2 = 4.1
    let n3 = 5
    let n4 = 3.1

    let promedio = (0.7 + 4.1 + 5 + 3.1) / 4

    if (promedio >= 3) {
        print ("Aprobo")
    } else {
        print ("Reprobo")
    }
}
