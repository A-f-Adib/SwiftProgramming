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