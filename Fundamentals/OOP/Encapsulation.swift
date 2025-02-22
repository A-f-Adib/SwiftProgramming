
import Foundation

class BankAccount {
    private var balance: Double  // Internal state is hidden
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
    func deposit(amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be positive.")
            return
        }
        balance += amount
        print("Deposited \(amount). New balance: \(balance)")
    }
}

let account = BankAccount(initialBalance: 1000)
account.deposit(amount: 500)   // Deposited 500. New balance: 1500
