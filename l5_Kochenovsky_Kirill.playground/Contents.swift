import Foundation

// Протокол Car

protocol Car {
    var colour: String {get set}
    var yearOfIssue: Int {get set}
    var engine: Engine {get set}
    
    func turnHeadlights(onOrOff: Headlights)
}

// Перечисления

enum Engine {
    case on
    case off
}

enum Windows {
    case open
    case close
}

enum Headlights {
    case on
    case off
}
enum Nitro {
    case on
    case off
}

enum Trailer {
    case connected
    case disconnected
}

// Расширения для протокола Car

extension Car {
    mutating func engine(onOrOff: Engine) {
        if onOrOff == .on {
            self.engine = .on
        } else {
            self.engine = .off
        }
    }
}

extension Car {
    func windows(openOrClose: Windows) {
        if openOrClose == .open {
            print("открыты")
        } else {
            print("закрыты")
        }
    }
}

// класс SportCar имплементирующий протокол Car

class SportCar: Car {
    var colour: String
    var yearOfIssue: Int
    var engine: Engine
    var headlights: Headlights
    var windows: Windows
    var nitro: Nitro
    
    func startStopEngine(onOrOff: Engine) {
        if onOrOff == .on {
            self.engine = .on
        } else if onOrOff == .off {
            self.engine = .off
        }
    }
    
    func turnHeadlights(onOrOff: Headlights) {
        if onOrOff == .on {
            self.headlights = .on
        } else if onOrOff == .off {
            self.headlights = .off
        }
    }
    
    func openCloseWindows(openOrClose: Windows) {
        if openOrClose == .open {
            self.windows = .open
        } else if openOrClose == .close{
            self.windows = .close
        }
    }
    
    func turnNitro(onOrOff: Nitro) {
        if onOrOff == .on {
            self.nitro = .on
        } else if onOrOff == .off {
            self.nitro = .off
        }
    }
    
    init(colour: String, yearOfIssue: Int, engine: Engine, headlights: Headlights, windows: Windows, nitro: Nitro) {
        self.colour = colour
        self.yearOfIssue = yearOfIssue
        self.engine = engine
        self.headlights = headlights
        self.windows = windows
        self.nitro = nitro
    }
}

// класс TrunkCar имплементирующий протокол Car

class TrunkCar: Car {
    
    var colour: String
    var yearOfIssue: Int
    var engine: Engine
    var headlights: Headlights
    var windows: Windows
    var trailer: Trailer
    
    func startStopEngine(onOrOff: Engine) {
        if onOrOff == .on {
            self.engine = .on
        } else if onOrOff == .off {
            self.engine = .off
        }
    }
    
    func turnHeadlights(onOrOff: Headlights) {
        if onOrOff == .on {
            self.headlights = .on
        } else if onOrOff == .off {
            self.headlights = .off
        }
    }
    
    func openCloseWindows(openOrClose: Windows) {
        if openOrClose == .open {
            self.windows = .open
        } else if openOrClose == .close{
            self.windows = .close
        }
    }
    
    func actionTrailer(connectedOrDisconnected: Trailer) {
        if connectedOrDisconnected == .connected {
            self.trailer = .connected
        } else {
            self.trailer = .disconnected
        }
    }
    
    init(colour: String, yearOfIssue: Int, engine: Engine, headlights: Headlights, windows: Windows, trailer: Trailer) {
        self.colour = colour
        self.yearOfIssue = yearOfIssue
        self.engine = engine
        self.headlights = headlights
        self.windows = windows
        self.trailer = trailer
    }
}

// расширение классов для вывода

extension SportCar: CustomStringConvertible {
    var description: String {
        return "Спорткар цвета \(colour), \(yearOfIssue) года выпуска, двигатель - \(engine), фары - \(headlights), окна - \(windows), нитро - \(nitro)"
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "Грузовик цвета \(colour), \(yearOfIssue) года выпуска, двигатель - \(engine), фары - \(headlights), окна - \(windows), прицеп - \(trailer)"
    }
}

// экземпляры классов

var sportCar = SportCar(colour: "Red", yearOfIssue: 2019, engine: .on, headlights: .on, windows: .close, nitro: .off)
var trunkCar = TrunkCar(colour: "Black", yearOfIssue: 2010, engine: .off, headlights: .off, windows: .open, trailer: .connected)

// вывод экземпляров на консоль

print(sportCar.description)
print(trunkCar.description)
