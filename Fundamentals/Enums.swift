
import Foundation

//Enum with associated values
enum PaymentMethod {
    case creditCard(number: String, expiryDate: String)
    case paypal(email: String)
    case cash
}

func processPayment(_ method: PaymentMethod) {
    switch method {
    case .creditCard(let number, let expiry):
        print("Processing Credit Card payment with number: \(number), expiry: \(expiry)")
    case .paypal(let email):
        print("Processing PayPal payment for: \(email)")
    case .cash:
        print("Processing Cash payment")
    }
}

// Example Usage
let payment1 = PaymentMethod.creditCard(number: "1234-5678-9012-3456", expiryDate: "12/26")
let payment2 = PaymentMethod.paypal(email: "user@example.com")

processPayment(payment1)
processPayment(payment2)
