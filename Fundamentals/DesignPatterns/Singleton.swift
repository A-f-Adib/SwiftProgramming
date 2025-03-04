
//Thread-Safe Singleton 

import Foundation

class Logger {
    static let shared = Logger()
    private init() {} // Prevents direct instantiation

    func log(message: String) {
        print("[LOG]: \(message)")
    }
}

// Usage:
DispatchQueue.global().async {
    Logger.shared.log(message: "Background thread log")
}
