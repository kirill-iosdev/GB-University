import Foundation

struct Queue <T: Comparable> {
    
    var elements = [T]()
    
    mutating func inQueue(_ element: T) {
        elements.append(element)
    }
    
    mutating func outQueue() -> T {
        elements.removeFirst()
    }
    
    mutating func sorted() -> [T] {
        return elements.sorted(by: >)
    }
    
    func filter(element: T) {
        print("Нашел \(elements.filter{$0 == element})")
    }
    
    subscript (index: Int) -> T? {
        return (index < elements.count ? elements[index] : nil)
    }

    func printCount() {
        print(elements.count)
    }
}

var queue = Queue<String>(elements: ["Ivan"])
queue.inQueue("Michail")
queue.inQueue("Maksim")
queue.inQueue("Kirill")
queue.inQueue("Valentin")
print(queue.elements)
print("Sorted: \(queue.sorted())")

queue.outQueue()
print(queue.elements)
print(queue[2]!)
