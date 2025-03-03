
// Dependency Inversion Principle (DIP) - Dependency Injection

//"High-level modules should not depend on low-level modules. Both should depend on abstractions."
//"Abstractions should not depend on details. Details should depend on abstractions."

//violating DIP

import Foundation

class MySQLDatabase {
    func fetchData() {
        print("Fetching data from MySQL")
    }
}

class UserRepository {
    let database = MySQLDatabase() // ❌ Direct dependency

    func getUsers() {
        database.fetchData()
    }
}