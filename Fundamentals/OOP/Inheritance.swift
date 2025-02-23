
import Foundation

class Vehicle {
    var speed: Int = 0
    
    func accelerate() {
        speed += 10
        print("Speed increased to \(speed) km/h")
    }
}

// Subclass inheriting from Vehicle
class Car: Vehicle {
    var brand: String
    
    init(brand: String) {
        self.brand = brand
    }
    
    func honk() {
        print("\(brand) goes Beep Beep!")
    }
}