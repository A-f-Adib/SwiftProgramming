
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

//Swift’s static let is already thread-safe
//This means that the shared instance is only created when it is accessed for the first time,
// and it is guaranteed to be thread-safe.

//----------------------------------------------------------------------------------------

//Singleton with Dependency Injection

class APIManager {
    static let shared = APIManager() // Singleton instance
    
    private init() {} // Private initializer
    
    func fetchData() {
        print("Fetching data from API...")
    }
}

class UserService {
    private let apiManager: APIManager
    
    init(apiManager: APIManager = .shared) { // Allows injection
        self.apiManager = apiManager
    }

    func getUser() {
        apiManager.fetchData()
    }
}

// Usage:
let userService = UserService()
userService.getUser()

//----------------------------------------------------------------------------------------

//UserDefaults Singleton 

UserDefaults.standard.set("John", forKey: "username")
let username = UserDefaults.standard.string(forKey: "username")
print(username ?? "No username") // "John"

