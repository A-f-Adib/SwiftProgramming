
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

let myCar = Car(brand: "Tesla")
myCar.accelerate()  // Speed increased to 10 km/h
myCar.honk()        // Tesla goes Beep Beep!

//-----------------------------------------------------------

/*
Inheritance allows a class (subclass) to acquire properties and methods from another class (superclass). 
This reduces code duplication and enhances reusability.

Here, The Car class inherits from Vehicle, gaining its properties (speed) and methods (accelerate).
Car introduces a new property (brand) and a method (honk) specific to its functionality.
*/