
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
