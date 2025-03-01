//Liskov Substitution Principle (LSP) 
//"Derived classes must be substitutable for their base class without breaking the program."

import Foundation

// Violation of LSP

class Rectangle {
    var width: Double
    var height: Double

    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }

    func area() -> Double {
        return width * height
    }
}

