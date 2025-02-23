
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
