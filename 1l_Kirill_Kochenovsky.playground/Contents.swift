import UIKit
import Foundation

// 1. Квадратное уравнение

let a: Double = 5.4
let b: Double = 11
let c: Double = -7

let x1: Double
let x2: Double
let d: Double = b * b - 4 * a * c

if d > 0 {
    x1 = -b + sqrt(d) / (2 * a)
    x2 = -b + sqrt(d) / (2 * a)
    print ("В уравнении 2 корня: x1 = \(x1), x2 = \(x2)")
} else if (d == 0){
    x1 = -b / (2 * a)
    print("В уравнении 1 корень: x1 = \(x1)")
} else {
    print("Нет корней")
}

// 2. Треугольник

let catet1: Double = 6
let catet2: Double = 9

// 2.1. Формула площади треугольника
let s: Double = (catet1 * catet2) / 2

// 2.2. Формула периметра треугольника
let perimetr = sqrt((catet1 * catet1) + (catet2 * catet2)) + (catet1 + catet2)

// 2.3. Формула гипотенузы

let hypo = sqrt((catet1 * catet1) + (catet2 * catet2))

// 2.4. Вывод
print("Площадь треугольника = \(s)")
print("Периметр треугольника = \(perimetr)")
print("Гипотенуза треугольника = \(hypo)")

// 3. Банковский вклад

var sum = 5000
var percent = 7

sum = sum + ((sum * percent) / 100)
print("Первый год - \(sum)")
sum += ((sum * percent) / 100)
print("Второй год - \(sum)")
sum += ((sum * percent) / 100)
print("Третий год - \(sum)")
sum += ((sum * percent) / 100)
print("Четвертый год - \(sum)")
sum += ((sum * percent) / 100)
print("Пятый год - \(sum)")
