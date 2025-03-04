
import Foundation

protocol Button {
    func render()
}

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
