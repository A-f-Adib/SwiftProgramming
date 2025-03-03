
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
//UserRepository depends on a concrete class, making it hard to switch databases.

//----------------------------------------------------

//Following DIP

protocol Database {
    func fetchData()
}

class MySQLDatabase2 : Database {
    func fetchData() {
        print("Fetching data from MySQL")
    }
}

class UserRepository2 {
    let database: Database

    init(database: Database) {
        self.database = database
    }

    func getUsers() {
        database.fetchData()
    }
}

let repository = UserRepository2(database: MySQLDatabase2())
repository.getUsers() // ✅ Works with any database!

//Now, UserRepository2 depends on an abstraction (Database protocol) instead of a concrete class.
//This makes it easier to switch databases in the future.
