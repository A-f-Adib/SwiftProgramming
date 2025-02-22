
import Foundation

protocol Payment {
    func processPayment(amount: Double)
}

class CreditCardPayment: Payment {
    func processPayment(amount: Double) {
        print("Processing credit card payment of $\(amount)")
    }
}

class PayPalPayment: Payment {
    func processPayment(amount: Double) {
        print("Processing PayPal payment of $\(amount)")
    }
}
