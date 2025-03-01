
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
