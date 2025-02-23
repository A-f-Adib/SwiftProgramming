
import Foundation

class Vehicle {
    var speed: Int = 0
    
    func accelerate() {
        speed += 10
        print("Speed increased to \(speed) km/h")
    }
}