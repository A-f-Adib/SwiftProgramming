
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
    
    func withdraw(amount: Double) {
        guard amount > 0 else {
            print("Withdrawal amount must be positive.")
            return
        }
        guard amount <= balance else {
            print("Insufficient funds!")
            return
        }
        balance -= amount
        print("Withdrew \(amount). New balance: \(balance)")
    }
}

let account = BankAccount(initialBalance: 1000)
account.deposit(amount: 500)   // Deposited 500. New balance: 1500
account.withdraw(amount: 2000) // Insufficient funds!


//-----------------------------------------------------------
/*
Encapsulation is the concept of grouping related properties and methods into a single unit 
while restricting access to its internal data. In Swift, access control modifiers 
(private, fileprivate, internal, public, and open) enforce encapsulation.

Here, the balance property is private, preventing direct access from outside the class.
The class provides controlled methods (deposit and withdraw) to modify the balance safely.
*/