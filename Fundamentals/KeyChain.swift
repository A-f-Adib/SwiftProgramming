import Security
import Foundation

// Save to Keychain
func saveToKeychain(account: String, password: String) {
    let data = password.data(using: .utf8)!
    
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: account,
        kSecValueData as String: data
    ]
    
    SecItemDelete(query as CFDictionary) // Delete existing item before adding
    SecItemAdd(query as CFDictionary, nil)
}

// Retrieve from Keychain
func getFromKeychain(account: String) -> String? {
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: account,
        kSecReturnData as String: true,
        kSecMatchLimit as String: kSecMatchLimitOne
    ]
    
    var result: AnyObject?
    let status = SecItemCopyMatching(query as CFDictionary, &result)
    
    if status == errSecSuccess, let data = result as? Data {
        return String(data: data, encoding: .utf8)
    }
    return nil
}

// Usage
saveToKeychain(account: "user_email", password: "secure123")
print(getFromKeychain(account: "user_email") ?? "No password found") // Output: "secure123"
