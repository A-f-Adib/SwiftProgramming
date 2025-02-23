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
/*
This type of polymorphism is resolved at compile-time, usually through 
method overloading and operator overloading.
In Swift, method overloading occurs when multiple methods with the same name 
exist but with different parameter types or numbers.
*/