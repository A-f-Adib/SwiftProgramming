import Foundation

struct Counter {
    var count: Int = 0
    
    mutating func increment() {
        count += 1  
    }
}

var myCounter = Counter() 
myCounter.increment()  
print(myCounter.count)  // Output: 1


enum Direction {
    case north, south, east, west

    mutating func turnAround() {
        switch self {
        case .north: self = .south
        case .south: self = .north
        case .east: self = .west
        case .west: self = .east
        }
    }
}

var myDirection = Direction.north
myDirection.turnAround()  
print(myDirection)  // Output: south
