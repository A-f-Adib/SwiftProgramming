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

protocol Shape {
    func area() -> Double
}

class Rectangle2: Shape {
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

class Square2: Shape {
    var side: Double

    init(side: Double) {
        self.side = side
    }

    func area() -> Double {
        return side * side
    }
}

func printArea(of shape: Shape) {
    print("Area: \(shape.area())")
}

printArea(of: Rectangle2(width: 5, height: 10)) // Area: 50
printArea(of: Square2(side: 5)) // Area: 25


//No inheritance issues because Square and Rectangle are independent.
// Both classes implement a common interface (Shape) and can be used interchangeably.