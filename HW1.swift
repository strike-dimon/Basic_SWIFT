//
//  HW1.swift
//  Homework
//
//  Created by Dmitry Dudchenko on 10.09.21.
//

import Foundation

//MARK: - Задание 1 Решить квадратное уравнение.
let a: Double = 3
let b: Double = 7
let c: Double = 10

let d: Double = pow(b,2) - (4 * a * c)
print(d)

if d < 0 {
    print("Root is absent")
} else if d == 0 {
    let x1 = (-b)/(2 * a)
    print("Root = \(x1)")
} else if d > 0 {
    let x2 = (-b + (sqrt(d))) / (2 * a)
    let x3 = (-b - (sqrt(d))) / (2 * a)
    print("Root = \(x2) \(x3)")
}


// MARK: Задние 2 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let legA: Double = 25
let legB: Double = 35

let hypotenuse = sqrt(pow(legA,2) + pow(legB, 2))
print("Hypotenuse is equal \(hypotenuse)")

let square = 0.5 * legA * legB
print("Square is equal \(square)")

let perimeter = legA + legB + hypotenuse
print("Perimeter is equal \(perimeter)")


// MARK: Задание 3 Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет

let money: Double = 1000
let percent: Double = 9
let year: Double = 5

let sum: Double = (((money / 100) * percent) * year) + money
print("For 5 years, the amount of the deposit will be: \(sum)")
