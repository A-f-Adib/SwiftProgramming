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


do {
    let Balance = try withdraw(amount: 500, from: 5000)
    print("New balance is: \(Balance)")
} catch AccountError.insufficientFunds {
    print("Error: You don't have enough funds!")
} catch AccountError.accountNotFound {
    print("Error: Account not found!")
} catch {
    print("Unexpected error: \(error)")
}

do {
    let newBalance = try withdraw(amount: 100, from: 50)
    print("New balance is: \(newBalance)")
} catch AccountError.insufficientFunds {
    print("Error: You don't have enough funds!")
} catch AccountError.accountNotFound {
    print("Error: Account not found!")
} catch {
    print("Unexpected error: \(error)")
}