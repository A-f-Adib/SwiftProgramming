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
