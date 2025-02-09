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


//Retrieve Data from Keychain:
func getFromKeychain(account: String) -> String? {
    let query: [String: Any] = [
        kSecClass as String: kSecClassGenericPassword,
        kSecAttrAccount as String: account,
        kSecReturnData as String: true,
        kSecMatchLimit as String: kSecMatchLimitOne // Get only one match
    ]
    
    var result: AnyObject?
    let status = SecItemCopyMatching(query as CFDictionary, &result)
    
    if status == errSecSuccess, let data = result as? Data {
        return String(data: data, encoding: .utf8)
    }
    
    print("❌ No password found for account: \(account)")
    return nil
}

