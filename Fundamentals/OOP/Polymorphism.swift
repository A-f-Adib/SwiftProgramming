/*
Polymorphism is one of the fundamental principles of Object-Oriented Programming (OOP), 
allowing different objects to be treated as instances of the same class through a common interface, 
while retaining their distinct behaviors. It allows you to define a single interface for entities 
of different types, promoting flexibility and scalability in code.
*/

//Method overriding

import Foundation

class Animal {
    func makeSound() {
        print("Some generic animal sound")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("Woof! Woof!")
    }
}

class Cat: Animal {
    override func makeSound() {
        print("Meow! Meow!")
    }
}

let dog: Animal = Dog()
let cat: Animal = Cat()

dog.makeSound()  // Woof! Woof!
cat.makeSound()  // Meow! Meow!

/*
Method overriding allows subclasses to provide specific implementations of methods 
that are already defined in their superclass. This enables a common interface to be shared 
across different subclasses while allowing each subclass to define its own version of the method.
*/


//-----------------------------------------------------------

//Method overloading

class Calculator {
    func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    func add(_ a: Double, _ b: Double) -> Double {
        return a + b
    }
}

let calc = Calculator()
let intSum = calc.add(5, 3)           // Calls the Int version of add
let doubleSum = calc.add(5.5, 3.3)    // Calls the Double version of add

print(intSum)    // Output: 8
print(doubleSum) // Output: 8.8

/*
This type of polymorphism is resolved at compile-time, usually through 
method overloading and operator overloading.
In Swift, method overloading occurs when multiple methods with the same name 
exist but with different parameter types or numbers.
*/


//-----------------------------------------------------------

//Polymorphism with Protocol

protocol Vehicle {
    func startEngine()
}

class Car: Vehicle {
    func startEngine() {
        print("Car engine started")
    }
}


