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
}