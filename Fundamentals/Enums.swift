
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

//-----------------------------------------------------

//enum with computed properties
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
    
    var isHabitable: Bool {
        return self == .earth
    }
    
    func distanceFromSun() -> Double {
        switch self {
        case .mercury: return 57.9
        case .venus: return 108.2
        case .earth: return 149.6
        case .mars: return 227.9
        case .jupiter: return 778.3
        case .saturn: return 1427
        case .uranus: return 2871
        case .neptune: return 4495
        }
    }
}

// Example Usage
let myPlanet = Planet.earth
print("Is habitable? \(myPlanet.isHabitable)") // ✅ Is habitable? true
print("Distance from sun: \(myPlanet.distanceFromSun()) million km") // ✅ 149.6 million km


//-----------------------------------------------------

//Enum with raw values
enum StatusCode: Int {
    case success = 200
    case unauthorized = 401
    case notFound = 404
}

let code = StatusCode.success
print("Status code: \(code.rawValue)") // ✅ Status code: 200
