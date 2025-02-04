
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

class Waiter: ChefDelegate {
    func foodIsReady(dish: String) {
        print("Waiter: Serving \(dish) to the customer! 🍽️")
    }
}

let chef = Chef()
let waiter = Waiter()

chef.delegate = waiter  // Assign the waiter as the chef’s delegate
chef.cook()
