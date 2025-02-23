
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

//-----------------------------------------------------------

//Multiple inheritance using protocols

class Vehicle2 {
    var speed: Int = 0
    
    func accelerate() {
        speed += 10
        print("Speed increased to \(speed) km/h")
    }
}

protocol Electric {
    func chargeBattery()
}

protocol SelfDriving {
    func activateAutopilot()
}

// Tesla inherits from Vehicle and conforms to multiple protocols
class Tesla: Vehicle2, Electric, SelfDriving {
    func chargeBattery() {
        print("Battery charging...")
    }
    
    func activateAutopilot() {
        print("Autopilot activated!")
    }
}

let myTesla = Tesla()
myTesla.accelerate()        // Speed increased to 10 km/h
myTesla.chargeBattery()     // Battery charging...
myTesla.activateAutopilot() // Autopilot activated!


//-----------------------------------------------------------

//Composition instead of multiple inheritance

class Engine {
    func start() {
        print("Engine started!")
    }
}

class Wheels {
    func rotate() {
        print("Wheels rotating!")
    }
}

class SecondCar {
    let engine = Engine()
    let wheels = Wheels()
    
    func drive() {
        engine.start()
        wheels.rotate()
        print("Car is driving!")
    }
}

let mySecondCar = SecondCar()
mySecondCar.drive()
// Engine started!
// Wheels rotating!
// Car is driving!
