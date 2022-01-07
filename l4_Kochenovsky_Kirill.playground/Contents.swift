import Foundation

// Перечисления

enum Engine: String {
    case on = "Заведен"
    case off = "Заглушен"
}

enum ActionEngine {
    case turnOn
    case turnOff
}

enum Windows: String {
    case open = "Окна открыты"
    case close = "Окна закрыты"
}

enum FullnessTrunk {
    case empty
    case min
    case medium
    case full
}

enum Nitro {
    case on
    case off
}

enum Offroad {
    case on
    case off
}

// Родительский класс машины

class Car {
    let brand: String
    let colour: String
    let year: Int
    var engine: Engine
    var windows: Windows
    
    func engineOnOff(onOrOff: ActionEngine) {
        switch onOrOff {
        case .turnOff:
            self.engine = .off
            case .turnOn:
                self.engine = .on
            }
        }
    
    init(brand: String, colour: String, year: Int, engine: Engine, windows: Windows) {
        self.brand = brand
        self.colour = colour
        self.year = year
        self.engine = engine
        self.windows = windows
    }
}

// Сабкласс грузовик

class TrunkCar: Car {
    let offroad = Offroad.on
    var trunk: FullnessTrunk
    
    func descriptionTrunkCar () {
        print("Грузовик марки \(brand), цвет - \(colour), \(year) года выпуска, двигатель - \(engine), окна - \(windows), состояние багажника - \(trunk)")
    }
    
    init(brand: String, colour: String, year: Int, engine: Engine, windows: Windows, trunk: FullnessTrunk) {
        self.trunk = trunk
        super.init(brand: brand, colour: colour, year: year, engine: engine, windows: windows)
    }
}

// Сабкласс спорткар

class SportCar: Car {
    let offroad = Offroad.off
    var nitro: Nitro
    
    func descriptionSportCar() {
        print("Спорткар марки \(brand), цвет - \(colour), \(year) года выпуска, двигатель - \(engine), окна - \(windows), нитро - \(nitro)")
    }
    
    init(brand: String, colour: String, year: Int, engine: Engine, windows: Windows, nitro: Nitro) {
        self.nitro = nitro
        super.init(brand: brand, colour: colour, year: year, engine: engine, windows: windows)
    }
}

// Экземпляры классов + действия с ними

var trunkCar1 = TrunkCar(brand: "Kamaz", colour: "Black", year: 2010, engine: .off, windows: .close, trunk: .empty)
trunkCar1.engine = .on
trunkCar1.trunk = .full
trunkCar1.descriptionTrunkCar()


var sportCar1 = SportCar(brand: "Porshe", colour: "Yellow", year: 2021, engine: .on, windows: .open, nitro: .on)
sportCar1.windows = .close
sportCar1.nitro = .off
sportCar1.descriptionSportCar()
