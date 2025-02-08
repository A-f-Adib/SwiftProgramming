import Foundation

actor Counter {
    private var value = 0
    
    // Increment the counter safely
    func increment() {
        value += 1
    }
    
    // Get the current value safely
    func getValue() -> Int {
        return value
    }
}

