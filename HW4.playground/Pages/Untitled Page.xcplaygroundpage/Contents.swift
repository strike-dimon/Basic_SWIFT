import UIKit

//MARK:Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

enum Transmission {
    case manual, auto
}

class Car {
    let brand: String
    let model: String
    let color: UIColor
    let year: Int
    let transmission: Transmission
    var km: Double
    let isNewCar: Bool
    static var carCount = 0

    init(brand: String, model: String, color: UIColor, year: Int, transmission: Transmission, km: Double,
         isNewCar: Bool) {
        self.brand = brand
        self.model = model
        self.color = color
        self.year = year
        self.transmission = transmission
        self.km = km
        self.isNewCar = isNewCar
        Car.carCount += 1
    }
    static func StorageCountInfo(){
        print("Хранится \(self.carCount) автомобилей")
    }
}


//MARK:Описать пару его наследников trunkCar и sportСar.
//Подумать, какими отличительными свойствами обладают эти автомобили.
//Описать в каждом наследнике специфичные для него свойства.

final class SportCar: Car {
    var isFromJapan: Bool
    var isFromItaly: Bool
    var isFromUSA: Bool

    init(brand: String, model: String, color: UIColor, year: Int, transmission: Transmission, km: Double,
         isNewCar: Bool, isFromJapan: Bool, isFromItaly: Bool, isFromUSA: Bool) {
        self.isFromJapan = isFromJapan
        self.isFromItaly = isFromItaly
        self.isFromUSA = isFromUSA
        super.init(brand: brand, model: model, color: color, year: year, transmission: transmission,
                   km: km, isNewCar: isNewCar)
    }
}

enum Fuel {
        case gazoline, diesel
    }

final class TrunkCar: Car {
    var isFullTrunk: Bool
    var volumeTrunk: Double = 0.0
    var fuel = Fuel.self

    init(brand: String, model: String, color: UIColor, year: Int, transmission: Transmission, km: Double,
          isNewCar: Bool, isFullTrunk: Bool, volumeTrunk: Double, fuel: Fuel) {
        self.isFullTrunk = isFullTrunk
        self.volumeTrunk = volumeTrunk
        super.init(brand: brand, model: model, color: color, year: year, transmission: transmission,
                   km: km, isNewCar: isNewCar)
    }
}

//MARK: Создать несколько объектов каждого класса. Применить к ним различные действия.


var car1 = Car(brand: "Volvo", model: "XC90", color: .blue, year: 2017, transmission: .auto, km: 190900.00,
               isNewCar: false)
var car2 = Car(brand: "Toyota", model: "RAV4", color: .white, year: 2021, transmission: .manual, km: 0.00,
               isNewCar: true)
var car3 = SportCar(brand: "Ferrari", model: "488 GTB", color: .red, year: 2020, transmission: .manual, km: 900.99,
                    isNewCar: true, isFromJapan: false, isFromItaly: true, isFromUSA: false)
var car4 = SportCar(brand: "Toyota", model: "Celica", color: .black, year: 2012, transmission: .manual, km: 300900.15,
                    isNewCar: false, isFromJapan: true, isFromItaly: false, isFromUSA: false)
var car5 = TrunkCar(brand: "Ford", model: "Transit", color: .green, year: 2021, transmission: .auto, km: 1000.00,
                    isNewCar: true, isFullTrunk: false, volumeTrunk: 3000.99, fuel: .diesel)
var car6 = TrunkCar(brand: "Gazel", model: "Next", color: .brown, year: 2018, transmission: .manual, km: 1101001.00,
                    isNewCar: false, isFullTrunk: true, volumeTrunk: 500.01, fuel: .gazoline)


//MARK:Вывести значения свойств экземпляров в консоль
print (car1.brand, car1.model)
print(car2.transmission)
print(car5.fuel)
