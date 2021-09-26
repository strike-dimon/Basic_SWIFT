import Foundation

//MARK: 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

enum Transmission {
    case manual, auto
}

enum EngineStaus: String {
    case powerOn = "Start"
    case powerOff = "Off"
}

enum WindowStatus: String {
    case open = "Opened"
    case close = "Closed"
}

protocol CarProtocol {
    var brand: String { get }
    var model: String { get }
    var year: Int { get }
    var odometr: Double { get }
    var color: String { get }
    var transmission: Transmission { get set }
    var engineStatus: EngineStaus { get set }
    var windowStatus: WindowStatus { get set }

    func carDetails()
}
//MARK: 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
extension CarProtocol {

    mutating func startEngine() {
        engineStatus = .powerOn
        print("Engine is \(engineStatus.rawValue)")
    }

    mutating func offEngine() {
        engineStatus = .powerOff
        print("Engine is \(engineStatus.rawValue)")
    }

    mutating func openWindow(){
        windowStatus = .open
        print("Window is \(windowStatus.rawValue)")
    }

    mutating func closeWindow(){
        windowStatus = .close
        print("Window is \(windowStatus.rawValue)")
    }
}

//MARK: 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

final class SportCar: CarProtocol {

    init(brand: String,
         model: String,
         year: Int,
         odometr: Double,
         color: String,
         transmission: Transmission,
         engineStatus: EngineStaus,
         windowStatus: WindowStatus,
         speedLimit: Double,
         powerEngine: Double,
         isCabrio: Bool) {

        self.brand = brand
        self.model = model
        self.year = year
        self.odometr = odometr
        self.color = color
        self.transmission = transmission
        self.engineStatus = engineStatus
        self.windowStatus = windowStatus
        self.speedLimit = speedLimit
        self.powerEngine = powerEngine
        self.isCabrio = isCabrio
    }

    var brand: String
    var model: String
    var year: Int
    var odometr: Double
    var color: String
    var transmission: Transmission
    var engineStatus: EngineStaus
    var windowStatus: WindowStatus
    func carDetails() {

        print("""
        SportCar:

        Brand is \(brand)
        Model is \(model)
        Year issue is \(year)
        Odometr is \(odometr)
        Color is \(color)
        Transmission is \(transmission)
        Engine status is \(engineStatus)
        Window is \(windowStatus)
        Speed Limit is \(speedLimit)
        Power engine is \(powerEngine)
        \(isCabrio) is cabrio
        """)
    }

    let speedLimit: Double
    let powerEngine: Double
    let isCabrio: Bool
}


final class TrunkCar: CarProtocol {

    init(brand: String,
         model: String,
         year: Int,
         odometr: Double,
         color: String,
         transmission: Transmission,
         engineStatus: EngineStaus,
         windowStatus: WindowStatus,
         fuel: Fuel,
         powerEngine: Double,
         isRefrigerator: Bool) {

        self.brand = brand
        self.model = model
        self.year = year
        self.odometr = odometr
        self.color = color
        self.transmission = transmission
        self.engineStatus = engineStatus
        self.windowStatus = windowStatus
        self.fuel = fuel
        self.powerEngine = powerEngine
        self.isRefrigerator = isRefrigerator
    }

    var brand: String
    var model: String
    var year: Int
    var odometr: Double
    var color: String
    var transmission: Transmission
    var engineStatus: EngineStaus
    var windowStatus: WindowStatus
    func carDetails() {

        print("""
        TrunkCar:

        Brand is \(brand)
        Model is \(model)
        Year issue is \(year)
        Odometr is \(odometr)
        Color is \(color)
        Transmission is \(transmission)
        Engine status is \(engineStatus)
        Window is \(windowStatus)
        Fuel is \(Fuel)
        Power engine is \(powerEngine)
        \(isRefrigerator) is cabrio
        """)
    }
    enum Fuel: String {
            case gazoline = "Gasoline"
            case diesel = "Diesel"
        }
    let powerEngine: Double
    let isRefrigerator: Bool
}
//MARK: 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Class SportCar is extentioned by protocol CustomStringConvertible"
    }
}
print(sportCarOne)

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Class TrunkCar is extentioned by protocol CustomStringConvertible"
    }
}
print(trunkCarOne)

//MARK: 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

var sportCarOne = SportCar(brand: "Ferrari", model: "488 GTB", year: 2021, odometr: 500.10, color: "white",
                           transmission: .manual, engineStatus: .powerOff, windowStatus: .close, speedLimit: 360.00,
                           powerEngine: 512, isCabrio: true)

var trunkCarOne = TrunkCar (brand: "Volvo", model: "FH16", year: 2019, odometr: 100000.00, color: "black",
                            transmission: .auto, engineStatus: .powerOff, windowStatus: .close, fuel: .diesel,
                            powerEngine: 1500, isRefrigerator: true)
//MARK: 6. Вывести сами объекты в консоль.

sportCarOne.carDetails()
trunkCarOne.carDetails()

