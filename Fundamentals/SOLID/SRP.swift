
//Single Responsibility Principle (SRP)

/* A class should have only one reason to change, meaning that a class should have
only one job or responsibility. This principle helps in keeping the code clean,
maintainable, and easy to understand.
*/

import Foundation

// Violation of SRP

class UserManager {

    func saveUserData() {
        print("Saving user data to database")
    }
    
    func sendEmailVerification() {
        print("Sending verification email")
    }
}
//UserManager is responsible for both saving user data and sending email verification.
//This violates SRP because changing the database logic would affect email sending.



//following the SRP

class UserRepository {
    func saveUserData() {
        print("Saving user data to database")
    }
}

class EmailService {
    func sendEmailVerification() {
        print("Sending verification email")
    }
}

//Now, UserRepository and EmailService have separate responsibilities.

