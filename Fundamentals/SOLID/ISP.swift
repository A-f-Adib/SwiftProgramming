
//Interface Segregation Principle (ISP)

//"A client should never be forced to implement an interface that it doesn't use or clients 
//shouldn't be forced to depend on methods they do not use."
//the main goal of this principle is to prevent classes from implementing unnecessary methods which they do not use.

import Foundation

// Violation of ISP

protocol Worker {
    func work()
    func takeBreak()
    func writeCode()
}

class Manager: Worker {
    func work() { print("Managing team") }
    func takeBreak() { print("Taking a break") }
    func writeCode() { fatalError("Managers don't write code!") }
}
//Manager is forced to implement writeCode(), which is irrelevant.

//----------------------------------------------------

//Following the ISP (Spliting interfaces)

protocol Workable {
    func work()
}

protocol Breakable {
    func takeBreak()
}

protocol Coder {
    func writeCode()
}


class Developer: Workable, Breakable, Coder {
    func work() { print("Writing code") }
    func takeBreak() { print("Taking a break") }
    func writeCode() { print("Coding...") }
}

class Manager2: Workable, Breakable {
    func work() { print("Managing team") }
    func takeBreak() { print("Taking a break") }
}

//Now, Manager2 does not have to implement writeCode() method.
//Developer class has to implement all methods, but they are split into separate protocols.
