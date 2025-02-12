
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


//-----------------------------------------------------

//Recursive Enum
indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)

    func evaluate() -> Int {
        switch self {
        case .number(let value):
            return value
        case .addition(let left, let right):
            return left.evaluate() + right.evaluate()
        case .multiplication(let left, let right):
            return left.evaluate() * right.evaluate()
        }
    }
}

// Example Usage
let expression = ArithmeticExpression.addition(.number(2), .multiplication(.number(3), .number(4)))
print(expression.evaluate()) // ✅ 2 + (3 * 4) = 14


//-----------------------------------------------------

//Optional Enum
enum FileState {
    case notFound
    case found(size: Int?)
}

let file1 = FileState.found(size: 1024)
let file2 = FileState.found(size: nil)
let file3 = FileState.notFound

func checkFile(_ file: FileState) {
    switch file {
    case .notFound:
        print("File not found")
    case .found(let size):
        print("File found. Size: \(size ?? 0) KB") // ✅ If size is nil, show 0 KB
    }
}

checkFile(file1) // ✅ File found. Size: 1024 KB
checkFile(file2) // ✅ File found. Size: 0 KB
checkFile(file3) // ✅ File not found

//-----------------------------------------------------

//Enum with optional computed property
enum OrderStatus {
    case pending
    case shipped(trackingNumber: String?)
    case delivered

    var trackingInfo: String? {
        switch self {
        case .shipped(let trackingNumber):
            return trackingNumber // Might be nil
        default:
            return nil // No tracking info for other cases
        }
    }
}

let order1 = OrderStatus.shipped(trackingNumber: "12345")
let order2 = OrderStatus.shipped(trackingNumber: nil)

print(order1.trackingInfo ?? "No tracking available") // ✅ 12345
print(order2.trackingInfo ?? "No tracking available") // ✅ No tracking available

