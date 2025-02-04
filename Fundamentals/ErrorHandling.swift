import Foundation

enum AccountError: Error {
    case insufficientFunds
    case accountNotFound
}

func withdraw(amount: Double, from accountBalance: Double) throws -> Double {
    if accountBalance <= 0 {
        throw AccountError.accountNotFound
    }
    if accountBalance < amount {
        throw AccountError.insufficientFunds
    }
    return accountBalance - amount
}