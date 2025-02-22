
import Foundation

class BankAccount {
    private var balance: Double  // Internal state is hidden
    
    init(initialBalance: Double) {
        self.balance = initialBalance
    }
    
}

let account = BankAccount(initialBalance: 1000)
