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

class Square: Rectangle {
    override var width: Double {
        didSet { height = width }
    }

    override var height: Double {
        didSet { width = height }
    }
}

func printArea(of rectangle: Rectangle) {
    rectangle.width = 5
    rectangle.height = 10
    print(rectangle.area()) // Should be 50, but for Square it breaks LSP
}

printArea(of: Square(width: 5, height: 5)) // Unexpected behavior!

//----------------------------------------------------

//Following the LSP

import Foundation

protocol Shape {
    func area() -> Double
}
