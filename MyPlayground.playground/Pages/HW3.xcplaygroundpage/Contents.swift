//: [Previous](@previous)

import Foundation


//MARK: Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.
//MARK: Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель,открыты ли окна, заполненный объем багажника.
struct SportCar {
    let brand: String
    let model: String
    let isSportCar: Bool
    let color: String
    let year: Int
    let coasts: Double
//MARK:Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
    func getSportCar() {
        print(isSportCar)
    }
}

//MARK: Инициализировать несколько экземпляров структур. Применить к ним различные действия.
let car1 = SportCar(brand: "BMW", model: "X6", isSportCar: false, color: "Black", year: 2021, coasts: 98600.99)
let car2 = SportCar(brand: "Lamborgini", model: "Huracan", isSportCar: true, color: "Green", year: 2020,
                    coasts: 100000000.10)
let car3 = SportCar(brand: "Ferrari", model: "488 GTB", isSportCar: true, color: "Red", year: 2019, coasts: 234567.09)

struct TrunkCar {
    let model: String
    let year: Int
    let trunkVolume: Double
    let isEngineStart: Bool
    let isWindowOpen: Bool
    let isTrunkFull: Bool
}

let car4 = TrunkCar(model: "Fiat", year: 1987, trunkVolume: 3500.99, isEngineStart: false, isWindowOpen: false,
                    isTrunkFull: false)
let car5 = TrunkCar(model: "Ford", year: 2006, trunkVolume: 2500.00, isEngineStart: true, isWindowOpen: true,
                    isTrunkFull: true)
let car6 = TrunkCar(model: "Lada", year: 2021, trunkVolume: 2800.00, isEngineStart: false, isWindowOpen: true,
                    isTrunkFull: false)

//MARK: Вывести значения свойств экземпляров в консоль.
print(car1.brand)
print("Total coasts = \(car1.coasts + car2.coasts + car3.coasts) $")
print(car1.getSportCar(), car2.getSportCar(), car3.getSportCar())
