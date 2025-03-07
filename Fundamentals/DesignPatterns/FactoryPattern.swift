
import Foundation

protocol Button {
    func render()
}

//Concrete Classes
class iOSButton: Button {
    func render() {
        print("iOS Button Rendered")
    }
}

class AndroidButton: Button {
    func render() {
        print("Android Button Rendered")
    }
}


//Factory class
class ButtonFactory {
    static func createButton(for platform: String) -> Button {
        switch platform {
        case "iOS":
            return iOSButton()
        case "Android":
            return AndroidButton()
        default:
            fatalError("Unsupported platform")
        }
    }
}

let button = ButtonFactory.createButton(for: "iOS")
button.render() // Output: iOS Button Rendered

//------------------------------------------------------------

//Factory Protocol
protocol ButtonFactoryProtocol {
    func createButton() -> Button
}


//Concrete Factories
class iOSButtonFactory: ButtonFactoryProtocol {
    func createButton() -> Button {
        return iOSButton()
    }
}

class AndroidButtonFactory: ButtonFactoryProtocol {
    func createButton() -> Button {
        return AndroidButton()
    }
}

//Usage
let factory: ButtonFactoryProtocol = iOSButtonFactory()
let button2 = factory.createButton()
button2.render() // Output: iOS Button Rendered

//------------------------------------------------------------

//UIAlertController Factory

#if canImport(UIKit)
import UIKit

class AlertFactory {
    static func createAlert(title: String, message: String) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        return alert
    }
}

// Usage:
let alert = AlertFactory.createAlert(title: "Warning", message: "Something went wrong!")
#endif


