
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

func makePayment(paymentMethod: Payment, amount: Double) {
    paymentMethod.processPayment(amount: amount)
}

let creditCard = CreditCardPayment()
let paypal = PayPalPayment()

makePayment(paymentMethod: creditCard, amount: 200)  // Processing credit card payment of $200
makePayment(paymentMethod: paypal, amount: 150)      // Processing PayPal payment of $150


//-----------------------------------------------------------

/*
Abstraction is about exposing only the relevant parts of an object while hiding 
unnecessary implementation details. Swift achieves this using protocols and access control modifiers.

Here, 
-> The Payment protocol abstracts payment processing behavior.
-> Concrete classes (CreditCardPayment and PayPalPayment) implement the protocol without 
   exposing their internal details.
-> The makePayment function operates on the Payment protocol, achieving abstraction.
*/