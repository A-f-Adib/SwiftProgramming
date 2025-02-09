/*
Keychain uses key-value pairs, where you store a String (password, token, etc.) 
under an account identifier (e.g., "user_email").

iOS provides the Security framework, which includes:

SecItemAdd → Save data
SecItemCopyMatching → Retrieve data
SecItemUpdate → Update existing data
SecItemDelete → Remove data
*/

import Security
import Foundation


//Save Data to Keychain:
func saveToKeychain(account: String, password: String) {
    
    let passwordData = password.data(using: .utf8)!
    
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,  // Store as a generic password
        kSecAttrAccount as String: account,  // Identifier (e.g., "user_email")
        kSecValueData as String: passwordData // The actual password data
    ]
    
    // Delete existing item (if it already exists)
    SecItemDelete(query as CFDictionary)

    // Add new item
    let status = SecItemAdd(query as CFDictionary, nil)

    if status == errSecSuccess {
        print("✅ Password saved successfully!")
    } else {
        print("❌ Failed to save password, status: \(status)")
    }
}
