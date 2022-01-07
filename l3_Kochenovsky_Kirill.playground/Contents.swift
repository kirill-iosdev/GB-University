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

// Спорткар

struct SportCar {
    let brand: String
    let colour: String
    let year: Int
    var trunkVolume: FullnessTrunk
    var engine: Engine
    var windows: Windows
    
    mutating func engineOnOff(onOrOff: ActionEngine) {
        switch onOrOff {
        case .turnOff:
            self.engine = .off
            case .turnOn:
                self.engine = .on
            }
        }
    func descriptionSportCar() {
        print("Автомобиль марки \(brand), цвета \(colour), \(year) года выпуска, заполненность багажника - \(trunkVolume), двигатель - \(engine), окна - \(windows)")
    }
    }

// Грузовик

struct TrunkCar {
    let brand: String
    let colour: String
    let year: Int
    var trunkVolume: FullnessTrunk
    var engine: Engine
    var windows: Windows
    
    mutating func fillTheTrunk(fill: FullnessTrunk) {
        switch fill {
        case .empty:
            self.trunkVolume = .empty
        case .min:
            self.trunkVolume = .min
        case .medium:
            self.trunkVolume = .medium
        case .full:
            self.trunkVolume = .full
        }
    }
    
    mutating func descriptionTrunkCar() {
        print("Грузовик марки \(brand), цвета \(colour), \(year) года выпуска, заполненность багажника - \(trunkVolume), двигатель - \(engine), окна - \(windows)")
    }
}

//  Экземпляр спорткара
var sportCar1 = SportCar(brand: "Ferrari", colour: "Red", year: 2020, trunkVolume: .empty, engine: .off, windows: .close)

// Завожу двигатель и открываю окна спорткара
sportCar1.engineOnOff(onOrOff: .turnOn)
sportCar1.windows = .open
sportCar1.descriptionSportCar()

// Экземпляр грузовика
var trunkCar1 = TrunkCar(brand: "Kamaz", colour: "Black", year: 2014, trunkVolume: .empty, engine: .off, windows: .close)

// Завожу двигатель и загружаю грузовик
trunkCar1.engine = .on
trunkCar1.fillTheTrunk(fill: .full)
trunkCar1.descriptionTrunkCar()

