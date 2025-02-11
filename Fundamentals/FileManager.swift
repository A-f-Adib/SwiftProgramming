
import Foundation

func getDocumentsDirectory() -> URL {
    FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
}

func saveToFile(text: String) {
    let filename = getDocumentsDirectory().appendingPathComponent("myfile.txt")
    try? text.write(to: filename, atomically: true, encoding: .utf8)
}

func readFromFile() -> String? {
    let filename = getDocumentsDirectory().appendingPathComponent("myfile.txt")
    return try? String(contentsOf: filename)
}

// Usage
saveToFile(text: "Hello, iOS!")
print(readFromFile() ?? "No data") // Output: "Hello, iOS!"


//-----------------------------------------------------------------------------------------------

// New User Model
struct User: Codable {
    var name: String
    var age: Int
}

// FileManager Helper
class FileManagerHelper {
    static let fileName = "users.json"
    static let filePath = FileManager.default.homeDirectoryForCurrentUser.appendingPathComponent(fileName)
    
    // Save users to file
    static func saveUsers(_ users: [User]) {
        let encoder = JSONEncoder()
        do {
            let data = try encoder.encode(users)
            try data.write(to: filePath, options: .atomic)
            print("Users saved to file.")
        } catch {
            print("Error saving users: \(error)")
        }
    }
    
    // Load users from file
    static func loadUsers() -> [User] {
        let decoder = JSONDecoder()
        do {
            let data = try Data(contentsOf: filePath)
            let users = try decoder.decode([User].self, from: data)
            return users
        } catch {
            print("Error loading users: \(error)")
            return []
        }
    }
}

// Example Usage
var users = FileManagerHelper.loadUsers()

// Add a new user
users.append(User(name: "Alice", age: 25))

// Save updated users
FileManagerHelper.saveUsers(users)

// Display all users
print("All Users:")
users = FileManagerHelper.loadUsers()
for user in users {
    print("Name: \(user.name), Age: \(user.age)")
}

