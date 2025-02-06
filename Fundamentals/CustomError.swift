
import Foundation 

enum PaymentError: Error, LocalizedError {
    case insufficientFunds
    case networkError

    var errorDescription: String? {
        switch self {
        case .insufficientFunds:
            return "You don't have enough funds to complete this transaction."
        case .networkError:
            return "There was a problem connecting to the network. Please try again."
        }
    }
}

func handlePayment() throws {
    throw PaymentError.networkError
}

do {
    try handlePayment()
} catch {
    print(error.localizedDescription)  // Output: There was a problem connecting to the network. Please try again.
}
