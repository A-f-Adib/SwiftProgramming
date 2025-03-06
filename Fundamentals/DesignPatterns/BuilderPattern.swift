/*
The Builder Pattern is a creational design pattern that simplifies the creation of complex 
objects step by step instead of requiring a large initializer with multiple parameters.
*/

//Step 1: Define the Product

import Foundation

class Burger {

    let cheese: Bool
    let lettuce: Bool
    let tomato: Bool
    let bacon: Bool

     init(cheese: Bool, lettuce: Bool, tomato: Bool, bacon: Bool) {
        self.cheese = cheese
        self.lettuce = lettuce
        self.tomato = tomato
        self.bacon = bacon
    }

    func description() {
        print("Burger with\(cheese ? " Cheese" : "")\(lettuce ? " Lettuce" : "")\(tomato ? " Tomato" : "")\(bacon ? " Bacon" : "")")
    }
}

//Step 2: Define the Builder
class BurgerBuilder {
    private var cheese = false
    private var lettuce = false
    private var tomato = false
    private var bacon = false

    func addCheese() -> BurgerBuilder {
        self.cheese = true
        return self
    }
}