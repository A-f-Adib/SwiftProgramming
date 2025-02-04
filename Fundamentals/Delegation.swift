
import Foundation

protocol ChefDelegate {
    func foodIsReady(dish: String)
}

class Chef {
    var delegate: ChefDelegate?  // A reference to the delegate

    func cook() {
        print("Chef: Cooking the food... 🍳")
        sleep(2)  // Simulate cooking time
        delegate?.foodIsReady(dish: "Pasta 🍝")  // Notify the delegate
    }
}

